$(document).ready(function() {
	
	$('a[href*=#]').click(function() {
	    if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'')
	    && location.hostname == this.hostname) {
	      var $target = $(this.hash);
	      $target = $target.length && $target
	      || $('[name=' + this.hash.slice(1) +']');
	      if ($target.length) {
	        var targetOffset = $target.offset().top;
	        $('html,body')
	        .animate({scrollTop: targetOffset}, {duration: 1000, easing: 'easeInOutExpo'});
	       return false;
	      }
	    }
	  });
	
	// Values in Forms
	$('#subForm .email').watermark();
	$('#name-field').watermark();
	$('#email-field').watermark();
	$('#phone-field').watermark();
	$('#company-field').watermark();
	$('#comments-field').watermark();
	$('#author').watermark();
	$('#email').watermark();
	$('#url').watermark();
	$('#comment').watermark();

	$('.applicant-form #first-name').watermark();
	$('.applicant-form #last-name').watermark();
	$('.applicant-form #city').watermark();
	$('.applicant-form #phone').watermark();
	$('.applicant-form #email').watermark();
	$('.applicant-form #position').watermark();

	$('.apply-form #first-name').watermark();
	$('.apply-form #last-name').watermark();
	$('.apply-form #city').watermark();
	$('.apply-form #phone').watermark();
	$('.apply-form #email').watermark();
	$('.apply-form #company-name').watermark();
	$('.apply-form #website-url').watermark();

	//Form Validation
	$(".theme-form").each(function() {
		$(this).validate();
	});
	
	// Display Contact Form
	$(".contact-link").click(function(){
		$(".contact-form").show();
		return false;
	})
	
	$(".job-link").click(function(){
		$(".job-form").show();
		return false;
	})
	
	$(".scroll-top").click(function(){
		$('.sign-up-form input[type="email"]').stop().css("background-color", "#cbeefa");
	})
	
	/* Lock Form in Scroll */
	$('.down-tab, .reasons-wrap .theme-blurb h3 span').waypoint(function(event, direction) {

	   if (direction === 'down') {
	      $('.lock-header').animate({
		    top: '0'
		  }, 200, function() {
		    // Animation complete.
		  });
	   }
	   else {
	      $('.lock-header').animate({
		    top: '-70px'
		  }, 200, function() {
		    // Animation complete.
		  });
	   }
	});
	
	
	
});