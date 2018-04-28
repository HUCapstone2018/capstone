<?php

App::uses('AppController', 'Controller');

/**
 * Events Controller
 *
 * PHP version 5
 *
 * @category Controller
 * @package  Croogo
 * @version  1.0
 * @author   Ayman Hamdoun <aymanhamdoun@outlook.com>
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.croogo.org
 */
class EventsController extends AppController {

/**
 * Controller name
 *
 * @var string
 * @access public
 */
	public $name = 'Events';
	
/**
 * Models used by the Controller
 *
 * @var array
 * @access public
 */
	public $uses = array('Ecospots.Event','Ecospots.Spot');
	
	public $helpers = array('Eco','Paginator'=>['className'=>'CroogoPaginator']);


/**
 * Admin index
 *
 * @return void
 * @access public
 */
	public function admin_index() {
		$this->set('title_for_layout', __('List of Events'));

		$this->Event->recursive = 0;
		$this->paginate = array('limit' => 30);

        $events = $this->paginate();
				
		$this->set('events',$events);
		$displayFieldsNew = $this->Event->displayFields();
		$this->set('displayFields', $displayFieldsNew);
		$this->set('isSortable', $this->issortable);
	}

/**
 * Admin add
 *
 * @return void
 * @access public
 */
	public function admin_add() {
		$this->set('title_for_layout', __('Add a Event'));

		if (!empty($this->request->data)) {
			$this->Event->create();
			$this->request->data['Event']['slug'] = Inflector::slug(strtolower($this->request->data['Event']['name']),"-");
			$this->request->data['Event']['user_id'] = $this->Session->read('Auth.User.id');
			
			if ($this->Event->save($this->request->data)) {
                $this->Session->setFlash(__('The Event has been saved'), 'default', array('class' => 'success'));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The Event could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		$editFieldsNew = $this->Event->editFields();
		$editFieldsNew['spot_id']['options'] = $this->Spot->find('list',[
			'fields' => ['id','name']
		]);
		
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
		$this->set('title_for_layout', __('Edit Event'));

		if (!$id && empty($this->request->data)) {
			$this->Session->setFlash(__('Invalid Event'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->request->data)) {
			$this->request->data['Event']['slug'] = Inflector::slug(strtolower($this->request->data['Event']['name']),"-");
			if ($this->Event->save($this->request->data)) {
				$this->Session->setFlash(__('The Team Event has been saved'), 'default', array('class' => 'success'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The Event could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		if (empty($this->request->data)) {
			$this->request->data = $this->Event->read(null, $id);
		}
		$editFieldsNew = $this->Event->editFields();
		$editFieldsNew['spot_id']['options'] = $this->Spot->find('list',[
			'fields' => ['id','name']
		]);
		$editFieldsNew['spot_id']['value'] = $this->request->data['Event']['spot_id'];
		$editFieldsNew['date']['class'] = 'inline';
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
			$this->Session->setFlash(__('Invalid id for Event'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if ($this->Event->delete($id)) {
			$this->Session->setFlash(__('Event deleted'), 'default', array('class' => 'success'));
			$this->redirect(array('action' => 'index'));
		}
	}


	public function index($lang = 'en')
	{
		$this->set('title_for_layout', __('View Event'));

		$this->paginate['Event']['limit'] = 1;
		$this->paginate['page'] = isset($this->request->params['named']['page']) ? $this->request->params['named']['page'] : 1;
		$events = $this->paginate('Event');
		
		$this->set(compact('events','lang'));
	}

	public function view($lang = 'en')
	{
		$this->set('title_for_layout', __('View Event'));
		if(!$this->request->params['slug'])
		{
			$this->Session->setFlash(__('Invalid Event'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Event->recursive = 2;
		$event = $this->Event->findBySlug($this->request->params['slug']);
		
		$this->set(compact('event','lang'));
	}

	public function footerEvents($lang = 'en')
	{
		$events = $this->Event->find('all',[
			'limit' => 2,
			'order' => ['Event.date DESC']
		]);

		return $events;
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
		if ($this->Event->moveUp($id, $step)) {
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
		if ($this->Event->moveDown($id, $step)) {
			$this->Session->setFlash(__d('croogo', 'Moved down successfully'), 'default', array('class' => 'success'));
		} else {
			$this->Session->setFlash(__d('croogo', 'Could not move down'), 'default', array('class' => 'error'));
		}
	
		$this->redirect(array('action' => 'index'));
		
	}
}
