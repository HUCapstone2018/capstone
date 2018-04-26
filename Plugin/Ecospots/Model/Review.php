<?php

App::uses('AppModel', 'Model');

/**
 * Review
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
class Review extends AppModel {

/**
 * Model name
 *
 * @var string
 * @access public
 */
	public $name = 'Review';
/**
 * Order
 *
 * @var string
 * @access public
 */
	public $order = 'Review.weight DESC';

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
		'name' => ['label' => 'Title'],
		'Spot.name' => ['label' => 'Spot'],
		'created'
	);

    protected $_editFields = array(
        'id',
        'name' => ['label' => 'Title'],
        'description',
    );

}
