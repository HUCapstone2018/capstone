<?php

App::uses('AppController', 'Controller');

/**
 * Blogs Controller
 *
 * PHP version 5
 *
 * @category Controller
 * @package  Croogo
 * @version  1.0
 * @author   Fahad Ibnay Heylaal <Blog@fahad19.com>
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.croogo.org
 */
class BlogsController extends AppController {

/**
 * Controller name
 *
 * @var string
 * @access public
 */
	public $name = 'Blogs';
	public $presetVars = true;
	
/**
 * Models used by the Controller
 *
 * @var array
 * @access public
 */
	public $uses = array('Ecospots.Blog', 'Ecospots.Topic');

	public $helpers = array('Eco','Paginator'=>['className'=>'CroogoPaginator']);
	
	public $isSortable = true;

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

	public $paginate = ['limit'=>1];

/**
 * Admin index
 *
 * @return void
 * @access public
 */
	public function admin_index() {
		$this->set('title_for_layout', __('List of Blogs'));
		$this->Blog->recursive = 1;
		$this->paginate['limit'] = 10;
		$blogs = $this->paginate();

		$this->set(compact('blogs'));

		$this->set('displayFields', $this->Blog->displayFields());
		$this->set('isSortable', $this->isSortable);

		//debug($BlogTypes);
	}

/**
 * Admin add
 *
 * @return void
 * @access public
 */
	public function admin_add() {
		$this->set('title_for_layout', __('Add a Blog'));
		// debug($this->request->data);
		if (!empty($this->request->data)) {
			$this->Blog->create();
			$this->request->data['Blog']['slug'] = Inflector::slug(strtolower($this->request->data['Blog']['name']),"-");
			$this->request->data['Blog']['user_id'] = $this->Session->read('Auth.User.id');
			if ($this->Blog->save($this->request->data)) {
				$this->Session->setFlash(__('The Team Blog has been saved'), 'default', array('class' => 'success'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The Blog could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		$editFieldsNew = $this->Blog->editFields();
		$editFieldsNew['Topic']['options'] = $this->Topic->find('list',['fields'=>['id','name']]);
		$editFieldsNew['Topic']['multiple'] = true;
		$editFieldsNew['Topic']['empty'] = true;
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
		$this->set('title_for_layout', __('Edit Blog'));

		if (!$id && empty($this->request->data)) {
			$this->Session->setFlash(__('Invalid Blog'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->request->data)) {
			$this->request->data['Blog']['slug'] = Inflector::slug(strtolower($this->request->data['Blog']['name']),"-");
			if ($this->Blog->save($this->request->data)) {
				//$Blog_type = $this->request->data['Blog']['type'];
				$this->Session->setFlash(__('The Blog has been saved'), 'default', array('class' => 'success'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The Blog could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		if (empty($this->request->data)) {
			$this->request->data = $this->Blog->read(null, $id);
		}
		$editFieldsNew = $this->Blog->editFields();
		$editFieldsNew['Topic']['options'] = $this->Topic->find('list',['fields'=>['id','name']]);
		$editFieldsNew['Topic']['multiple'] = true;
		$editFieldsNew['Topic']['empty'] = true;
		
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
			$this->Session->setFlash(__('Invalid id for Blog'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if ($this->Blog->delete($id)) {
			$this->Session->setFlash(__('Blog deleted'), 'default', array('class' => 'success'));
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
		if ($this->Blog->moveUp($id, $step)) {
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
		if ($this->Blog->moveDown($id, $step)) {
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
	public function index($lang = 'en') 
	{
		$this->set('title_for_layout', __('Blogs'));
		if(isset($this->request->params['named']['topic']))
		{
			$slug = $this->request->params['named']['topic'];

			$this->paginate['conditions'] = array(
			    'Topic.slug' => $slug
			);
			
			$this->paginate['joins'] = array(
			    array('table' => 'blogs_topics',
			        'alias' => 'BlogsTopic',
			        'type' => 'inner',
			        'conditions' => array(
			            'Blog.id = BlogsTopic.blog_id'
			        )
			    ),
			    array('table' => 'topics',
			        'alias' => 'Topic',
			        'type' => 'inner',
			        'conditions' => array(
			            'BlogsTopic.topic_id = Topic.id'
			        )
			    )
			);
		}

		$this->paginate['contain'] = ['User'];
		$this->paginate['limit'] = 5;
		$this->paginate['page'] = isset($this->request->params['named']['page']) ? $this->request->params['named']['page'] : 1;
		$blogs = $this->paginate('Blog');
		
		$this->Topic->recursive = 0;
		$modal = $this->Topic->find('all',['fields'=>['name','ar_name','slug']]);

		$this->set(compact('blogs','lang','modal'));
	}
	
	public function view(){
		$this->set('title_for_layout', __('Blog'));
		if(!$this->request->params['slug'])
		{
				$this->Session->setFlash(__('No Blog was specified.'), 'default', array('class' => 'error'));
				$this->redirect(array('action' => 'index'));
		}

		$slug = $this->request->params['slug'];

		$this->Blog->recursive = 2;
		$blog = $this->Blog->findBySlug($slug);
		
		$this->set('blog',$blog);
	}
}
