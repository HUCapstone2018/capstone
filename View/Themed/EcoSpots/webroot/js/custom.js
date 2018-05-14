// instance of fuction while Window Load event
$(window).load(function () {
	handlePreloader();
});

$(document).ready(function(){
	scrollToTop();
	themeMenu();
    initOwls();
    initRevSlider();
    initFactCounter();
    
    initSearchModal();
    spotsSearchWidget();
    aninmalsSearchWidget();
    plantsSearchWidget();

    initGoogleMaps();
});

// instance of fuction while Window Scroll event
$(window).scroll(function () {	
	stickyHeader();
	initFactCounter();
});


// Prealoder
function handlePreloader() {
	if($('.preloader').length){
		$('.preloader').delay(200).fadeOut(500);
	}
}

// Main Menu  
function themeMenu() {
    if ($("#main_menu").length) {
        $("#main_menu").menuzord({
            animation: "zoom-out"
        });

        $("#mainNavbar ul.navbar-nav").supersubs({
            minWidth:    12,                                // minimum width of sub-menus in em units
            maxWidth:    27,                                // maximum width of sub-menus in em units
            extraWidth:  1                                  // extra width can ensure lines don't sometimes turn over
        }).superfish({
            delay:       400,                               // delay on mouseout
            animation:   {opacity:'show',height:'show'},    // fade-in and slide-down animation
            speed:       'fast',                            // faster animation speed
            autoArrows:  false,                             // disable generation of arrow mark-up
            dropShadows: false                              // disable drop shadows
        });
    }
}

// Main Menu stickyheader
function stickyHeader () {
	if ($('.stricky').length) {
		var strickyScrollPos = 100;
		if($(window).scrollTop() > strickyScrollPos) {
			$('.stricky').removeClass('fadeIn animated');
	      	$('.stricky').addClass('stricky-fixed fadeInDown animated');
	      	$('.scroll-to-top').fadeIn(500);
		}
		else if($(this).scrollTop() <= strickyScrollPos) {
			$('.stricky').removeClass('stricky-fixed fadeInDown animated');
	      	$('.stricky').addClass('slideIn animated');
	      	$('.scroll-to-top').fadeOut(500);
		}
	};
}


// Scroll to top
function scrollToTop() {
    if ($('.scroll-top').length) {
    	var h = $('.scroll-top');
        //Check to see if the window is top if not then display button
        $(window).scroll(function() {
            if ($(this).scrollTop() > 200) {
                h.fadeIn();
            } else {
                h.fadeOut();
            }
        });

        //Click event to scroll to top
        h.click(function() {
            $('html, body').animate({ scrollTop: 0 }, 1500);
            return false;
        });
    }
}



function initSearchModal() 
{
    if($("#searchModalInput").length)
    {
        $("#searchModalInput").keyup(function(e){
            var input, filter, container, searchResult;

            input = document.getElementById("searchModalInput");
            filter = input.value.toUpperCase();
            container = document.getElementById("searchResultsContainer");
            searchResult = container.getElementsByClassName("search-result");

            for (i = 0; i < searchResult.length; i++) 
            {
                if (searchResult[i].innerHTML.toUpperCase().indexOf(filter) > -1) 
                    searchResult[i].style.display = "";
                else 
                    searchResult[i].style.display = "none";        
            }
        });
    }
}

function spotsSearchWidget()
{
    if ($('#spotReserveBox').length) 
    {
        $("#spotReserveBox").change(function(){
            if($(this).is(":checked"))
                location.href = Croogo.basePath+"ecospots/spots/index/natural-reserve:yes";
            else
                location.href = Croogo.basePath+"spots";
        });

        $("#spotNameButton").click(function(){
            var name = $.trim($("#spotNameBox").val());
            if(name.length != 0)
                location.href = Croogo.basePath+"ecospots/spots/index/name:"+name;
        });
    }
}

function plantsSearchWidget()
{
    if ($('#plantDangerBox').length) 
    {
        $("#plantDangerBox").change(function(){
            if($(this).is(":checked"))
                location.href = Croogo.basePath+"ecospots/plants/index/in-danger:yes";
            else
                location.href = Croogo.basePath+"plant-life";
        });

        $("#plantNameButton").click(function(){
            var name = $.trim($("#plantNameBox").val());
            if(name.length != 0)
                location.href = Croogo.basePath+"ecospots/plants/index/name:"+name;
        });
    }
}

