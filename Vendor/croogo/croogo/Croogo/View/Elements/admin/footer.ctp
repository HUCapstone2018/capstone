<footer class="navbar-inverse">
	<div class="navbar-inner">

	<div class="footer-content">
	<?php
		$link = $this->Html->link(
			__d('croogo', Configure::read("Site.title")),
			'http://www.croogo.org'
		);
	?>
	<?php echo __d('croogo', 'Powered by %s', $link); ?>
	<?php echo $this->Html->image('//assets.croogo.org/powered_by.png'); ?>
	</div>

	</div>
</footer>