<?php

/**
 * Admin menu (navigation)
 *
 * This plugin's admin_menu element will be rendered in admin panel under Extensions menu.
 */
Croogo::hookHelper('*', 'Ckeditor.Ckeditor');

// Configure Wysiwyg
Croogo::mergeConfig('Wysiwyg.actions', array(
    'Animals/admin_add' => array(
        array(
            'elements' => 'AnimalDescription',
        ),
        array(
            'elements' => 'AnimalArDescription',
        ),
    ),
    'Animals/admin_edit' => array(
        array(
            'elements' => 'AnimalDescription',
        ),
        array(
            'elements' => 'AnimalArDescription',
        ),
    ),
    'Plants/admin_add' => array(
        array(
            'elements' => 'PlantDescription',
        ),
        array(
            'elements' => 'PlantArDescription',
        ),
    ),
    'Plants/admin_edit' => array(
        array(
            'elements' => 'PlantDescription',
        ),
        array(
            'elements' => 'PlantArDescription',
        ),
    ),
    'Spots/admin_add' => array(
        array(
            'elements' => 'SpotDescription',
        ),
        array(
            'elements' => 'SpotArDescription',
        ),
    ),
    'Spots/admin_edit' => array(
        array(
            'elements' => 'SpotDescription',
        ),
        array(
            'elements' => 'SpotArDescription',
        ),
    ),
    'Events/admin_add' => array(
        array(
            'elements' => 'EventDescription',
        ),
        array(
            'elements' => 'EventArDescription',
        ),
    ),
    'Events/admin_edit' => array(
        array(
            'elements' => 'EventDescription',
        ),
        array(
            'elements' => 'EventArDescription',
        ),
    ),
    'Reviews/admin_add' => array(
        array(
            'elements' => 'ReviewDescription',
        ),
        array(
            'elements' => 'ReviewArDescription',
        ),
    ),
    'Reviews/admin_edit' => array(
        array(
            'elements' => 'ReviewDescription',
        ),
        array(
            'elements' => 'ReviewArDescription',
        ),
    ),
    'Blogs/admin_add' => array(
        array(
            'elements' => 'BlogDescription',
        ),
        array(
            'elements' => 'BlogArDescription',
        ),
    ),
    'Blogs/admin_edit' => array(
        array(
            'elements' => 'BlogDescription',
        ),
        array(
            'elements' => 'BlogArDescription',
        ),
    ),
));

// Configure Translate Plugin
// Configure::write('Translate.models', array(
//     'Spot' => array(
//         'fields' => [
//             'name' => 'nameTranslation',
//             'description' => 'descriptionTranslation'
//         ],
//         'translateModel' => 'Ecospots.Spot'
//     ),
//     'Animal' => array(
//         'fields' => [
//             'name' => 'nameTranslation',
//             'description' => 'descriptionTranslation'
//         ],
//         'translateModel' => 'Ecospots.Animal'
//     ),
//     'Plant' => array(
//         'fields' => [
//             'name' => 'nameTranslation',
//             'description' => 'descriptionTranslation'
//         ],
//         'translateModel' => 'Ecospots.Plant'
//     ),
// ));



CroogoNav::add('Blogs', array(
    'icon' => array('home','large'),
    'title' => __d('croogo',  "Blogs"),
    'weight' => 16,
    'children' => array(
        'list_blogs' => array(
            'title' => __d('croogo', 'List Blogs'),
            'url' => array(
                'admin' => true,
                'plugin' => 'ecospots',
                'controller' => 'blogs',
                'action' => 'index',
            )
        ),
        'add_blog' => array(
            'title' => __d('croogo', 'Add Blog'),
            'url' => array(
                'admin' => true,
                'plugin' => 'ecospots',
                'controller' => 'blogs',
                'action' => 'add',
            )
        ),
        'list_topics' => array(
            'title' => __d('croogo', 'Topics'),
            'url' => array(
                'admin' => true,
                'plugin' => 'ecospots',
                'controller' => 'topics',
                'action' => 'index',
            )
        ),
    )
));

