<?php

App::uses('AppModel', 'Model');

/**
 * Topic
 *
 * PHP version 5
 *
 * @category Model
 * @package  Croogo
 * @version  1.0
 * @author   Ayman Hamdoun and Yasmine Hamdar
 * @license  http://www.opensource.org/licenses/mit-license.php The MIT License
 * @link     http://www.croogo.org
 */
class Topic extends AppModel {

/**
 * Model name
 *
 * @var string
 * @access public
 */
  public $name = 'Topic';
/**
 * Order
 *
 * @var string
 * @access public
 */
  public $order = 'Topic.weight DESC';
  

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
      'name',
      'description'
  );

}
