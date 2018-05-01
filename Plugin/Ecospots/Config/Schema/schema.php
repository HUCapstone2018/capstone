<?php

class EcospotsSchema extends CakeSchema {

	public function before($event = array()) {return true;}

	public function after($event = array()) {}

	// Schema For Animals Table :
	public $animals = array(
		'id' => array('type'=>'integer','null'=>false,'default' => null, 'key' => 'primary'),
		'name' => array('type' => 'string', 'length' => 255 ,'null' => false, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'ar_name' => array('type' => 'string', 'length' => 255 ,'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'slug' => array('type' => 'string', 'null' => false, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
		'photo' => array('type' => 'string', 'null' => true, 'default' => null, 'length' => 255, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
		'description' => array('type' => 'text', 'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'ar_description' => array('type' => 'text', 'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'danger' => array('type' => 'boolean', 'null' => false, 'default' => '0'),
		'weight' => array('type'=>'integer','null'=>true,'default'=>null),

        // Database stuff
		'updated' => array('type' => 'datetime', 'null' => true),
		'created' => array('type' => 'datetime', 'null' => true),
		'indexes' => array(
			'PRIMARY' => array('column' => 'id', 'unique' => 1),
		),
	);

    // Schema For Plants Table :
    public $plants = array(
        'id' => array('type'=>'integer','null'=>false,'default' => null, 'key' => 'primary'),
        'name' => array('type' => 'string', 'length' => 255 ,'null' => false, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'ar_name' => array('type' => 'string', 'length' => 255 ,'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'slug' => array('type' => 'string', 'null' => false, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'photo' => array('type' => 'string', 'null' => true, 'default' => null, 'length' => 255, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'description' => array('type' => 'text', 'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'ar_description' => array('type' => 'text', 'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'danger' => array('type' => 'boolean', 'null' => false, 'default' => '0'),
        'weight' => array('type'=>'integer','null'=>true,'default'=>null),
        // Database stuff
        'updated' => array('type' => 'datetime', 'null' => true),
        'created' => array('type' => 'datetime', 'null' => true),
        'indexes' => array(
            'PRIMARY' => array('column' => 'id', 'unique' => 1),
        ),
    );

    // Schema For Activities Table :
    public $activities = array(
        'id' => array('type'=>'integer','null'=>false,'default' => null, 'key' => 'primary'),
        'name' => array('type' => 'string', 'length' => 255 ,'null' => false, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'ar_name' => array('type' => 'string', 'length' => 255 ,'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'slug' => array('type' => 'string', 'null' => false, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'weight' => array('type'=>'integer','null'=>true,'default'=>null),
        // Database stuff
        'updated' => array('type' => 'datetime', 'null' => true),
        'created' => array('type' => 'datetime', 'null' => true),
        'indexes' => array(
            'PRIMARY' => array('column' => 'id', 'unique' => 1),
        ),
    );

    // Schema For Spots Table :
    public $spots = array(
        'id' => array('type'=>'integer','null'=>false,'default' => null, 'key' => 'primary'),
        'name' => array('type' => 'string', 'length' => 255 ,'null' => false, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'ar_name' => array('type' => 'string', 'length' => 255 ,'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'slug' => array('type' => 'string', 'null' => false, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'photo' => array('type' => 'string', 'null' => true, 'default' => null, 'length' => 255, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'excerpt' => array('type' => 'text', 'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'ar_excerpt' => array('type' => 'text', 'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'description' => array('type' => 'text', 'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'ar_description' => array('type' => 'text', 'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'reserve' => array('type' => 'boolean', 'null' => false, 'default' => '0'),
        'featured' => array('type' => 'boolean', 'null' => false, 'default' => '0'),
        'weight' => array('type'=>'integer','null'=>true,'default'=>null),
        'map_id' => array('type'=>'integer','null'=>true,'default' => null),
        'spot_id' => array('type'=>'integer','null'=>true,'default' => null),
        // Database stuff
        'updated' => array('type' => 'datetime', 'null' => true),
        'created' => array('type' => 'datetime', 'null' => true),
        'indexes' => array(
            'PRIMARY' => array('column' => 'id', 'unique' => 1),
        ),
    );

    // Schema For Events Table :
    public $events = array(
        'id' => array('type'=>'integer','null'=>false,'default' => null, 'key' => 'primary'),
        'name' => array('type' => 'string', 'length' => 255 ,'null' => false, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'ar_name' => array('type' => 'string', 'length' => 255 ,'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'slug' => array('type' => 'string', 'null' => false, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'photo' => array('type' => 'string', 'null' => true, 'default' => null, 'length' => 255, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'excerpt' => array('type' => 'text', 'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'ar_excerpt' => array('type' => 'text', 'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'description' => array('type' => 'text', 'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'ar_description' => array('type' => 'text', 'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'date' => array('type' => 'datetime', 'null' => true),
        'weight' => array('type'=>'integer','null'=>true,'default'=>null),
        'user_id' => array('type'=>'integer','null'=>true,'default' => null),
        'spot_id' => array('type'=>'integer','null'=>true,'default' => null),
        // Database stuff
        'updated' => array('type' => 'datetime', 'null' => true),
        'created' => array('type' => 'datetime', 'null' => true),
        'indexes' => array(
            'PRIMARY' => array('column' => 'id', 'unique' => 1),
        ),
    );

    // Schema For Reviews Table :
    public $reviews = array(
        'id' => array('type'=>'integer','null'=>false,'default' => null, 'key' => 'primary'),
        'name' => array('type' => 'string', 'length' => 255 ,'null' => false, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'ar_name' => array('type' => 'string', 'length' => 255 ,'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'slug' => array('type' => 'string', 'null' => false, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'photo' => array('type' => 'string', 'null' => true, 'default' => null, 'length' => 255, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'description' => array('type' => 'text', 'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'ar_description' => array('type' => 'text', 'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'weight' => array('type'=>'integer','null'=>true,'default'=>null),
        'user_id' => array('type'=>'integer','null'=>true,'default' => null),
        'spot_id' => array('type'=>'integer','null'=>true,'default' => null),
        // Database stuff
        'updated' => array('type' => 'datetime', 'null' => true),
        'created' => array('type' => 'datetime', 'null' => true),
        'indexes' => array(
            'PRIMARY' => array('column' => 'id', 'unique' => 1),
        ),
    );

    // Schema For Blogs Table :
    public $blogs = array(
        'id' => array('type'=>'integer','null'=>false,'default' => null, 'key' => 'primary'),
        'name' => array('type' => 'string', 'length' => 255 ,'null' => false, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'ar_name' => array('type' => 'string', 'length' => 255 ,'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'slug' => array('type' => 'string', 'null' => false, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'photo' => array('type' => 'string', 'null' => true, 'default' => null, 'length' => 255, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        
        'excerpt' => array('type' => 'text', 'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'ar_excerpt' => array('type' => 'text', 'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        
        'description' => array('type' => 'text', 'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'ar_description' => array('type' => 'text', 'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        
        'author' => array('type' => 'string', 'length' => 255 ,'null' => false, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'reference' => array('type' => 'string', 'length' => 255 ,'null' => false, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'weight' => array('type'=>'integer','null'=>true,'default'=>null),
        'user_id' => array('type'=>'integer','null'=>true,'default' => null),
        // Database stuff
        'updated' => array('type' => 'datetime', 'null' => true),
        'created' => array('type' => 'datetime', 'null' => true),
        'indexes' => array(
            'PRIMARY' => array('column' => 'id', 'unique' => 1),
        ),
    );

    // Schema For Topics Table :
    public $topics = array(
        'id' => array('type'=>'integer','null'=>false,'default' => null, 'key' => 'primary'),
        'name' => array('type' => 'string', 'length' => 255 ,'null' => false, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'ar_name' => array('type' => 'string', 'length' => 255 ,'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'slug' => array('type' => 'string', 'null' => false, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        
        'description' => array('type' => 'text', 'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'ar_description' => array('type' => 'text', 'null' => true, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
        'weight' => array('type'=>'integer','null'=>true,'default'=>null),
        
        // Database stuff
        'updated' => array('type' => 'datetime', 'null' => true),
        'created' => array('type' => 'datetime', 'null' => true),
        'indexes' => array(
            'PRIMARY' => array('column' => 'id', 'unique' => 1),
        ),
    );


    public $blogs_topics = array(
        'id' => array('type'=>'integer','null'=>false,'default' => null, 'key' => 'primary'),
        'topic_id' => array('type'=>'integer','null'=>false,'default' => null),
        'blog_id' => array('type'=>'integer','null'=>false,'default' => null),
    );

    public $animals_spots = array(
        'id' => array('type'=>'integer','null'=>false,'default' => null, 'key' => 'primary'),
        'animal_id' => array('type'=>'integer','null'=>false,'default' => null),
        'spot_id' => array('type'=>'integer','null'=>false,'default' => null),
    );

    public $plants_spots = array(
        'id' => array('type'=>'integer','null'=>false,'default' => null, 'key' => 'primary'),
        'plant_id' => array('type'=>'integer','null'=>false,'default' => null),
        'spot_id' => array('type'=>'integer','null'=>false,'default' => null),
    );

    public $activities_spots = array(
        'id' => array('type'=>'integer','null'=>false,'default' => null, 'key' => 'primary'),
        'activity_id' => array('type'=>'integer','null'=>false,'default' => null),
        'spot_id' => array('type'=>'integer','null'=>false,'default' => null),
    );
}
