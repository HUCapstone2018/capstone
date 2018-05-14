<?php

App::uses('AppController', 'Controller');

/**
 * Animals Controller
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
class AnimalsController extends AppController {

/**
 * Controller name
 *
 * @var string
 * @access public
 */
	public $name = 'Animals';
	
/**
 * Models used by the Controller
 *
 * @var array
 * @access public
 */
	public $uses = array('Ecospots.Animal');
	
	public $helpers = array('Eco','Paginator'=>['className'=>'CroogoPaginator']);

	public $issortable = true;


/**
 * Admin index
 *
 * @return void
 * @access public
 */
	public function admin_index() {
		$this->set('title_for_layout', __('List of Animals'));

		$this->Animal->recursive = 0;
		$this->paginate = array('limit' => 30);

        $animals = $this->paginate();
				
		$this->set('animals',$animals);
		$displayFieldsNew = $this->Animal->displayFields();
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
		$this->set('title_for_layout', __('Add a Member Type'));

		if (!empty($this->request->data)) {
			$this->Animal->create();
			$this->request->data['Animal']['slug'] = Inflector::slug(strtolower($this->request->data['Animal']['name']),"-");
			
			if ($this->Animal->save($this->request->data)) {
                $this->Session->setFlash(__('The Animal has been saved'), 'default', array('class' => 'success'));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The Member could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		$editFieldsNew = $this->Animal->editFields();
		
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
		$this->set('title_for_layout', __('Edit Member Type'));

		if (!$id && empty($this->request->data)) {
			$this->Session->setFlash(__('Invalid Member Type'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->request->data)) {
			$this->request->data['Animal']['slug'] = Inflector::slug(strtolower($this->request->data['Animal']['name']),"-");
			if ($this->Animal->save($this->request->data)) {
				$this->Session->setFlash(__('The Team Animal has been saved'), 'default', array('class' => 'success'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The Animal could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		if (empty($this->request->data)) {
			$this->request->data = $this->Animal->read(null, $id);
		}
		$editFieldsNew = $this->Animal->editFields();
		
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
			$this->Session->setFlash(__('Invalid id for Animal'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if ($this->Animal->delete($id)) {
			$this->Session->setFlash(__('Animal deleted'), 'default', array('class' => 'success'));
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
		if ($this->Animal->moveUp($id, $step)) {
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
		if ($this->Animal->moveDown($id, $step)) {
			$this->Session->setFlash(__d('croogo', 'Moved down successfully'), 'default', array('class' => 'success'));
		} else {
			$this->Session->setFlash(__d('croogo', 'Could not move down'), 'default', array('class' => 'error'));
		}
	
		$this->redirect(array('action' => 'index'));
		
	}

	public function index()
	{
		$this->set('title_for_layout', __('Animals Index'));
		if(isset($this->request->params['named']['marine']))
		{
			$marine = $this->request->params['named']['marine'];

			$this->paginate['conditions']['AND']['Animal.marine'] = $marine;

		}

		if(isset($this->request->params['named']['in-danger']))
		{
			$danger = $this->request->params['named']['in-danger'];

			$this->paginate['conditions']['AND']['Animal.danger'] = $danger;
		}

		if(isset($this->request->params['named']['name']))
		{
			$name = $this->request->params['named']['name'];

			$this->paginate['conditions']['AND']['Animal.name LIKE'] = '%'.$name.'%';
		}

		$this->paginate['limit'] = Configure::read("Reading.Animals");
		$this->paginate['page'] = isset($this->request->params['named']['page']) ? $this->request->params['named']['page'] : 1;

		$animals = $this->paginate('Animal');

		$this->set(compact('animals'));
	}
}
