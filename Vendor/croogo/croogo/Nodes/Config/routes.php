<?php

CroogoRouter::mapResources('Nodes.Nodes', array(
	'prefix' => '/:api/:prefix/',
));

Router::connect('/:api/:prefix/nodes/lookup', array(
	'plugin' => 'nodes',
	'controller' => 'nodes',
	'action' => 'lookup',
), array(
	'routeClass' => 'ApiRoute',
));

// Basic
CroogoRouter::connect('/', array(
	'plugin' => 'nodes', 'controller' => 'nodes', 'action' => 'promoted'
));

CroogoRouter::connect('/promoted/*', array(
	'plugin' => 'nodes', 'controller' => 'nodes', 'action' => 'promoted'
));

CroogoRouter::connect('/search/*', array(
	'plugin' => 'nodes', 'controller' => 'nodes', 'action' => 'search'
));

// Content types
CroogoRouter::contentType('news-and-events');
CroogoRouter::contentType('blog');
CroogoRouter::contentType('node');
CroogoRouter::contentType('about');
if (Configure::read('Croogo.installed')) {
	CroogoRouter::routableContentTypes();
}

// Page
/*CroogoRouter::connect('/about', array(
	'plugin' => 'nodes', 'controller' => 'nodes', 'action' => 'view',
	'type' => 'page', 'slug' => 'about'
));*/
CroogoRouter::connect('/page/:slug', array(
	'plugin' => 'nodes', 'controller' => 'nodes', 'action' => 'view',
	'type' => 'page'
));

CroogoRouter::connect('/media-overview', array(
	'plugin' => 'nodes', 'controller' => 'nodes', 'action' => 'view',
	'type' => 'page', "slug"=>"media-overview"
));

CroogoRouter::connect('/shop', array(
	'plugin' => 'nodes', 'controller' => 'nodes', 'action' => 'view',
	'type' => 'page', "slug"=>"online-shop"
));
CroogoRouter::connect('/photo-gallery', array(
	'plugin' => 'nodes', 'controller' => 'nodes', 'action' => 'view',
	'type' => 'page', "slug"=>"photo-gallery"
));