CroogoNav::add('Animals', array(
	'icon' => array('home','large'),
	'title' => __d('croogo',  "Animal Life"),
	'weight' => 16,
	'children' => array(
		'list_animals' => array(
			'title' => __d('croogo', 'List Animals'),
			'url' => array(
				'admin' => true,
				'plugin' => 'ecospots',
				'controller' => 'animals',
				'action' => 'index',
            )
        ),
        'add_animal' => array(
			'title' => __d('croogo', 'Add Animal'),
			'url' => array(
				'admin' => true,
				'plugin' => 'ecospots',
				'controller' => 'animals',
				'action' => 'add',
            )
        ),
    )
));

CroogoNav::add('Plants', array(
    'icon' => array('home','large'),
    'title' => __d('croogo',  "Plant Life"),
    'weight' => 16,
    'children' => array(
        'list_animals' => array(
            'title' => __d('croogo', 'List Plants'),
            'url' => array(
                'admin' => true,
                'plugin' => 'ecospots',
                'controller' => 'plants',
                'action' => 'index',
            )
        ),
        'add_animal' => array(
            'title' => __d('croogo', 'Add Plant'),
            'url' => array(
                'admin' => true,
                'plugin' => 'ecospots',
                'controller' => 'plants',
                'action' => 'add',
            )
        ),
    )
));

// CroogoNav::add('Activities', array(
//     'icon' => array('home','large'),
//     'title' => __d('croogo',  "Activities"),
//     'weight' => 16,
//     'children' => array(
//         'list_activities' => array(
//             'title' => __d('croogo', 'List Activities'),
//             'url' => array(
//                 'admin' => true,
//                 'plugin' => 'ecospots',
//                 'controller' => 'activities',
//                 'action' => 'index',
//             )
//         ),
//         'add_activity' => array(
//             'title' => __d('croogo', 'Add Activity'),
//             'url' => array(
//                 'admin' => true,
//                 'plugin' => 'ecospots',
//                 'controller' => 'activities',
//                 'action' => 'add',
//             )
//         ),
//     )
// ));

// CroogoNav::add('Events', array(
//     'icon' => array('home','large'),
//     'title' => __d('croogo',  "Events"),
//     'weight' => 16,
//     'children' => array(
//         'list_animals' => array(
//             'title' => __d('croogo', 'List Events'),
//             'url' => array(
//                 'admin' => true,
//                 'plugin' => 'ecospots',
//                 'controller' => 'events',
//                 'action' => 'index',
//             )
//         ),
//         'add_animal' => array(
//             'title' => __d('croogo', 'Add Event'),
//             'url' => array(
//                 'admin' => true,
//                 'plugin' => 'ecospots',
//                 'controller' => 'events',
//                 'action' => 'add',
//             )
//         ),
//     )
// ));


// CroogoNav::add('Reviews', array(
//     'icon' => array('home','large'),
//     'title' => __d('croogo',  "Reviews"),
//     'weight' => 16,
//     'children' => array(
//         'list_animals' => array(
//             'title' => __d('croogo', 'List Reviews'),
//             'url' => array(
//                 'admin' => true,
//                 'plugin' => 'ecospots',
//                 'controller' => 'reviews',
//                 'action' => 'index',
//             )
//         ),
//         'add_animal' => array(
//             'title' => __d('croogo', 'Add Review'),
//             'url' => array(
//                 'admin' => true,
//                 'plugin' => 'ecospots',
//                 'controller' => 'reviews',
//                 'action' => 'add',
//             )
//         ),
//     )
// ));

CroogoNav::add('Spots', array(
    'icon' => array('home','large'),
    'title' => __d('croogo',  "Spots"),
    'weight' => 16,
    'children' => array(
        'list_spots' => array(
            'title' => __d('croogo', 'Spots'),
            'url' => array(
                'admin' => true,
                'plugin' => 'ecospots',
                'controller' => 'spots',
                'action' => 'index',
            )
        ),

        'list_reviews' => array(
            'title' => __d('croogo', 'Reviews'),
            'url' => array(
                'admin' => true,
                'plugin' => 'ecospots',
                'controller' => 'reviews',
                'action' => 'index',
            )
        ),

        'list_activities' => array(
            'title' => __d('croogo', 'Activities'),
            'url' => array(
                'admin' => true,
                'plugin' => 'ecospots',
                'controller' => 'activities',
                'action' => 'index',
            )
        ),

        'list_events' => array(
            'title' => __d('croogo', 'Events'),
            'url' => array(
                'admin' => true,
                'plugin' => 'ecospots',
                'controller' => 'events',
                'action' => 'index',
            )
        ),

    )
));