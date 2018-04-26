<?php

Croogo::hookHelper('*', 'Ckeditor.Ckeditor');

// Configure Wysiwyg
Croogo::mergeConfig('Wysiwyg.actions', array(
	'Markers/admin_add' => array(
		array(
			'elements' => 'MarkerDescription',
		),
	),
	'Markers/admin_edit' => array(
		array(
			'elements' => 'MarkerDescription',
		),
	),
));

/**
 * Admin map (navigation)
 *
 * This plugin's admin_map element will be rendered in admin panel under Extensions map.
 */
CroogoNav::add('maps', array(
	'icon' => array('map-marker', 'large'),
	'title' => __d('croogo', 'maps'),
	'url' => array(
		'admin' => true,
		'plugin' => 'maps',
		'controller' => 'maps',
		'action' => 'index',
	),
	'weight' => 20,
	'children' => array(
		'maps' => array(
			'title' => __d('croogo', 'List Maps'),
			'url' => array(
				'admin' => true,
				'plugin' => 'maps',
				'controller' => 'maps',
				'action' => 'index',
			),
			'weight' => 10,
		),
		'add_new' => array(
			'title' => __d('croogo', 'Add new'),
			'url' => array(
				'admin' => true,
				'plugin' => 'maps',
				'controller' => 'maps',
				'action' => 'add',
			),
			'weight' => 20,
			'htmlAttributes' => array('class' => 'separator'),
		),
	),
));
