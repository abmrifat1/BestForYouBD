<!DOCTYPE html>
<html lang="en">
<head>
	<title>Best In BD - An Assistant For Choose The Best Services in Bangladesh</title>
	<!-- META TAGS -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="csrf-token" content="{{ csrf_token() }}">
	<!-- FAV ICON(BROWSER TAB ICON) -->
	<link rel="shortcut icon" href="{{asset('front/images/fav.ico')}}" type="image/x-icon">
	@yield('style')
	<!-- GOOGLE FONT -->
	<link href="https://fonts.googleapis.com/css?family=Poppins%7CQuicksand:500,700" rel="stylesheet">
	<!-- FONTAWESOME ICONS -->
	<link rel="stylesheet" href="{{asset('front/css/font-awesome.min.css')}}">
	<!-- ALL CSS FILES -->
	<link href="{{asset('front/css/materialize.css')}}" rel="stylesheet">
	<link href="{{asset('front/css/style.css')}}" rel="stylesheet">
	<link href="{{asset('front/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css" />
	<!-- RESPONSIVE.CSS ONLY FOR MOBILE AND TABLET VIEWS -->
	<link href="{{asset('front/css/responsive.css')}}" rel="stylesheet">
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	<script src="js/html5shiv.js"></script>
	<script src="js/respond.min.js"></script>
	<![endif]-->
</head>

<body>
	<!--PRE LOADING-->
	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<!--TOP SEARCH SECTION-->
	<section class="bottomMenu dir-il-top-fix">
		<div class="container top-search-main">
			<div class="row">
				<div class="ts-menu">
					<!--SECTION: LOGO-->
					<div class="ts-menu-1">
						<a href="index.html"><img src="images/aff-logo.png" alt=""> </a>
					</div>
					<!--SECTION: BROWSE CATEGORY(NOTE:IT'S HIDE ON MOBILE & TABLET VIEW)-->
					<div class="ts-menu-2"><a href="/" class="t-bb">Best4You</a>
						
					</div>
					<!--<div class="ts-menu-3">
					{{--<div class="">
							<form class="tourz-search-form tourz-top-search-form" id="service_search" action="service">
								<div class="input-field">
									<input type="text" id="top-select-city" class="autocomplete">
									<label for="top-select-city">Enter city</label>
								</div>
								<div class="input-field">
									<input type="text" id="top-select-search">
									<label for="top-select-search" class="search-hotel-type">Search your services like hotel, resorts, events and more</label>
								</div>
								<div class="input-field">
									<input type="submit" value="" class="waves-effect waves-light tourz-top-sear-btn"> </div>
							</form>
						</div>--}}
					</div>-->
					<!--SECTION: REGISTER,SIGNIN AND ADD YOUR BUSINESS-->
					<div class="ts-menu-4" style="float:right;">
						<div class="v3-top-ri">
							<ul>
								<li><a href="/institutes" class="v3-menu-sign">Institutes</a> </li>
								<li><a href="/hospitals" class="v3-add-bus">Hospitals</a> </li>
								<li><a href="/hotels" class="v3-add-bus">Hotels</a> </li>
								<li><a href="/tour-places" class="v3-add-bus">Tour Places</a> </li>
								<li><a href="/discuss" class="v3-add-bus">Discuss Forum</a> </li>
							</ul>
						</div>
					</div>
					<!--MOBILE MENU ICON:IT'S ONLY SHOW ON MOBILE & TABLET VIEW-->
					<div class="ts-menu-5"><span><i class="fa fa-bars" aria-hidden="true"></i></span> </div>
					<!--MOBILE MENU CONTAINER:IT'S ONLY SHOW ON MOBILE & TABLET VIEW-->
					<div class="mob-right-nav" data-wow-duration="0.5s">
						<div class="mob-right-nav-close"><i class="fa fa-times" aria-hidden="true"></i> </div>
						<h5>Menu</h5>
						<ul class="mob-menu-icon">
							<li><a href="/">Home</a> </li>
							<li><a href="/institutes">Institutes</a> </li>
							<li><a href="/hospitals">Hospitals</a> </li>
							<li><a href="/hotels">Hotels</a> </li>
							<li><a href="/tour-places">Tour Places</a> </li>
							<li><a href="/discuss">Discuss Forum</a> </li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Content -->
	@yield('content')
	<!-- End Content -->
	<!--FOOTER SECTION-->
	<footer id="colophon" class="site-footer clearfix">
		<div id="quaternary" class="sidebar-container " role="complementary">
			<div class="sidebar-inner">
				<div class="widget-area clearfix">
					<div id="azh_widget-2" class="widget widget_azh_widget">
						<div data-section="section">
							<div class="container">
								<div class="row">
									<div class="col-md-2 offset-md-2"></div>
									<div class="col-sm-4 col-md-4 foot-logo"> <h3>Best In BD</h3>
										<p class="hasimg">Bangladesh No. 1 Local Business Directory Website.</p>
										<p class="hasimg">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. </p>
									</div>
									<!--<div class="col-sm-4 col-md-4">
										<h4>Support & Help</h4>
										<ul class="one-columns">
											<li> <a href="/about-us">About Us</a> </li>
											<li> <a href="/register">Add Listing</a> </li>
											<li> <a href="/register">Register</a> </li>
											<li> <a href="/login">Login</a> </li>
										</ul>
									</div>-->
									<div class="col-md-1 offset-md-1"></div>
									<div class="col-sm-3 col-md-3">
										<h4>Popular Services</h4>
										<ul class="one-columns">
											<li> <a href="/hospitals">Hospitals</a> </li>
											<li> <a href="/hotels">Hotels</a> </li>
											<li> <a href="/institutes">Institutes</a> </li>
											<li> <a href="/tour-placess">Tour Places</a> </li>
											<li> <a href="/discuss">Discussion Forum</a> </li>
										</ul>
									</div>
									<div class="col-md-2 offset-md-2"></div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- .widget-area -->
			</div>
			<!-- .sidebar-inner -->
		</div>
		<!-- #quaternary -->
	</footer>
	<!--COPY RIGHTS-->
	<section class="copy">
		<div class="container">
			<p>copyrights © {{ now()->year }} Best In BD Team. &nbsp;&nbsp;All rights reserved. </p>
		</div>
	</section>
	<!--SCRIPT FILES-->
	<script src="{{asset('front/js/jquery.min.js')}}"></script>
	@yield('script')
	<script src="{{asset('front/js/bootstrap.js')}}" type="text/javascript"></script>
	<script src="{{asset('front/js/materialize.min.js')}}" type="text/javascript"></script>
	<script src="{{asset('front/js/custom.js')}}"></script>
</body>
</html>