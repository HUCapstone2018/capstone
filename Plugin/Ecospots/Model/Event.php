<?php

App::uses('AppModel', 'Model');

/**
 * Event
 *
 * PHP version 5
 *
 * @category Model
 * @package  Croogo
 * @version  1.0
 * @author   
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.croogo.org
 */
class Event extends AppModel {

/**
 * Model name
 *
 * @var string
 * @access public
 */
	public $name = 'Event';
/**
 * Order
 *
 * @var string
 * @access public
 */
	public $order = 'Event.weight DESC';

	public $belongsTo = ["User", "Spot"];
	

/**
 * Validation
 *
 * @var array
 * @access public
 */
	public $validate = array(
		'name' => array(
			'rule' => 'notBlank',
			'message' => 'This field cannot be left blank.',
		)
	);
		
	protected $_displayFields = array(
		'name',
		'Spot.name' => ['label' => 'Spot'],
		'date',
		'created'
	);

    protected $_editFields = array(
        'id',
        'name',
        'excerpt',
        'description',
        'date'
    );

}
