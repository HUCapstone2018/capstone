<?php
	
	$this->Html->css('/seo/css/seo.css', null, array('inline'=>false));

?>
<div class="sitemap">
    <h1><?php echo $title_for_layout; ?></h1>

    <h2>Main Menu</h2>
    <?php
    	echo $this->Menus->menu('main', array('dropdown' => false));
    	// if(Configure::read('Seo.organize_by_vocabulary') == 0){
    	echo "<h2>Blog</h2>";
    		echo "<ul>";
	        foreach ($nodes as $node) {
	            echo "<li>".$this->Html->link($node['Node']['title'],$node['Node']['path'])."</li>" ;   
	        }
    		echo "</ul>";
    	// } else {
	        // foreach ($vocabularies as $vocabulary) {
	        	// echo $this->Html->tag('h3', $vocabulary['Vocabulary']['title'], array('class'=>'sitemap-vocabulary'));
	        	// foreach($vocabulary['Term'] as $term){
		        	// echo $this->Html->tag('h4', $term['title'], array('class'=>'sitemap-term'));
    				// echo '<ul class="sitemap-node-list">';	
		        	// foreach($term['Node'] as $node){
		        		// echo "<li>".$this->Html->link($node['Node']['title'],$node['Node']['path'])."</li>" ;
		        	// }
		    		// echo "</ul>";
	        	// }
    		// }
    	// }
    ?>
    
</div>
