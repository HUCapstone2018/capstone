<?php

App::uses('AppController', 'Controller');

/**
 * Topics Controller
 *
 * PHP version 5
 *
 * @category Controller
 * @package  Croogo
 * @version  1.0
 * @author   Fahad Ibnay Heylaal <Topic@fahad19.com>
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.croogo.org
 */
class TopicsController extends AppController {

/**
 * Controller name
 *
 * @var string
 * @access public
 */
	public $name = 'Topics';
	public $presetVars = true;
	
/**
 * Models used by the Controller
 *
 * @var array
 * @access public
 */
	public $uses = array('Ecospots.Topic');
	
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
		$this->set('title_for_layout', __('List of Topics'));
		$this->Topic->recursive = 1;

		$topics = $this->paginate();


		$this->set(compact('topics'));

		$this->set('displayFields', $this->Topic->displayFields());
		$this->set('isSortable', $this->isSortable);

		//debug($TopicTypes);
	}

/**
 * Admin add
 *
 * @return void
 * @access public
 */
	public function admin_add() {
		$this->set('title_for_layout', __('Add a Topic'));
		// debug($this->request->data);
		if (!empty($this->request->data)) {
			$this->Topic->create();
			$this->request->data['Topic']['slug'] = Inflector::slug(strtolower($this->request->data['Topic']['name']),"-");
			if ($this->Topic->save($this->request->data)) {
				$this->Session->setFlash(__('The Team Topic has been saved'), 'default', array('class' => 'success'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The Topic could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		$editFieldsNew = $this->Topic->editFields();

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
		$this->set('title_for_layout', __('Edit Topic'));

		if (!$id && empty($this->request->data)) {
			$this->Session->setFlash(__('Invalid Topic'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->request->data)) {
			
			if ($this->Topic->save($this->request->data)) {
				//$Topic_type = $this->request->data['Topic']['type'];
				$this->Session->setFlash(__('The Topic has been saved'), 'default', array('class' => 'success'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The Topic could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		if (empty($this->request->data)) {
			$this->request->data = $this->Topic->read(null, $id);
		}
		$editFieldsNew = $this->Topic->editFields();
		
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
			$this->Session->setFlash(__('Invalid id for Topic'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if ($this->Topic->delete($id)) {
			$this->Session->setFlash(__('Topic deleted'), 'default', array('class' => 'success'));
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
		if ($this->Topic->moveUp($id, $step)) {
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
		if ($this->Topic->moveDown($id, $step)) {
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
		$topics = $this->Topic->find("all", 
										array(
											'order' => "Topic.weight ASC",
											'limit' => 40
										));

		$this->set("topics", $topics);
	}
	
	public function view($id){
		if(empty($id)){
				$this->Session->setFlash(__('No Topic was specified.'), 'default', array('class' => 'error'));
				$this->redirect(array('action' => 'index'));
		}
		
		$this->Topic->recursive = 2;
		
		$this->set('topic', $this->paginate());		
	}
}
