<?php

App::uses('AppController', 'Controller');

/**
 * Plants Controller
 *
 * PHP version 5
 *
 * @category Controller
 * @package  Croogo
 * @version  1.0
 * @author   Fahad Ibnay Heylaal <Plant@fahad19.com>
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.croogo.org
 */
class PlantsController extends AppController {

/**
 * Controller name
 *
 * @var string
 * @access public
 */
	public $name = 'Plants';
	public $presetVars = true;
	
/**
 * Models used by the Controller
 *
 * @var array
 * @access public
 */
	public $uses = array('Ecospots.Plant');
	
	public $isSortable = true;

	public $components = array(
		'Paginator',
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
		$this->set('title_for_layout', __('List of Plants'));
		$this->Plant->recursive = 1;

		$plants = $this->paginate();


		$this->set(compact('plants'));

		$this->set('displayFields', $this->Plant->displayFields());
		$this->set('isSortable', $this->isSortable);

		//debug($PlantTypes);
	}

/**
 * Admin add
 *
 * @return void
 * @access public
 */
	public function admin_add() {
		$this->set('title_for_layout', __('Add a Plant'));
		// debug($this->request->data);
		if (!empty($this->request->data)) {
			$this->Plant->create();
			$this->request->data['Plant']['slug'] = Inflector::slug(strtolower($this->request->data['Plant']['name']),"-");
			if ($this->Plant->save($this->request->data)) {
				$this->Session->setFlash(__('The Team Plant has been saved'), 'default', array('class' => 'success'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The Plant could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		$editFieldsNew = $this->Plant->editFields();

		$this->set('editFields', $editFieldsNew);
	}

/**
 * Admin edit
 *
 * @param integer $id
 * @return void
 * @access public
 */
	public function admin_edit($id = null) {
		$this->set('title_for_layout', __('Edit Plant'));

		if (!$id && empty($this->request->data)) {
			$this->Session->setFlash(__('Invalid Plant'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->request->data)) {
			
			if ($this->Plant->save($this->request->data)) {
				//$Plant_type = $this->request->data['Plant']['type'];
				$this->Session->setFlash(__('The Plant has been saved'), 'default', array('class' => 'success'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The Plant could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		if (empty($this->request->data)) {
			$this->request->data = $this->Plant->read(null, $id);
		}
		$editFieldsNew = $this->Plant->editFields();
		
		$this->set('editFields', $editFieldsNew);
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
			$this->Session->setFlash(__('Invalid id for Plant'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if ($this->Plant->delete($id)) {
			$this->Session->setFlash(__('Plant deleted'), 'default', array('class' => 'success'));
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
		if ($this->Plant->moveUp($id, $step)) {
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
		if ($this->Plant->moveDown($id, $step)) {
			$this->Session->setFlash(__d('croogo', 'Moved down successfully'), 'default', array('class' => 'success'));
		} else {
			$this->Session->setFlash(__d('croogo', 'Could not move down'), 'default', array('class' => 'error'));
		}
	
		$this->redirect(array('action' => 'index'));
		
	}

/**
 * index
 *
 * @param integer $id
 * @return void
 * @access public
 */
	public function index() {
		$Plants = $this->Plant->find("all", 
										array(
											'order' => "Plant.weight ASC",
											'limit' => 40
										));

		$this->set("Plants", $Plants);
	}
	
	public function view($id){
		if(empty($id)){
				$this->Session->setFlash(__('No Plant was specified.'), 'default', array('class' => 'error'));
				$this->redirect(array('action' => 'index'));
		}
		
		$this->Plant->recursive = 1;
		$this->Plant->id = $id;
		$this->set('Plant', $this->paginate());
		
		
	}

	public function Plants_json()
	{
		$this->layout = "blank";
		$Plants = $this->Plant->find('all');
		$this->set('Plants',json_encode($Plants));
	}

	public function Plant_json($id)
	{
		if(!$id) return "";

		$this->layout = "blank";
		$Plant = $this->Plant->findById($id);
		$this->set('Plant',json_encode($Plant));
	}

}
