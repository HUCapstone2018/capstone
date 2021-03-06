<?php

App::uses('AppModel', 'Model');

/**
 * Plant
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
class Plant extends AppModel {

/**
 * Model name
 *
 * @var string
 * @access public
 */
	public $name = 'Plant';
/**
 * Order
 *
 * @var string
 * @access public
 */
	public $order = 'Plant.id DESC';


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
        'Search.Searchable',
	);

    protected $_isSortable = true;


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


    public $filterArgs = array(
        'q' => array('type' => 'query', 'method' => 'filterPlants'),
        'filter' => array('type' => 'query', 'method' => 'filterPlants'),
        'name' => array('type' => 'like')
    );

    protected $_displayFields = array(
        //'photo',
        'name',
        'danger' => array('label' => 'In Danger'),
        'created'
    );

    protected $_editFields = array(
        'id',
        'name',
        'description',
        'photo',
        'danger' => array('label' => 'In Danger')
    );

/**
 * Return filter condition for Nodes
 *
 * @return array Array of conditions
 */
    public function filterPlants($data = array()) {
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