function aninmalsSearchWidget()
{
    if ($('#animalDangerBox').length) 
    {
        $("#animalDangerBox").change(function(){
            if($(this).is(":checked"))
                location.href = Croogo.basePath+"ecospots/animals/index/in-danger:yes";
            else
                location.href = Croogo.basePath+"animal-life";
        });

        $("#animalMarineBox").change(function(){
            if($(this).is(":checked"))
                location.href = Croogo.basePath+"ecospots/animals/index/marine:yes";
            else
                location.href = Croogo.basePath+"animal-life";
        });

        $("#animalNameButton").click(function(){
            var name = $.trim($("#animalNameBox").val());
            if(name.length != 0)
                location.href = Croogo.basePath+"ecospots/animals/index/name:"+name;
        });
    }
}

function initOwls()
{
    if ($('.cause-carousel').length) {
        $('.cause-carousel').owlCarousel({
            loop: true,
            items:3,
            autoplay:true,
            nav:true,
            margin:30,
            smartSpeed: 3000,
            navText: [
                '<i class="icon-left-arrow-angle"></i>',
                '<i class="icon-left-arrow-angle2"></i>'
            ],
            dots: false,
            responsive: {
                0:{
                    items:1,
                    loop:true,
                    dots:false
                },
                600:{
                    items:2,
                    loop:true,
                },
                992:{
                    items:3,
                    loop:true
                }
            }
        });
    }
}

function initRevSlider () {
    if ($('.rev_slider_wrapper #slider1').length) {
        jQuery("#slider1").revolution({
            sliderType:"standard",
            sliderLayout:"auto",
            dottedOverlay:"yes",
            delay:5000,
            navigation: {
                arrows:{enable:true,
                        left: {
                        h_align: "left",
                        v_align: "center",
                        h_offset: 60,
                        v_offset: 0
                    },
                    right: {
                        h_align: "right",
                        v_align: "center",
                        h_offset: 60,
                        v_offset: 0
                    }

                } 
            }, 
            gridwidth: [1200,],
            gridheight: [500,],
            lazyType: "none",
            parallax: {
                type: "mouse",
                origo: "slidercenter",
                speed: 2000,
                levels: [2, 3, 4, 5, 6, 7, 12, 16, 10, 50],
            },
            shadow: 0,
            spinner: "off",
            stopLoop: "off",
            stopAfterLoops: -1,
            stopAtSlide: -1,
            shuffle: "off",
            autoHeight: "off",
            hideThumbsOnMobile: "off",
            hideSliderAtLimit: 0,
            hideCaptionAtLimit: 0,
            hideAllCaptionAtLilmit: 0,
            debugMode: false,
            fallbacks: {
                simplifyAll: "off",
                nextSlideOnWindowFocus: "off",
                disableFocusListener: false,
            }
        });
    };
}

// Fact Counter
function initFactCounter() {
    if($('.fact-counter').length){
        $('.fact-counter .counter-column.animated').each(function() {
    
            var $t = $(this),
                n = $t.find(".count-text").attr("data-stop"),
                r = parseInt($t.find(".count-text").attr("data-speed"), 10);
                
            if (!$t.hasClass("counted")) {
                $t.addClass("counted");
                $({
                    countNum: $t.find(".count-text").text()
                }).animate({
                    countNum: n
                }, {
                    duration: r,
                    easing: "linear",
                    step: function() {
                        $t.find(".count-text").text(Math.floor(this.countNum));
                    },
                    complete: function() {
                        $t.find(".count-text").text(this.countNum);
                    }
                });
            }
            
        });
    }
}

function initGoogleMaps()
{
     if($('#spotMap').length)
     {
        $.getScript("https://maps.googleapis.com/maps/api/js?key="+API_KEY, function(){
            var mapCanvas = document.getElementById("spotMap");
            options.center = new google.maps.LatLng(latitude,longitude);
            var map = new google.maps.Map(mapCanvas, options);
            var marker = new google.maps.Marker({
              position: {lat: latitude, lng: longitude},
              map: map
            });
        })
     }

     if($('#distributionMap').length)
     {
        $.getScript("https://maps.googleapis.com/maps/api/js?key="+API_KEY, function(){
            var mapCanvas = document.getElementById("distributionMap");
            options.center = new google.maps.LatLng(33.897083, 35.492364); // HU is center
            var map = new google.maps.Map(mapCanvas, options);
            console.log(markers);
            for(var i = 0; i < markers.length; i++)
            {
                var marker = markers[i];

                new google.maps.Marker({
                  position: {
                    lat: marker.latitude, 
                    lng: marker.longitude
                  },
                  label: marker.spot,
                  map: map
                });
            }
        })
     }
}