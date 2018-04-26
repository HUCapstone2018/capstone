<?php 

$current_medias_count = count($medias);
$offset_to_send = ($current_medias_count < 6) ? 0 : $offset + 6;

$count = 1;
$delay = 100;
foreach ($audio_gallery as $audio) : 
	$audio_id = $audio['Media']['id'];
	$audio_title = $audio['Media']['title'];
	$audio_link = $audio['Media']['link'];
	$audio_desc = $audio['Media']['description'];
	$audio_time = $audio['Media']['duration'];

	$animation = ($count % 2 == 0) ? "fadeInRight" : "fadeInLeft";
?>
	<div class="col-md-6 animated audio_block" data-animation="<?= $animation ?>" data-animation-delay="<?= $delay?>">
		<a href="#" data-link="<?= $audio_link?>" class="audio">
			<h4><?= $audio_title ?> <span class="description"><?= $audio_desc ?></span> <span class="duration"><?= $audio_time?></span></h4>
		</a>
	</div>
<?php 
$count++;
$delay += 100;
endforeach; ?>

<script type="text/javascript">
$(document).ready(function(){
	var new_offset = <?= $offset_to_send; ?>;
	//
	$("#js-loadMore-audios .cbp-l-loadMore-link").data("offset", new_offset).removeClass("cbp-l-loadMore-loading");

    //if finished .cbp-l-loadMore-stop
    if(new_offset == 0)
        $("#js-loadMore-audios .cbp-l-loadMore-link").addClass("cbp-l-loadMore-stop");
});
</script>