<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>deals</title>

  <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,700' rel='stylesheet' type='text/css'>
  <link href="css/font-awesome.min.css" rel="stylesheet">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">
  <link href="css/flexslider.css" rel="stylesheet">
  <link href="css/style-sheet.css" rel="stylesheet">
  <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>

  </script>

  </head>
  <body class="tm-gray-bg">
  	<!-- Header -->
  	<div class="tm-header">
  		<div class="container">
  			<div class="row">
  				<div class="col-lg-6 col-md-4 col-sm-3 tm-site-name-container">
  				</div>
	  			<div class="col-lg-6 col-md-8 col-sm-9">
	  				<div class="mobile-menu-icon">
		              <i class="fa fa-bars"></i>
		            </div>
	  				<nav class="tm-nav">
					</nav>
	  			</div>
  			</div>
  		</div>
  	</div>

	<!-- Banner -->
	<section class="tm-banner">
		<!-- Flexslider -->
		<div class="flexslider flexslider-banner">
		  <ul class="slides">
		    <li>
			    <div class="tm-banner-inner">
	
				</div>
				<img src="img/banner-1.jpg" alt="Image" />
		    </li>
		    <li>
			    <div class="tm-banner-inner">
					
				</div>
		      <img src="img/banner-2.jpg" alt="Image" />
		    </li>
		    <li>
			    <div class="tm-banner-inner">
				
				</div>
		      <img src="img/banner-3.jpg" alt="Image" />
		    </li>
		  </ul>
		</div>
	</section>

	<!-- gray bg -->
	<section class="container tm-home-section-1" id="more">
		<div class="row">
			<div class="col-lg-4 col-md-4 col-sm-6">
				<!-- Nav tabs -->
				<div class="tm-home-box-1">
					<ul class="nav nav-tabs tm-white-bg" role="tablist" id="hotelCarTabs">
					    <li role="presentation" class="active">
					    	<a href="#hotel" aria-controls="hotel" role="tab" data-toggle="tab">Deals</a>
					    </li>
					</ul>

					<!-- Tab panes -->
					<div class="tab-content">
					    <div role="tabpanel" class="tab-pane fade in active tm-white-bg" id="hotel">
					    	<div class="tm-search-box effect2">
								<form action="/" method="post" class="hotel-search-form">
									<div class="tm-form-inner">

										<div class="form-group">
							            	 <input id="tags" name="destinationCity" type='text' class="form-control" placeholder="Find City" value="${city}">
							          	</div>
							          	<div class="form-group">
							                <div class='input-group' id='datetimepicker1'>
							                    <input id="datepicker1" type='text' name="minTripStartDate" class="form-control" placeholder="Check-in Date" value="${from}"/>
							                    <span class="input-group-addon">
							                        <span class="fa fa-calendar"></span>
							                    </span>
							                </div>
							            </div>
							          	<div class="form-group">
							                <div class='input-group' id='datetimepicker2'>
							                    <input id="datepicker2" type='text' name="maxTripStartDate" class="form-control" placeholder="Check-out Date" value="${to}"/>
							                    <span class="input-group-addon">
							                        <span class="fa fa-calendar"></span>
							                    </span>
							                </div>
							            </div>

									</div>
						            <div class="form-group tm-blue-gradient-bg text-center">
						            	<button type="submit" name="submit" class="tm-gray-btn">Search</button>
						            </div>
								</form>
							</div>
					    </div>
					</div>
				</div>
			</div>
			</section>
			<section>
			  <#list hotels as hotel>

                 <div class="row" style="margin-left:0;">
                 				<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                 					<div class="tm-tours-box-1">
                 						<div class="tm-tours-box-1-info">
                 							<div class="tm-tours-box-1-info-left">
                 							    <img src="${hotel.getHotelInfo().getHotelImageUrl()}" alt="image" class="img-responsive">
                 								<p class="text-uppercase margin-bottom-20">${hotel.getHotelInfo().getHotelName()}</p>
                 								<p class="gray-text">${hotel.getHotelInfo().getTravelStartDate()}</p>
                 							</div>
                 							<div class="tm-tours-box-1-info-right">
                 								<p class="gray-text tours-1-description">${hotel.getHotelInfo().getDescription()}</p>
                 							</div>
                 						</div>
                 						<div class="tm-tours-box-1-link">
                 							<div class="tm-tours-box-1-link-left">
                 								Duration: ${hotel.getOfferDateRange().getLengthOfStay()} days
                 							</div>
                 							<a href="#" class="tm-tours-box-1-link-right">
                 								${hotel.getHotelPricingInfo().getTotalPriceValue()} ${hotel.getHotelPricingInfo().getCurrency()}
                 							</a>
                 						</div>
                 					</div>
                 				</div>
                 			</div>
                 		</div>
              </#list>

	        </section>


	      		<!-- jQuery -->
  	<script type="text/javascript" src="js/moment.js"></script>							<!-- moment.js -->
	<script type="text/javascript" src="js/bootstrap.min.js"></script>					<!-- bootstrap js -->
	<script type="text/javascript" src="js/bootstrap-datetimepicker.min.js"></script>	<!-- bootstrap date time picker js, http://eonasdan.github.io/bootstrap-datetimepicker/ -->
	<script type="text/javascript" src="js/jquery.flexslider-min.js"></script>
<!--
	<script src="js/froogaloop.js"></script>
	<script src="js/jquery.fitvid.js"></script>
-->
   	<script type="text/javascript" src="js/scripts.js"></script>      		<!-- Templatemo Script -->
	<script>
		// HTML document is loaded. DOM is ready.
		$(function() {

			$('#hotelCarTabs a').click(function (e) {
			  e.preventDefault()
			  $(this).tab('show')
			})
		});

		// Load Flexslider when everything is loaded.
		$(window).load(function() {
			// Vimeo API nonsense

/*
			  var player = document.getElementById('player_1');
			  $f(player).addEvent('ready', ready);

			  function addEvent(element, eventName, callback) {
			    if (element.addEventListener) {
			      element.addEventListener(eventName, callback, false)
			    } else {
			      element.attachEvent(eventName, callback, false);
			    }
			  }

			  function ready(player_id) {
			    var froogaloop = $f(player_id);
			    froogaloop.addEvent('play', function(data) {
			      $('.flexslider').flexslider("pause");
			    });
			    froogaloop.addEvent('pause', function(data) {
			      $('.flexslider').flexslider("play");
			    });
			  }
*/



			  // Call fitVid before FlexSlider initializes, so the proper initial height can be retrieved.
/*

			  $(".flexslider")
			    .fitVids()
			    .flexslider({
			      animation: "slide",
			      useCSS: false,
			      animationLoop: false,
			      smoothHeight: true,
			      controlNav: false,
			      before: function(slider){
			        $f(player).api('pause');
			      }
			  });
*/




//	For images only
		    $('.flexslider').flexslider({
			    controlNav: false
		    });


	  	});
	</script>
 </body>
 </html>