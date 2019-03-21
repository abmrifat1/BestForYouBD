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
									<div class="col-sm-4 col-md-4 foot-logo"> <h3>Best In BD</h3>
										<p class="hasimg">Bangladesh No. 1 Local Business Directory Website.</p>
										<p class="hasimg">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. </p>
									</div>
									<div class="col-sm-4 col-md-4">
										<h4>Support & Help</h4>
										<ul class="one-columns">
											<li> <a href="about-us.html">About Us</a> </li>
											<li> <a href="/register">Add Business</a> </li>
											<li> <a href="/register">Register</a> </li>
											<li> <a href="/register">Login</a> </li>
										</ul>
									</div>
									<div class="col-sm-4 col-md-4">
										<h4>Popular Services</h4>
										<ul class="one-columns">
											<li> <a href="/hospitals">Hospitals</a> </li>
											<li> <a href="/hotels">Hotels</a> </li>
											<li> <a href="/institutes">Education</a> </li>
											<li> <a href="/tours">Resorts</a> </li>
										</ul>
									</div>
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
	<!--QUOTS POPUP-->
	<section>
		<!-- GET QUOTES POPUP -->
		<div class="modal fade dir-pop-com" id="list-quo" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header dir-pop-head">
						<button type="button" class="close" data-dismiss="modal">×</button>
						<h4 class="modal-title">Get a Quotes</h4>
						<!--<i class="fa fa-pencil dir-pop-head-icon" aria-hidden="true"></i>-->
					</div>
					<div class="modal-body dir-pop-body">
						<form method="post" class="form-horizontal">
							<!--LISTING INFORMATION-->
							<div class="form-group has-feedback ak-field">
								<label class="col-md-4 control-label">Full Name *</label>
								<div class="col-md-8">
									<input type="text" class="form-control" name="fname" placeholder="" required> </div>
							</div>
							<!--LISTING INFORMATION-->
							<div class="form-group has-feedback ak-field">
								<label class="col-md-4 control-label">Mobile</label>
								<div class="col-md-8">
									<input type="text" class="form-control" name="mobile" placeholder=""> </div>
							</div>
							<!--LISTING INFORMATION-->
							<div class="form-group has-feedback ak-field">
								<label class="col-md-4 control-label">Email</label>
								<div class="col-md-8">
									<input type="text" class="form-control" name="email" placeholder=""> </div>
							</div>
							<!--LISTING INFORMATION-->
							<div class="form-group has-feedback ak-field">
								<label class="col-md-4 control-label">Message</label>
								<div class="col-md-8 get-quo">
									<textarea class="form-control"></textarea>
								</div>
							</div>
							<!--LISTING INFORMATION-->
							<div class="form-group has-feedback ak-field">
								<div class="col-md-6 col-md-offset-4">
									<input type="submit" value="SUBMIT" class="pop-btn"> </div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- GET QUOTES Popup END -->
	</section>
	<!--SCRIPT FILES-->
	<script src="{{asset('front/js/jquery.min.js')}}"></script>
	@yield('script')
	<script src="{{asset('front/js/bootstrap.js')}}" type="text/javascript"></script>
	<script src="{{asset('front/js/materialize.min.js')}}" type="text/javascript"></script>
	<script src="{{asset('front/js/custom.js')}}"></script>
</body>
</html>