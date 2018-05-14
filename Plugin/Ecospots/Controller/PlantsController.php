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
 * @author   Ayman Hamdoun and Yasmine Hamdar
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
	
	public $helpers = array('Eco','Paginator'=>['className'=>'CroogoPaginator']);
	
	public $isSortable = true;



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
			
			$this->request->data['Plant']['slug'] = Inflector::slug(strtolower($this->request->data['Plant']['name']),"-");
			if ($this->Plant->save($this->request->data)) {
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
	public function index()
	{
		$this->set('title_for_layout', __('Plants Index'));

		if(isset($this->request->params['named']['in-danger']))
		{
			$danger = $this->request->params['named']['in-danger'];

			$this->paginate['conditions']['Plant.danger'] = $danger;
		}

		if(isset($this->request->params['named']['name']))
		{
			$name = $this->request->params['named']['name'];

			$this->paginate['conditions']['Plant.name LIKE'] = '%'.$name.'%';
		}

		$this->paginate['limit'] = Configure::read("Reading.Plants");
		$this->paginate['page'] = isset($this->request->params['named']['page']) ? $this->request->params['named']['page'] : 1;

		$plants = $this->paginate('Plant');

		$this->set(compact('plants'));
	}
	
}
