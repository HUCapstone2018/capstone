<?php

	/*CroogoRouter::connect('/process_map', array(
		'plugin' => 'maps', 'controller' => 'maps', 'action' => 'process'
	));
	CroogoRouter::connect('/map_results', array(
		'plugin' => 'maps', 'controller' => 'maps', 'action' => 'result'
	));*/
	CroogoRouter::connect('/map/:slug', array(
		'plugin' => 'maps', 'controller' => 'maps', 'action' => 'view'
	));

?>