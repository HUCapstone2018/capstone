<?php
/**
 * Short description for file.
 *
 * In this file, you set up routes to your controllers and their actions.
 * Routes are very important mechanism that allows you to freely connect
 * different urls to chosen controllers and their actions (functions).
 *
 * PHP versions 4 and 5
 *
 * CakePHP(tm) :  Rapid Development Framework (http://www.cakephp.org)
 * Copyright 2005-2008, Cake Software Foundation, Inc. (http://www.cakefoundation.org)
 *
 * Licensed under The MIT License
 * Redistributions of files must retain the above copyright notice.
 *
 * @filesource
 * @copyright     Copyright 2005-2008, Cake Software Foundation, Inc. (http://www.cakefoundation.org)
 * @link          http://www.cakefoundation.org/projects/info/cakephp CakePHP(tm) Project
 * @package       cake
 * @subpackage    cake.app.config
 * @since         CakePHP(tm) v 0.2.9
 * @version       $Revision$
 * @modifiedby    $LastChangedBy$
 * @lastmodified  $Date$
 * @license       http://www.opensource.org/licenses/mit-license.php The MIT License
 */
App::uses('CroogoRouter', 'Croogo.Lib');

CroogoRouter::connect('/blogs', array(
	'plugin' => 'ecospots',
	'controller' => 'blogs',
	'action' => 'index'
));

CroogoRouter::connect('/blog/:slug', array(
	'plugin' => 'ecospots',
	'controller' => 'blogs',
	'action' => 'view'
));

CroogoRouter::connect('/events', array(
	'plugin' => 'ecospots',
	'controller' => 'events',
	'action' => 'index'
));

CroogoRouter::connect('/event/:slug', array(
	'plugin' => 'ecospots',
	'controller' => 'events',
	'action' => 'view'
));

CroogoRouter::connect('/spots', array(
	'plugin' => 'ecospots',
	'controller' => 'spots',
	'action' => 'index'
));

CroogoRouter::connect('/spot/:slug', array(
	'plugin' => 'ecospots',
	'controller' => 'spots',
	'action' => 'view'
));

CroogoRouter::connect('/animal-life', array(
	'plugin' => 'ecospots',
	'controller' => 'animals',
	'action' => 'index'
));

CroogoRouter::connect('/plant-life', array(
	'plugin' => 'ecospots',
	'controller' => 'plants',
	'action' => 'index'
));

CroogoRouter::routes();
Router::parseExtensions();
Router::setExtensions(array('json', 'rss'));
CroogoRouter::localize();
require CAKE . 'Config' . DS . 'routes.php';
