//Tooltips

$(document).ready(function(){
    $(".tip-top").tooltip({
        placement : 'top'
    });
    $(".tip-right").tooltip({
        placement : 'right'
    });
    $(".tip-bottom").tooltip({
        placement : 'bottom'
    });
    $(".tip-left").tooltip({
        placement : 'left'
    });
});


//Hire Me Button

$(".btn-hire").click(function (e) {
    $('.hire-me-overlay').toggleClass('visible');
    e.stopPropagation()
});  

$(document).ready(function () {
			  $(".btn-hire").on("click", function () {
				    $(this).toggleClass("active");
			  });
              });


//Navbar Toggle Animation

$(document).ready(function () {
			  $(".navbar-toggle").on("click", function () {
				    $(this).toggleClass("active");
			  });
		});



//Image Signup

 function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#blah')
                        .attr('src', e.target.result)
                        .width(80)
                        .height(80);
                        
                };

                reader.readAsDataURL(input.files[0]);
            }
        }


//Missions

   $(document).ready(function () {
			  $(".featured-mission").on("hover", function () {
				    $(this).toggleClass("active");
			  });
		});

         $(".featured-mission").click(function (e) {
    $('.featured-mission-more').toggleClass('visible');
    e.stopPropagation()
});



//Homepage Form

 
$(".get-started-btn, .btn-signup").click(function (e) {
    $('.header-content').toggleClass('up');
    e.stopPropagation()
});
        
$('.btn-signup').click(function(e){    
    $('#buttons').fadeOut('slow', function(){
        $('#form-one').fadeIn('slow');
    });
});
        
$('.btn-signup').click(function(e){    
    $('.btn-signup').fadeOut('slow', function(){
        $('#form-one').fadeIn('slow');
    });
});
        
        
        
$('.get-started-btn').click(function(e){    
    $('#buttons').fadeOut('slow', function(){
        $('#form-one').fadeIn('slow');
    });
});
        
$('.get-started-btn').click(function(e){    
    $('.btn-signup').fadeOut('slow', function(){
        $('#form-one').fadeIn('slow');
    });
});
        
        
$('.btn-begin').click(function(e){    
    $('#form-one').fadeOut('slow', function(){
        $('#form-two').fadeIn('slow');
    });
});
        
$('.btn-last-part').click(function(e){    
    $('#form-two').fadeOut('slow', function(){
        $('#form-three').fadeIn('slow');
    });
});
        

$( "#inspiration-btn" ).click(function() {
  $( "#inspiration" ).fadeToggle( "slow" );
             
});
   
        
$( "#discussion-btn" ).click(function() {
    $( "#discussions" ).fadeToggle( "slow" );
});

        
$( "#missions-btn" ).click(function() {
    $( "#missions" ).fadeToggle( "slow" );
});


$('#funded').animateNumber({ number: 37000 },10000);
        