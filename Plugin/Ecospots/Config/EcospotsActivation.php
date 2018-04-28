<?php
	class EcospotsActivation {

		public $version = '1.0';

	    public function beforeActivation(&$controller) 
	    {
	        // Add a table to the DB
	        App::import('Model', 'CakeSchema');
	        App::import('Model', 'ConnectionManager');

	        $db = ConnectionManager::getDataSource('default');

	        CakePlugin::load('Ecospots');
	        $schema =& new CakeSchema(array('plugin'=>'Ecospots','name'=>'Ecospots'));
	        $check_tables = $db->listSources();

	        $schema = $schema->load();
	        
	        foreach($schema->tables as $table => $fields) 
	        {
	            if (!in_array($table, $check_tables)) 
	            {
	                $create = $db->createSchema($schema, $table);
	                $db->execute($create);
	            } 
	        }
	        
	        return true;
	    }

	    public function onActivation(&$controller) 
	    {
	        $controller->Croogo->addAco('Ecospots');
	        $controller->Croogo->addAco('Ecospots/Animals/admin_index', array('admin'));
            $controller->Croogo->addAco('Ecospots/Animals/admin_add', array('admin'));
            $controller->Croogo->addAco('Ecospots/Plants/admin_index', array('admin'));
            $controller->Croogo->addAco('Ecospots/Plants/admin_add', array('admin'));
            $controller->Croogo->addAco('Ecospots/Activities/admin_index', array('admin'));
            $controller->Croogo->addAco('Ecospots/Activities/admin_add', array('admin'));
            $controller->Croogo->addAco('Ecospots/Events/admin_index', array('admin'));
            $controller->Croogo->addAco('Ecospots/Events/admin_add', array('admin'));
            $controller->Croogo->addAco('Ecospots/Spots/admin_index', array('admin'));
            $controller->Croogo->addAco('Ecospots/Spots/admin_add', array('admin'));
            $controller->Croogo->addAco('Ecospots/Blogs/admin_index', array('admin'));
            $controller->Croogo->addAco('Ecospots/Blogs/admin_add', array('admin'));
            $controller->Croogo->addAco('Ecospots/Topics/admin_index', array('admin'));
            $controller->Croogo->addAco('Ecospots/Topics/admin_add', array('admin'));
	    }


	    public function beforeDeactivation(&$controller) {return true;}

	    public function onDeactivation(&$controller) 
	    {
	        $controller->Croogo->removeAco('Animals');
	        $controller->Croogo->removeAco('Plants');
	        $controller->Croogo->removeAco('Spots');
	    }

	}
?>