<?php

App::uses('AppModel', 'Model');

/**
 * Activity
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
class Activity extends AppModel {

/**
 * Model name
 *
 * @var string
 * @access public
 */
	public $name = 'Activity';
/**
 * Order
 *
 * @var string
 * @access public
 */
	public $order = 'Activity.weight DESC';
	

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
		'created'
	);

    protected $_editFields = array(
        'id',
        'name'
    );

}
