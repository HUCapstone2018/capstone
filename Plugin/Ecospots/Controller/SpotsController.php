<?php

App::uses('AppController', 'Controller');

/**
 * Spots Controller
 *
 * PHP version 5
 *
 * @category Controller
 * @package  Croogo
 * @version  1.0
 * @author   Ayman Hamdoun and Yasmine Hamdar
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.croogo.org
 */
class SpotsController extends AppController {

/**
 * Controller name
 *
 * @var string
 * @access public
 */
	public $name = 'Spots';

	public $uses = array('Ecospots.Spot','Ecospots.Plant','Ecospots.Animal','Ecospots.Activity','Maps.Map');

	public $helpers = array('Eco','Paginator'=>['className'=>'CroogoPaginator']);
	
	public $issortable = true;

	public $components = array(
		'Search.Prg' => array(
			'presetForm' => array(
				'paramType' => 'querystring',
			),
			'commonProcess' => array(
				'paramType' => 'querystring',
				'filterEmpty' => true,
			),
		),
	);


/**
 * Admin index
 *
 * @return void
 * @access public
 */
	public function admin_index() {
		$this->set('title_for_layout', __('List of Spots'));

		$this->Prg->commonProcess();
		
		$searchFields = array('reserve' => ['label' => 'is natural reserve'],'name');

		$criteria = $this->Spot->parseCriteria($this->Prg->parsedParams());

		$this->Spot->recursive = 0;
		$this->paginate['limit'] = 15;
		$this->paginate['conditions'] = $criteria;

				
		$this->set('spots',$this->paginate());
		$this->set('searchFields', $searchFields);
		
		$this->set('displayFields', $this->Spot->displayFields());
		$this->set('isSortable', $this->issortable);
	}

/**
 * Admin add
 *
 * @return void
 * @access public
 */
	public function admin_add() {
		$this->set('title_for_layout', __('Add a Member Type'));

		if (!empty($this->request->data)) {
			$this->Spot->create();
			$this->request->data['Spot']['slug'] = Inflector::slug(strtolower($this->request->data['Spot']['name']),"-");
			if ($this->Spot->save($this->request->data)) {
                $this->Session->setFlash(__('The Spot has been saved'), 'default', array('class' => 'success'));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The Member could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		$editFields = $this->Spot->editFields();
		// $editFields['spot_id']['options'] = $this->Spot->find('list',[
		// 	'fields' => ['id','name']
		// ]);
		// $editFields['spot_id']['empty'] = true;
		$this->set('editFields', $editFields);
	}

/**
 * Admin edit
 *
 * @param integer $id
 * @return void
 * @access public
 */
	public function admin_edit($id = null) {
		$this->set('title_for_layout', __('Edit Spot'));
		$this->Spot->recursive = 2;

		$editFields = $this->Spot->editFields();
	
		if (!$id && empty($this->request->data)) {
			$this->Session->setFlash(__('Invalid Spot'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->request->data)) 
		{
			$this->request->data['Spot']['slug'] = Inflector::slug(strtolower($this->request->data['Spot']['name']),"-");
			//debug($this->request->data);exit;
			$this->request->data['Map']['title'] = $this->request->data['Spot']['name'];
			$this->request->data['Map']['slug'] = Inflector::slug(strtolower($this->request->data['Map']['title']),"-");
			$this->request->data['Map']['google_api_key'] = Configure::read("Site.Google_Map_API_Key");
			
			//$editFields['spot_id']['value'] = $this->request->data['Spot']['spot_id'];

			if(!(empty($this->request->data['Map']['longitude']) || empty($this->request->data['Map']['latitude'])) && $this->Map->save($this->request->data['Map']))
			{
				$mapID = !empty($this->request->data['Map']['id']) ? $this->request->data['Map']['id'] : $this->Map->getLastInsertID();
				$this->request->data['Spot']['map_id'] = $mapID;
			}
			if ($this->Spot->save($this->request->data)) 
			{
				$this->Session->setFlash(__('The Spot has been saved'), 'default', array('class' => 'success'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The Spot could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		if (empty($this->request->data)) {
			$this->request->data = $this->Spot->read(null, $id);
			$map = $this->Map->findById($this->request->data['Spot']['map_id']);
			$map = empty($map) ? $map : $map['Map'];
		}
		
		
		$animals = $this->Animal->find('list',[
			'fields' => ['id','name']
		]);
		
		$plants = $this->Plant->find('list',[
			'fields' => ['id','name']
		]);
		
		$activities = $this->Activity->find('list',[
			'fields' => ['id','name']
		]);

		$this->set(compact('editFields','plants','animals','activities','map'));
	}

	public function index()
	{
		$this->set('title_for_layout', __('Spots Index'));

		if(isset($this->request->params['named']['activity']))
		{
			$slug = $this->request->params['named']['activity'];
			
			$this->paginate['conditions'] = [
				'Activity.slug' => $slug
			];

			$this->paginate['joins'] = array(
			    array(
			    	'table' => 'activities_spots',
			        'alias' => 'ActivitiesSpot',
			        'type' => 'inner',
			        'conditions' => '`Spot`.`id` = `ActivitiesSpot`.`spot_id`'
			    ),
			    array(
			    	'table' => 'activities',
			        'alias' => 'Activity',
			        'type' => 'inner',
			        'conditions' => '`ActivitiesSpot`.`activity_id` = `Activity`.`id`'
			    )
			);
		}

		if(isset($this->request->params['named']['animal']))
		{
			$slug = $this->request->params['named']['animal'];
			
			$this->paginate['conditions'] = [
				'Animal.slug' => $slug
			];

			$this->paginate['joins'] = array(
			    array(
			    	'table' => 'animals_spots',
			        'alias' => 'AnimalsSpot',
			        'type' => 'inner',
			        'conditions' => '`Spot`.`id` = `AnimalsSpot`.`spot_id`'
			    ),
			    array(
			    	'table' => 'animals',
			        'alias' => 'Animal',
			        'type' => 'inner',
			        'conditions' => '`AnimalsSpot`.`animal_id` = `Animal`.`id`'
			    )
			);
		}

		if(isset($this->request->params['named']['plant']))
		{
			$slug = $this->request->params['named']['plant'];
			
			$this->paginate['conditions'] = [
				'Plant.slug' => $slug
			];

			$this->paginate['joins'] = array(
			    array(
			    	'table' => 'plants_spots',
			        'alias' => 'PlantsSpot',
			        'type' => 'inner',
			        'conditions' => '`Spot`.`id` = `PlantsSpot`.`spot_id`'
			    ),
			    array(
			    	'table' => 'plants',
			        'alias' => 'Plant',
			        'type' => 'inner',
			        'conditions' => '`PlantsSpot`.`plant_id` = `Plant`.`id`'
			    )
			);
		}

		if(isset($this->request->params['named']['name']))
		{
			$name = $this->request->params['named']['name'];
			$this->paginate['conditions'] = [
				'Spot.name LIKE' => '%'.$name.'%'
			];
		}

		if(isset($this->request->params['named']['natural-reserve']) && $this->request->params['named']['natural-reserve'] == 'yes')
		{
			$this->paginate['conditions'] = [
				'Spot.reserve' => 1
			];
		}

		$this->paginate['limit'] = Configure::read("Reading.Spots");
		$this->paginate['page'] = isset($this->request->params['named']['page']) ? $this->request->params['named']['page'] : 1;

		$spots = $this->paginate('Spot');


		$this->Activity->recursive = 0;
		$modal = $this->Activity->find('all');

		$this->set(compact('spots','modal'));
	}

	public function view($lang = 'en')
	{
		$this->set('title_for_layout', __('View Spot'));
		if(!$this->request->params['slug'])
		{
				$this->Session->setFlash(__('No Spot was specified.'), 'default', array('class' => 'error'));
				$this->redirect(array('action' => 'index'));
		}

		$slug = $this->request->params['slug'];

		$this->Spot->recursive = 2;
		$spot = $this->Spot->findBySlug($slug);
		
		$this->set(compact('spot','lang'));
	}

/**
 * Admin delete
 *
 * @param integer $id
 * @return void
 * @access public
 */
	public function admin_delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for Spot'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if ($this->Spot->delete($id)) {
			$this->Session->setFlash(__('Spot deleted'), 'default', array('class' => 'success'));
			$this->redirect(array('action' => 'index'));
		}
	}

/**
 * Admin moveup
 *
 * @param integer $id
 * @param integer $step
 * @return void
 * @access public
 */
	public function admin_moveup($id, $step = 1) {
		if ($this->Spot->moveUp($id, $step)) {
			$this->Session->setFlash(__d('croogo', 'Moved up successfully'), 'default', array('class' => 'success'));
		} else {
			$this->Session->setFlash(__d('croogo', 'Could not move up'), 'default', array('class' => 'error'));
		}
	
		$this->redirect(array('action' => 'index'));
		
	}

/**
 * Admin movedown
 *
 * @param integer $id
 * @param integer $step
 * @return void
 * @access public
 */
	public function admin_movedown($id, $step = 1) {
		if ($this->Spot->moveDown($id, $step)) {
			$this->Session->setFlash(__d('croogo', 'Moved down successfully'), 'default', array('class' => 'success'));
		} else {
			$this->Session->setFlash(__d('croogo', 'Could not move down'), 'default', array('class' => 'error'));
		}
	
		$this->redirect(array('action' => 'index'));
		
	}
}
