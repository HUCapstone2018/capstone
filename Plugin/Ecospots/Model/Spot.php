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
 * @author   Ayman Hamdoun and Yasmine Hamdar
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

	public $belongsTo = ["Map"]; //belongs to one spot has only 1 map

    public $hasAndBelongsToMany = array(    //many to many
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
	public $actsAs = array( //behavior
        'Containable',
		'Croogo.Ordered' => array(
			'field' => 'weight',
			'foreign_key' => false,
		),
        'Search.Searchable'
	);

    public $filterArgs = array(
        'q' => array('type' => 'query', 'method' => 'filterSpots'),
        'filter' => array('type' => 'query', 'method' => 'filterSpots'),
        'name' => array('type' => 'like'),
        'reserve' => array('type' => 'like')
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

    public function filterSpots($data = array()) {
        $conditions = array();
        if (!empty($data['filter'])) {
            $filter = '%' . $data['filter'] . '%';
            $conditions = array(
                'OR' => array(
                    $this->alias . '.name LIKE' => $filter,
                ),
            );
        }
        return $conditions;
    }

}
