<?php 

class MapsSchema extends CakeSchema {

	public function before($event = array()) {
		return true;
	}

	public function after($event = array()) {
	}

	public 	$markers = array(
		'id'			=> array('type' => 'integer', 'null' => false, 'default' => NULL, 'length' => 10, 'key' => 'primary'),
		'name'			=> array('type' => 'string', 'null' => false, 'length'=>255),
		'description'	=> array('type' => 'text', 'null' => false),
		'latitude' 		=> array('type' => 'string', 'null' => false, 'length'=>255),
		'longitude' 	=> array('type' => 'string', 'null' => false, 'length'=>255),
		'icon'			=> array('type' => 'string', 'null' => true, 'length'=>255),
		'map_id'		=> array('type' => 'integer', 'null' => false, 'length'=>10),

		'status' 		=> array('type' => 'boolean', 'null' => false, 'default' => true),
		'updated' 		=> array('type' => 'datetime', 'null' => false, 'default' => null),
		'created' 		=> array('type' => 'datetime', 'null' => false, 'default' => null),
		'indexes' 		=> array(
			'PRIMARY' 	=> array('column' => 'id', 'unique' => 1)
		),
		'tableParameters' => array('charset' => 'utf8', 'collate' => 'utf8_unicode_ci', 'engine' => 'InnoDB')
	); 

	public 	$maps = array(
		'id' 			=> array('type' => 'integer', 'null' => false, 'default' => NULL, 'length' => 10, 'key' => 'primary'),
		'title' 		=> array('type' => 'string', 'null' => false, 'length'=>255),
		'slug' 			=> array('type' => 'string', 'null' => false, 'length'=>255),
		'latitude' 		=> array('type' => 'string', 'null' => false, 'length'=>255),
		'longitude' 	=> array('type' => 'string', 'null' => false, 'length'=>255),
		'zoom' 			=> array('type' => 'integer', 'null' => false, 'default' => 12, 'length'=>2),
		'type' 			=> array('type' => 'string', 'null' => true, 'default' => 'ROADMAP', 'length'=>255),
		'language'		=> array('type' => 'string', 'null' => true, 'length'=>255),
		'draggable' 	=> array('type' => 'integer', 'null' => false, 'length'=>1, "default" => 1),
		'element' 		=> array('type' => 'string', 'null' => true, 'length'=>255),
		'google_api_key' 		=> array('type' => 'string', 'null' => true, 'length'=>255),
	
		'status' 		=> array('type' => 'boolean', 'null' => false, 'default' => true),
		'updated' 		=> array('type' => 'datetime', 'null' => false, 'default' => null),
		'created' 		=> array('type' => 'datetime', 'null' => false, 'default' => null),
			
		'indexes' 		=> array(
			'PRIMARY' 	=> array('column' => 'id', 'unique' => 1)
		),
		'tableParameters' => array('charset' => 'utf8', 'collate' => 'utf8_unicode_ci', 'engine' => 'InnoDB')
	); 
}
?>