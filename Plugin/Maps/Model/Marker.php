<?php

App::uses('MapsAppModel', 'Maps.Model');

/**
 * Map
 *
 * @category Maps.Model
 * @package  Croogo.Maps.Model
 * @version  1.0
 * @author   Avo Sarafian <me@avosarafian.com>
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.avosarafian.com
 */
class Marker extends MapsAppModel{

/**
 * Model name
 *
 * @var string
 * @access public
 */
	public $name = 'Marker';

/**
 * Order
 *
 * @var string
 * @access public
 */
	public $order = 'Marker.id DESC';

/**
 * Validation
 *
 * @var array
 * @access public
 */
	public $validate = array(
		'name' => array(
			'rule' => array('minLength', 1),
			'message' => 'Title cannot be empty.',
		),
		'latitude' => array(
			'rule' => array('minLength', 1),
			'message' => 'latitude cannot be empty.',
		),
		'longitude' => array(
			'rule' => array('minLength', 1),
			'message' => 'longitude cannot be empty.',
		),
	);

/**
 * Model associations: belongsTo
 *
 * @var array
 * @access public
 */
	public $belongsTo = array(
		'Map' => array(
			'className' => 'Maps.Map',
		)
	);

	
	protected $_displayFields = array(
									'id',
									'icon',
									'name',
									'latitude',
									'longitude',
									'Map.title',
									'status',
									'created'=>array("label"=>"Added Date")
								);

	protected $_editFields = array(
									'name',
									'description',
									'latitude',
									'longitude',
									'icon',
									'status' =>array("class"=>"","isPublish"=>true,"default"=>true)
								);
}
?>
