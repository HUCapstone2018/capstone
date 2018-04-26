<?php
App::uses('MapsAppController', 'Maps.Controller');
App::uses('Croogo', 'Lib');

/**
 * Maps Controller
 *
 * @category Maps.Controller
 * @package  Croogo.Maps
 * @version  1.0
 * @author   Avo Sarafian <me@avosarafian.com>
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.croogo.org
 */
class MapsController extends MapsAppController {

/**
 * Controller name
 *
 * @var string
 * @access public
 */
	public $name = 'Maps';
	

/**
 * Models used by the Controller
 *
 * @var array
 * @access public
 */
	public $uses = array(
		'Maps.Map'
	);

/**
 * afterConstruct
 */
	public function afterConstruct() {
		parent::afterConstruct();
		$this->_setupAclComponent();
	}

    public function beforeFilter() {
        parent::beforeFilter();
		$this->Security->unlockedActions[] = 'admin_toggle';
    }

/**
 * Toggle Map status
 *
 * @param $id string Map id
 * @param $status integer Current Map status
 * @return void
 */
	public function admin_toggle($id = null, $status = null) {
		$this->Croogo->fieldToggle($this->Map, $id, $status);
	}

/**
 * Admin index
 *
 * @return void
 * @access public
 */
	public function admin_index() {
		$this->set('title_for_layout', __('Maps'));

		$this->Map->recursive = 0;
		$maps = $this->paginate();
		$this->set(compact('maps'));

		$this->set('displayFields', $this->Map->displayFields());
		
		$hasChildren = array();
		$hasChildren['controller'] = "markers";
		$hasChildren['action'] = "index";
		$hasChildren['tooltip'] = "Manage Markers";
		$this->set('hasChildren', $hasChildren);
	}

/**
 * Admin Add
 *
 * @param integer $id
 * @return void
 * @access public
 */
	public function admin_add() {
		$this->set('title_for_layout', __('Edit Map'));

		if (!empty($this->request->data)) {
			$this->request->data['Map']['google_api_key'] = trim($this->request->data['Map']['google_api_key']);
			
			if ($this->Map->save($this->request->data)) {
				$this->Session->setFlash(__('The Map has been shaved'), 'default', array('class' => 'success'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The Map could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}

		$this->set('editFields', $this->Map->editFields());

		//this adds a custom script at the bottom of the form to manage custom stuff while editing/adding
		$addScript =<<<EOF
				$(document).ready(function(e) {
					$("#MapTitle").slug({
						slug:'slug',
						hide: false
					});
				});
EOF;
		$this->set('addScript', $addScript);

	}

/**
 * Admin edit
 *
 * @param integer $id
 * @return void
 * @access public
 */
	public function admin_edit($id = null) {
		$this->set('title_for_layout', __('Edit Map Details'));

		if (!$id && empty($this->request->data)) {
			$this->Session->setFlash(__('Invalid Map'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->request->data)) {
			$this->request->data['Map']['google_api_key'] = trim($this->request->data['Map']['google_api_key']);
			
			if ($this->Map->save($this->request->data)) {
				$this->Session->setFlash(__('The Map has been shaved'), 'default', array('class' => 'success'));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The Map could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		if (empty($this->request->data)) {
			$this->request->data = $this->Map->read(null, $id);
		}

		$this->set('editFields', $this->Map->editFields());

		//this adds a custom script at the bottom of the form to manage custom stuff while editing/adding
		$addScript =<<<EOF
				$(document).ready(function(e) {
					$("#MapTitle").slug({
						slug:'slug',
						hide: false
					});
				});
EOF;
		$this->set('addScript', $addScript);

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
			$this->Session->setFlash(__d('croogo', 'Invalid id for Map'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if ($this->Map->delete($id)) {
			$this->Session->setFlash(__d('croogo', 'Map deleted'), 'default', array('class' => 'success'));
			$this->redirect(array('action' => 'index'));
		}
	}
	
/**
 * View
 *
 * @param integer $slug
 * @return void
 * @access public
 */
	public function view($slug = null, $values = false) {
		if(empty($slug)){
			$this->set("map", array("Map", "no map was defined"));	
		}

		$this->Map->recursive = 2;
		$map = $this->Map->findBySlug($slug);

		if($values)
			return $map;
		else
			$this->set("map", $map);
	}


}
