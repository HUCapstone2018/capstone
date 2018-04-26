<?php

/**
 * Admin menu (navigation)
 *
 * This plugin's admin_menu element will be rendered in admin panel under Extensions menu.
 */
    CroogoNav::add('settings.children.preloaders', array(
        'title' => __('Preloader Settings'),
        'url' => array(
			'admin' => true,
			'plugin' => 'settings',
			'controller' => 'settings',
			'action' => 'prefix',
			'Preloaders',
		)
    ));
	
?>