<!DOCTYPE html>
<html>
<head>
	<title><?=Configure::read("Site.title")?></title>
	<meta charset="utf-8">
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <meta name="description" content="">
    <meta name="author" content="">

	<?php 
		echo $this->Layout->js(); 
		echo $this->Blocks->get('css');

		$breadCrumbs = $this->Html->getCrumbs(' / ', [
			'text' => 'Home',
			'url' => array('controller' => 'nodes', 'action' => 'promoted')
		]);

		echo $this->HTML->css([
			'bootstrap.min',
			'font-awesome',
			'imagehover.min',
			'menu',
			'responsive',
			'owl.carousel',
			'custom',
			'icomoon',
			'style',
			'settings'
		]);
	?>
</head>
<body>
	<div class="boxed_wrapper">
		<div id="header-section">
			<?php echo $this->Regions->blocks("header"); ?>
		</div>

		<div id="content-section">
		   	<?php echo $this->Layout->sessionFlash(); ?>
		
			<?php echo $content_for_layout; ?>
			<?php echo $this->Regions->blocks("inside");?>		
		</div>


		<div id="footer-section">
			<?php echo $this->Regions->blocks("footer"); ?>
		</div>
		 <!-- Scroll Top  -->
		    <button class="scroll-top tran3s color2_bg"><span class="fa fa-angle-up"></span></button>
		    <!-- preloader  -->
		    <div class="preloader"></div>

		<?php
			echo $this->HTML->script([
				'jquery',
				'bootstrap.min',
				'menu',
				'imagezoom',
				'SmoothScroll',
				'owl.carousel.min',
				'rev-slider/jquery.themepunch.tools.min',
				'rev-slider/jquery.themepunch.revolution.min',
				'rev-slider/revolution.extension.navigation.min',
				'rev-slider/revolution.extension.parallax.min',
				'rev-slider/revolution.extension.slideanims.min',
				'custom'
			]);
		?>
	</div>
</body>
</html>