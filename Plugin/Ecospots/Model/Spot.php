<?php

App::uses('AppModel', 'Model');

/**
 * Spot
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
class Spot extends AppModel {

/**
 * Model name
 *
 * @var string
 * @access public
 */
	public $name = 'Spot';
/**
 * Order
 *
 * @var string
 * @access public
 */
	public $order = 'Spot.id DESC';

	public $belongsTo = ["Map"];

    public $hasAndBelongsToMany = array(
        'Animal' => array(
            'className' => 'Animal',
        ),
        'Plant' => array(
            'className' => 'Plant',
        ),
        'Activity' => array(
            'className' => 'Activity',
        ),
    );
/**
 * Behaviors used by the Model
 *
 * @var array
 * @access public
 */
	public $actsAs = array(
        'Containable',
		'Croogo.Ordered' => array(
			'field' => 'weight',
			'foreign_key' => false,
		),
	);

    protected $_displayFields = array(
        'photo',
        'name',
        'reserve' => ['label' => 'is a Natural Reserve'],
        'created'
    );

    protected $_editFields = array(
        'id',
        //'spot_id' => ['label' => 'Parent'],
        'name',
        'excerpt',
        'description',
        'photo',
        'reserve' => ['label' => 'is a Natural Reserve'],
        'featured' => ['label' => 'Featured on Homepage']
    );

}
