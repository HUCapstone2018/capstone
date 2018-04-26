<?php
/**
 * Maps Activation
 *
 * Activation class for Maps plugin.
 *
 * @package  Croogo
 * @version  1.0
 * @author   Avo Sarafian <me@avosarafian.com>
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.croogo.org - Avo
 */
class MapsActivation {

	public $version = '1.0';
/**
 * onActivate will be called if this returns true
 *
 * @param  object $controller Controller
 * @return boolean
 */
    public function beforeActivation(&$controller) {
        return true;
    }
/**
 * Called after activating the plugin in ExtensionsPluginsController::admin_toggle()
 *
 * @param object $controller Controller
 * @return void
 */
    public function onActivation(&$controller) {
        // ACL: set ACOs with permissions
        //MAPS
        $controller->Croogo->addAco('Maps'); 
        $controller->Croogo->addAco('Maps/Maps/admin_index', array('admin')); 
        $controller->Croogo->addAco('Maps/Maps/admin_toggle', array('admin')); 
        $controller->Croogo->addAco('Maps/Maps/admin_add', array('admin'));
        $controller->Croogo->addAco('Maps/Maps/admin_edit', array('admin'));
        $controller->Croogo->addAco('Maps/Maps/admin_delete', array('admin'));
        $controller->Croogo->addAco('Maps/Maps/view', array('admin', 'registered', 'public'));

        //MARKERS
        $controller->Croogo->addAco('Maps/Markers/admin_index', array('admin')); 
        $controller->Croogo->addAco('Maps/Markers/admin_toggle', array('admin'));
        $controller->Croogo->addAco('Maps/Markers/admin_add', array('admin'));
        $controller->Croogo->addAco('Maps/Markers/admin_edit', array('admin'));
        $controller->Croogo->addAco('Maps/Markers/admin_delete', array('admin'));
        $controller->Croogo->addAco('Maps/Markers/view', array('admin', 'registered', 'public'));
       
        // Add a table to the DB
        App::import('Model', 'CakeSchema');
        App::import('Model', 'ConnectionManager');

        $db = ConnectionManager::getDataSource('default');

        CakePlugin::load('Maps');
        $schema =& new CakeSchema(array('plugin'=>'Maps','name'=>'Maps'));
        $check_tables = $db->listSources();

        $schema = $schema->load();
        
        if (!in_array('maps', $check_tables)) {
            foreach($schema->tables as $table => $fields) {
                $create = $db->createSchema($schema, $table);
                $db->execute($create);
            } 
        }

    }
/**
 * onDeactivate will be called if this returns true
 *
 * @param  object $controller Controller
 * @return boolean
 */
    public function beforeDeactivation(&$controller) {
        return true;
    }
/**
 * Called after deactivating the plugin in ExtensionsPluginsController::admin_toggle()
 *
 * @param object $controller Controller
 * @return void
 */
    public function onDeactivation(&$controller) {
        // ACL: remove ACOs with permissions
        $controller->Croogo->removeAco('Maps'); // ExampleController ACO and it's actions will be removed
        
        // Remove the tables from Database
        App::import('Model', 'CakeSchema', false);
        App::import('Model', 'ConnectionManager');
        $db = ConnectionManager::getDataSource('default');
        
        if (!$db->isConnected()) {
            $this->Session->setFlash(__('Could not connect to database.'), 'default', array('class' => 'error'));
        } else {
            CakePlugin::load('Maps'); //is there a better way to do this?
            $schema = & new CakeSchema(array('name' => 'Maps', 'plugin' => 'Maps'));
            $schema = $schema->load();

            foreach ($schema->tables as $table => $fields) {
                $drop = $db->dropSchema($schema, $table);
                $db->execute($drop);
            }
        }
    }

}
?>