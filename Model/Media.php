<?php

App::uses('AppModel', 'Model');

/**
 * Media
 *
 * PHP version 5
 *
 * @category Model
 * @package  Croogo
 * @version  1.0
 * @author   Avo Sarafian <avo.sarafian@ogilvy.com>
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.croogo.org
 */
class Media extends AppModel {

/**
 * Model name
 *
 * @var string
 * @access public
 */
	public $name = 'Media';
/**
 * Order
 *
 * @var string
 * @access public
 */
	public $order = 'Media.weight DESC';


/**
 * Behaviors used by the Model
 *
 * @var array
 * @access public
 */
	public $actsAs = array(
		'Croogo.Ordered' => array(
			'field' => 'weight',
			'foreign_key' => false,
		),
	);
	
	protected $_isSortable = true;
	

/**
 * Validation
 *
 * @var array
 * @access public
 */
	public $validate = array(
		'title' => array(
			'rule' => 'notBlank',
			'message' => 'This field cannot be left blank.',
		),
		'link' => array(
			'rule' => 'notBlank',
			'message' => 'This field cannot be left blank.',
		),
	);
		
	protected $_displayFields = array('weight'=>array("label"=>"#"),'title','created');
	protected $_editFields = array(
								'title',
								'link'=>array("label"=>"Media External link"));

}
