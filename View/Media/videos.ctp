<?php 
//debug($videos);exit;

$first_video = $videos[0]['Media'];
parse_str( parse_url( $first_video['link'], PHP_URL_QUERY ), $my_array_of_vars );
            $fvid = $my_array_of_vars['v'];
?>
<div class="row">
	<div class="col-sm-12">
		<h1>Video Gallery</h1>
	</div>
	<div class="col-sm-12">
		<div id="video_holder">
			<iframe id="video_embed" width="600" height="338" src="https://www.youtube.com/embed/<?= $fvid?>?rel=0" frameborder="0" allowfullscreen></iframe>
		</div>
	</div>

		
		<?php
		foreach($videos as $video):

            parse_str( parse_url( $video['Media']['link'], PHP_URL_QUERY ), $my_array_of_vars );
            $vid = $my_array_of_vars['v']; ?>
	<div class="col-sm-3 video_block">
		<?php
		echo $this->Html->link(
				'<img src="https://i.ytimg.com/vi/'.$vid.'/hqdefault.jpg" class="inline_thumb">' . ' <span>' . $video['Media']['title'].'</span>',
				$video['Media']['link'],
				array("escape"=>false, 'class'=>'video_link',"data-vid"=>$vid)
			); ?>
	</div>
	<?php
		endforeach;
		?>
</div>
<script type="text/javascript">
$(document).ready(function(){
	$(".video_link").click(function(e){
		e.preventDefault();

		var vid = $(this).data("vid");
		$("#video_embed").attr("src", "https://www.youtube.com/embed/"+vid+"?rel=0");

		$("html,body").animate({scrollTop: $("#content").offset().top - 80}, 800);
		return false;
	});
});
$(window).load(function(){

	var $videos = $(".video_block");
	var vidheight = 0;

	$videos.each(function(){
		var theight = $(this).height();
		if(theight > vidheight)
			vidheight  = theight;
	});

	$(".video_block").height(vidheight);
})
</script>