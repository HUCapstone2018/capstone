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
class MarkersController extends MapsAppController {

/**
 * Controller name
 *
 * @var string
 * @access public
 */
	public $name = 'Markers';

/**
 * Menu ID
 *
 * holds the current menu ID (if any)
 *
 * @var string
 * @access public
 */
	public $mapId = '';

/**
 * afterConstruct
 */
	public function afterConstruct() {
		parent::afterConstruct();
		$this->_setupAclComponent();
	}
	

/**
 * Models used by the Controller
 *
 * @var array
 * @access public
 */
	public $uses = array(
		'Maps.Marker'
	);


    public function beforeFilter() {
        parent::beforeFilter();
		$this->Security->unlockedActions[] = 'admin_toggle';
    }

/**
 * Toggle Marker status
 *
 * @param $id string Marker id
 * @param $status integer Current Marker status
 * @return void
 */
	public function admin_toggle($id = null, $status = null) {
		$this->Croogo->fieldToggle($this->Marker, $id, $status);
	}

/**
 * Admin index
 *
 * @return void
 * @access public
 */
	public function admin_index($map_id = null) {
		if (isset($map_id)) {
			$mapId = $map_id;
		}
		if (empty($mapId)) {
			$this->redirect(array(
				'controller' => 'maps',
				'action' => 'index',
			));
			return;
		}
		$map = $this->Marker->Map->findById($mapId);
		if (!isset($map['Map']['id'])) {
			$this->redirect(array(
				'controller' => 'maps',
				'action' => 'index',
			));
			return;
		}
		$this->set('title_for_layout', __d('croogo', 'Markers for: %s', $map['Map']['title']));

		$this->Marker->recursive = 0;
		$markers = $this->paginate();
		$this->set(compact('markers'));				

		$this->set('displayFields', $this->Marker->displayFields());
	}

/**
 * Admin add
 *
 * @return void
 * @access public
 */
	public function admin_add() {
		$this->set('title_for_layout', __('Add Marker'));

		if (!empty($this->request->data)) {

			$this->Marker->create();
			
			if ($this->Marker->save($this->request->data)) {
				$mapId = $this->request->data['Marker']['map_id'];

				$this->Session->setFlash(__('The Marker has been saved'), 'default', array('class' => 'success'));
				$this->redirect(array('action' => 'index', $mapId));
			} else {
				$this->Session->setFlash(__('The Marker could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		$editFieldsNew = $this->Marker->editFields();
		$editFieldsNew['map_id']['options'] = array();
		$temp_options = $this->Marker->Map->find('list');
		
		foreach($temp_options as $key => $value){
			$editFieldsNew['map_id']['options'][$key] = $value;
		}
		
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
		$this->set('title_for_layout', __('Edit Marker Details'));

		if (!$id && empty($this->request->data)) {
			$this->Session->setFlash(__('Invalid Marker'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->request->data)) {
			
			if ($this->Marker->save($this->request->data)) {
				$mapId = $this->request->data['Marker']['map_id'];

				$this->Session->setFlash(__('The Marker has been shaved'), 'default', array('class' => 'success'));
				$this->redirect(array('action' => 'index', $mapId));
			} else {
				$this->Session->setFlash(__('The Marker could not be saved. Please, try again.'), 'default', array('class' => 'error'));
			}
		}
		if (empty($this->request->data)) {
			$this->request->data = $this->Marker->read(null, $id);
		}
		$editFieldsNew = $this->Marker->editFields();
		$editFieldsNew['map_id']['options'] = array();
		$temp_options = $this->Marker->Map->find('list');
		
		foreach($temp_options as $key => $value){
			$editFieldsNew['map_id']['options'][$key] = $value;
		}

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
			$this->Session->setFlash(__d('croogo', 'Invalid id for Marker'), 'default', array('class' => 'error'));
			$this->redirect(array('action' => 'index'));
		}
		if ($this->Marker->delete($id)) {
			$this->Session->setFlash(__d('croogo', 'Marker deleted'), 'default', array('class' => 'success'));
			$this->redirect(array('action' => 'index'));
		}
	}


}
