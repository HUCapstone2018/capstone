<?php
/**
 * Preloaders Activation
 *
 * Activation class for Preloaders plugin.
 *
 * @package  Croogo
 * @version  1.0
 * @author   Avo Sarafian <me@avosarafian.com>
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.croogo.org - Avo
 */
class PreloadersActivation {

	public $version = '0.9';
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

        CakePlugin::load('Preloaders');

        $loading_direction = array(
                "ltr" => "Left to Right",
                "rtl" => "Right to Left",
                "btt" => "Bottom to Top",
                "ttb" => "Top to Bottom",
            );

        $controller->Setting->write('PreloadersPlugin.remove_settings_on_deactivate','YES',array('description' => 'Remove settings on deactivate','editable' => 1));
        $controller->Setting->write('PreloadersPlugin.version',"0.9",array('description' => 'plugin version','editable' => 1));
        
        $controller->Setting->write('Preloaders.background_color','#000000',array('description' => 'Background Color','editable' => 1,'class'=>"color"));
        $controller->Setting->write('Preloaders.bar_color','#FFFFFF',array('description' => 'Loader Color','editable' => 1,'class'=>"color"));
        $controller->Setting->write('Preloaders.bar_height',1,array('description' => 'Bar Height','editable' => 1));
        $controller->Setting->write('Preloaders.minimum_time',500,array('description' => 'Minimum Loading time','editable' => 1));
        $controller->Setting->write('Preloaders.maximum_time',20000,array('description' => 'Maximum Loading time','editable' => 1));
        $controller->Setting->write('Preloaders.fadeout_time',1000,array('description' => 'Fadeout time','editable' => 1));
        $controller->Setting->write('Preloaders.deep_search',true,array('description' => 'Deep Search through ALL images','editable' => 1));
        $controller->Setting->write('Preloaders.percentage',true,array('description' => 'Show Loader Percentage','editable' => 1, 'type'=>"checkbox"));
        $controller->Setting->write('Preloaders.direction','ltr',array('description' => 'Direction of Loader','editable' => 1,'options'=>$loading_direction));

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
        $controller->Croogo->removeAco('Preloaders'); // ExampleController ACO and it's actions will be removed
        
        if(Configure::read('PreloadersPlugin.remove_settings_on_deactivate') == 'YES' ){

            //Croogo plugin related variables
            $controller->Setting->deleteKey('PreloadersPlugin.remove_settings_on_deactivate');
            $controller->Setting->deleteKey('PreloadersPlugin.version');

            //Preloader related variables 
            $controller->Setting->deleteKey('Preloaders.background_color');
            $controller->Setting->deleteKey('Preloaders.bar_color');
            $controller->Setting->deleteKey('Preloaders.bar_height');
            $controller->Setting->deleteKey('Preloaders.minimum_time');
            $controller->Setting->deleteKey('Preloaders.maximum_time');
            $controller->Setting->deleteKey('Preloaders.fadeout_time');
            $controller->Setting->deleteKey('Preloaders.deep_search');
            $controller->Setting->deleteKey('Preloaders.percentage');
            $controller->Setting->deleteKey('Preloaders.direction');

        }
        
    }

}
?>