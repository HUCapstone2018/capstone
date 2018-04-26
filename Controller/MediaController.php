<?php

App::uses('AppController', 'Controller');

/**
 * Media Controller
 *
 * PHP version 5
 *
 * @category Controller
 * @package  Croogo
 * @version  1.0
 * @author   Avo Sarafian <me@avosarafian.com>
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.croogo.org
 */
class MediaController extends AppController {

/**
 * Controller name
 *
 * @var string
 * @access public
 */
	public $name = 'Media';
	
/**
 * Models used by the Controller
 *
 * @var array
 * @access public
 */
	public $uses = array('Media', 'Nodes.Node');
	
	public $issortable = true;

/**
 * Admin index
 *
 * @return void
 * @access public
 */
	public function admin_index() {
		$this->set('title_for_layout', __('List of Media'));

		$this->Media->recursive = 0;
		$this->paginate = array('limit' => 30);
		$media = array();
		$media = $this->paginate();
				
		$this->set(compact('media'));
		$displayFieldsNew = $this->Media->displayFields();
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
		$this->set('title_for_layout', __('Add a Media'));

		if (!empty($this->request->data)) {
			$this->Media->create();

			if ($this->Media->save($this->request->data)) {
				//$media_type = $this->request->data['Media']['type'];
				$this->Session->setFlash(__('The Media has been saved'), 'default', array('class' => 'success'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The Media could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		$editFieldsNew = $this->Media->editFields();
		
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
		$this->set('title_for_layout', __('Edit Media'));

		if (!$id && empty($this->request->data)) {
			$this->Session->setFlash(__('Invalid Media'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->request->data)) {
			
			if ($this->Media->save($this->request->data)) {
				//$media_type = $this->request->data['Media']['type'];
				$this->Session->setFlash(__('The Media has been saved'), 'default', array('class' => 'success'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The Media could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		if (empty($this->request->data)) {
			$this->request->data = $this->Media->read(null, $id);
		}
		$editFieldsNew = $this->Media->editFields();
		
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
			$this->Session->setFlash(__('Invalid id for Media'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if ($this->Media->delete($id)) {
			$this->Session->setFlash(__('Media deleted'), 'default', array('class' => 'success'));
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
		if ($this->Media->moveUp($id, $step)) {
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
		if ($this->Media->moveDown($id, $step)) {
			$this->Session->setFlash(__d('croogo', 'Moved down successfully'), 'default', array('class' => 'success'));
		} else {
			$this->Session->setFlash(__d('croogo', 'Could not move down'), 'default', array('class' => 'error'));
		}
	
		$this->redirect(array('action' => 'index'));
		
	}

	public function get_all(){
		return $this->Media->find("all",array("order"=>"Media.weight DESC"));
	}

	public function photos(){
		return $this->Media->find("all",array("order"=>"Media.weight DESC"));
	}

	public function videos(){
		$this->set("title_for_layout", "Videos Gallery");
		$videos =  $this->Media->find("all",array("order"=>"Media.weight DESC"));
		
		$this->set(compact("videos"));
	}

}
