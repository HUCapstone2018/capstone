// instance of fuction while Window Load event
$(window).load(function () {
	handlePreloader();
});

$(document).ready(function(){
	scrollToTop();
	themeMenu();
	$("#searchModalInput").keyup(function(e){
		searchModal();
	});
});

// instance of fuction while Window Scroll event
$(window).scroll(function () {	
	stickyHeader();
	factCounter();
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



function searchModal() 
{
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
}