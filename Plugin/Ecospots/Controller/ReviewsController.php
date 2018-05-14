<?php

App::uses('AppController', 'Controller');

/**
 * Reviews Controller
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
class ReviewsController extends AppController {

/**
 * Controller name
 *
 * @var string
 * @access public
 */
	public $name = 'Reviews';
	
/**
 * Models used by the Controller
 *
 * @var array
 * @access public
 */
	public $uses = array('Ecospots.Review','Ecospots.Spot');
	


/**
 * Admin index
 *
 * @return void
 * @access public
 */
	public function admin_index() {
		$this->set('title_for_layout', __('List of Reviews'));

		$this->Review->recursive = 0;
		$this->paginate = array('limit' => 30);

        $reviews = $this->paginate();
				
		$this->set('reviews',$reviews);
		$displayFieldsNew = $this->Review->displayFields();
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
		$this->set('title_for_layout', __('Add a Review'));

		if (!empty($this->request->data)) {
			$this->Review->create();
			$this->request->data['Review']['slug'] = Inflector::slug(strtolower($this->request->data['Review']['name']),"-");
			$this->request->data['Review']['user_id'] = $this->Session->read('Auth.User.id');
			
			if ($this->Review->save($this->request->data)) {
                $this->Session->setFlash(__('The Review has been saved'), 'default', array('class' => 'success'));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The Review could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		$editFieldsNew = $this->Review->editFields();
		$editFieldsNew['spot_id']['options'] = $this->Spot->find('list',[
			'fields' => ['id','name'],
		]);
		$editFieldsNew['spot_id']['multiple'] = false;
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
		$this->set('title_for_layout', __('Edit Review'));

		if (!$id && empty($this->request->data)) {
			$this->Session->setFlash(__('Invalid Review'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->request->data)) {
			$this->request->data['Review']['slug'] = Inflector::slug(strtolower($this->request->data['Review']['name']),"-");
			if ($this->Review->save($this->request->data)) {
				$this->Session->setFlash(__('The Team Review has been saved'), 'default', array('class' => 'success'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The Review could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		if (empty($this->request->data)) {
			$this->request->data = $this->Review->read(null, $id);
		}
		$editFieldsNew = $this->Review->editFields();
		$editFieldsNew['spot_id']['options'] = $this->Spot->find('list',[
			'fields' => ['id','name']
		]);
		$editFieldsNew['spot_id']['multiple'] = false;
		$editFieldsNew['spot_id']['value'] = $this->request->data['Review']['spot_id'];

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
			$this->Session->setFlash(__('Invalid id for Review'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if ($this->Review->delete($id)) {
			$this->Session->setFlash(__('Review deleted'), 'default', array('class' => 'success'));
			$this->redirect(array('action' => 'index'));
		}
	}


	public function view($slug, $lang = 'en')
	{
		$this->set('title_for_layout', __('View Review'));
		if(empty($slug))
		{
			$this->Session->setFlash(__('Invalid Review'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		$this->Review->recursive = 2;
		$review = $this->Review->findBySlug($slug);
		
		$this->set(compact('review','lang'));
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
		if ($this->Review->moveUp($id, $step)) {
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
		if ($this->Review->moveDown($id, $step)) {
			$this->Session->setFlash(__d('croogo', 'Moved down successfully'), 'default', array('class' => 'success'));
		} else {
			$this->Session->setFlash(__d('croogo', 'Could not move down'), 'default', array('class' => 'error'));
		}
	
		$this->redirect(array('action' => 'index'));
		
	}
}
