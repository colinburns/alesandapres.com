$(function(){
	'use-strict';

	// sidenav control right
	$(".sidenav-control-right").sideNav({
		
		edge: 'right',
		closeOnClick: false

	});

	// panel collapse icon
	$(document).on("click",".collapsible-header",function(){
	    $(this).find('span i').toggleClass('fa-chevron-down')
	});

	// slick slider
	$('.slider-slick').slick({
		
		dots: true,
		infinite: true,
		speed: 300,
		slidesToShow: 1,
		autoplay: true

	});
	
	// faq collapse icon
	$(document).on("click",".faq-collapsible",function(){
	    $(this).find('i').toggleClass('fa-minus')
	});

	// testimonial
	$("#testimonial").owlCarousel({
 
      	slideSpeed : 300,
      	paginationSpeed : 400,
      	singleItem: true,

  	});

	// tabs
	$('ul.tabs').tabs();

    $(document).ready(function(){
        $('i.back-one').click(function(){
            parent.history.back();
            return false;
        });
    });

    /*********
	 * STAR RATING CODE
     */
  	$(document).on("click touchstart", ".star-rating", function(){
		var StarRating = $(this).data('rating-position');
		var BeerID = $(this).data('beer-id');

		var Link = $('body').data('url')+'/IncrementStarRating';

		$.ajax({
			type: "POST",
			url: Link,
			data: {'StarRating':StarRating, 'BeerID':BeerID},
			success: function(data,status) {
				$('#BeerStarRating-'+BeerID).html(data);
			},
			error: function(data) {
				alert('An error occurred');
			}

		});

	});

});