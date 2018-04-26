<?php 
	echo $this->Html->script(array("/preloaders/js/queryloader2"));

	//grab global vars
	$background_color = Configure::read("Preloaders.background_color");
	$bar_color = Configure::read("Preloaders.bar_color");
	$bar_height = Configure::read("Preloaders.bar_height");
	$minimum_time = Configure::read("Preloaders.minimum_time");
	$maximum_time = Configure::read("Preloaders.maximum_time");
	$fadeout_time = Configure::read("Preloaders.fadeout_time");
	$deep_search = Configure::read("Preloaders.deep_search");
	$percentage = Configure::read("Preloaders.percentage");
	$direction = Configure::read("Preloaders.direction");
?>
<style type="text/css">
	.queryloader__overlay__bar {
		background: transparent url('<?= $this->webroot; ?>img/logo.png') 10% 30px no-repeat;
	}
	#qLpercentage {
		font-weight: 800;
	}
</style>
<script type="text/javascript">
    window.addEventListener('DOMContentLoaded', function() {
        new QueryLoader2(document.querySelector("body"), {
            barColor: "<?= $bar_color ?>",
            backgroundColor: "<?= $background_color ?>",
            percentage: <?= $percentage ?>,
            barHeight: <?= $bar_height ?>,
            minimumTime: <?= $minimum_time ?>,
            maximumTime: <?= $maximum_time ?>,
            fadeOutTime: <?= $fadeout_time ?>
        });
    });
</script>