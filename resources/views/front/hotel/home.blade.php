@extends('front.master')
@section('content')
	<!--TOP SEARCH SECTION-->
	<section class="bottomMenu dir-il-top-fix">
		<div class="container top-search-main">
			<div class="row">
				<div class="ts-menu">
					<!--SECTION: LOGO-->
					<div class="ts-menu-1">
						<a href="/"><img src="/img/bestforyoubd2.png" alt=""> </a>
					</div>
					<!--SECTION: BROWSE CATEGORY(NOTE:IT'S HIDE ON MOBILE & TABLET VIEW)-->
					<div class="ts-menu-2"><a href="/" class="t-bb">Best4You</a>
						
					</div>
					<!--SECTION: REGISTER,SIGNIN AND ADD YOUR BUSINESS-->
					<div class="ts-menu-6">
						<div class="v3-top-ri">
							<ul>
								<li><a href="/login" class="v3-menu-sign"><i class="fa fa-sign-in"></i> Sign In</a> </li>
								<li><a href="/register" class="v3-add-bus"><i class="fa fa-plus" aria-hidden="true"></i> Add Listing</a> </li>
							</ul>
						</div>
					</div>
					<!--MOBILE MENU ICON:IT'S ONLY SHOW ON MOBILE & TABLET VIEW-->
					<div class="ts-menu-5"><span><i class="fa fa-bars" aria-hidden="true"></i></span> </div>
					<!--MOBILE MENU CONTAINER:IT'S ONLY SHOW ON MOBILE & TABLET VIEW-->
					<div class="mob-right-nav" data-wow-duration="0.5s">
						<div class="mob-right-nav-close"><i class="fa fa-times" aria-hidden="true"></i> </div>
						<h5>Business</h5>
						<ul class="mob-menu-icon">
							<li><a href="/register">Add Business</a> </li>
							<li><a href="/register">Register</a> </li>
							<li><a href="/login">Sign In</a> </li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="dir-alp dir-pa-sp-top">
		<div class="container">
			<div class="row">
				<div class="dir-alp-tit">
					<h1>Hotel Listig View</h1>
					<ol class="breadcrumb">
						<li><a href="#">Home</a> </li>
						<li class="active">Hotels View</li>
					</ol>
				</div>
			</div>
			<div class="row">
				<div class="dir-alp-con">
					<div class="col-md-3 dir-alp-con-left">
						<div class="dir-alp-con-left-1">
							<h3>Nearby Listings(07)</h3> </div>
						<div class="dir-hom-pre dir-alp-left-ner-notb">
							<ul>
								<!--==========NEARBY LISTINGS============-->
								<li>
									<a href="listing-details.html">
										<div class="list-left-near lln1"> <img src="/front/images/services/s1.jpg" alt="" /> </div>
										<div class="list-left-near lln2">
											<h5>Property Getaways</h5> <span>City: illunois, United States</span> </div>
										<div class="list-left-near lln3"> <span>5.0</span> </div>
									</a>
								</li>
								<!--==========END NEARBY LISTINGS============-->
								<!--==========NEARBY LISTINGS============-->
								<li>
									<a href="listing-details.html">
										<div class="list-left-near lln1"> <img src="/front/images/services/s2.jpg" alt="" /> </div>
										<div class="list-left-near lln2">
											<h5>Home Trends</h5> <span>City: illunois, United States</span> </div>
										<div class="list-left-near lln3"> <span>4.0</span> </div>
									</a>
								</li>
								<!--==========END NEARBY LISTINGS============-->
								<!--==========NEARBY LISTINGS============-->
								<li>
									<a href="listing-details.html">
										<div class="list-left-near lln1"> <img src="/front/images/services/s3.jpg" alt="" /> </div>
										<div class="list-left-near lln2">
											<h5>Security System</h5> <span>City: illunois, United States</span> </div>
										<div class="list-left-near lln3"> <span>4.4</span> </div>
									</a>
								</li>
								<!--==========END NEARBY LISTINGS============-->
								<!--==========NEARBY LISTINGS============-->
								<li>
									<a href="listing-details.html">
										<div class="list-left-near lln1"> <img src="/front/images/services/s4.jpg" alt="" /> </div>
										<div class="list-left-near lln2">
											<h5>Distance Educations</h5> <span>City: illunois, United States</span> </div>
										<div class="list-left-near lln3"> <span>3.8</span> </div>
									</a>
								</li>
								<!--==========END NEARBY LISTINGS============-->
								<!--==========NEARBY LISTINGS============-->
								<li>
									<a href="listing-details.html">
										<div class="list-left-near lln1"> <img src="/front/images/services/s6.jpg" alt="" /> </div>
										<div class="list-left-near lln2">
											<h5>Chicago Automobiles</h5> <span>City: illunois, United States</span> </div>
										<div class="list-left-near lln3"> <span>5.0</span> </div>
									</a>
								</li>
								<!--==========END NEARBY LISTINGS============-->
								<!--==========NEARBY LISTINGS============-->
								<li>
									<a href="listing-details.html">
										<div class="list-left-near lln1"> <img src="/front/images/services/s7.jpg" alt="" /> </div>
										<div class="list-left-near lln2">
											<h5>Bike Service Centers</h5> <span>City: illunois, United States</span> </div>
										<div class="list-left-near lln3"> <span>5.0</span> </div>
									</a>
								</li>
								<!--==========END NEARBY LISTINGS============-->
							</ul>
						</div>
						<!--==========Sub Category Filter============-->
						<div class="dir-alp-l3 dir-alp-l-com">
							<h4>Sub Category Filter</h4>
							<div class="dir-alp-l-com1 dir-alp-p3">
								<form action="#">
									<ul>
										<li>
											<input type="checkbox" id="scf1" />
											<label for="scf1">Hortels & Resorts</label>
										</li>
										<li>
											<input type="checkbox" id="scf2" />
											<label for="scf2">Fitness Care</label>
										</li>
										<li>
											<input type="checkbox" id="scf3" />
											<label for="scf3">Educations</label>
										</li>
										<li>
											<input type="checkbox" id="scf4" />
											<label for="scf4">Property</label>
										</li>
										<li>
											<input type="checkbox" id="scf5" />
											<label for="scf5">Home Services</label>
										</li>
									</ul>
								</form> <a href="#!" class="list-view-more-btn">view more</a> </div>
						</div>
						<!--==========End Sub Category Filter============-->
						<!--==========Sub Category Filter============-->
						<div class="dir-alp-l3 dir-alp-l-com">
							<h4>Distance</h4>
							<div class="dir-alp-l-com1 dir-alp-p3">
								<form>
									<ul>
										<li>
											<input class="with-gap" name="group1" type="radio" id="ldis1" />
											<label for="ldis1">00 to 02km</label>
										</li>
										<li>
											<input class="with-gap" name="group1" type="radio" id="ldis2" />
											<label for="ldis2">02 to 05km</label>
										</li>
										<li>
											<input class="with-gap" name="group1" type="radio" id="ldis3" />
											<label for="ldis3">05 to 10km</label>
										</li>
										<li>
											<input class="with-gap" name="group1" type="radio" id="ldis4" />
											<label for="ldis4">10 to 20km</label>
										</li>
										<li>
											<input class="with-gap" name="group1" type="radio" id="ldis5" />
											<label for="ldis5">20 to 30km</label>
										</li>
									</ul>
								</form> <a href="#!" class="list-view-more-btn">view more</a> </div>
						</div>
						<!--==========End Sub Category Filter============-->
						<!--==========Sub Category Filter============-->
						<div class="dir-alp-l3 dir-alp-l-com">
							<h4>Ratings</h4>
							<div class="dir-alp-l-com1 dir-alp-p3">
								<form>
									<ul>
										<li>
											<input type="checkbox" class="filled-in" id="lr1" />
											<label for="lr1"> <span class="list-rat-ch"> <span>5.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> </span>
											</label>
										</li>
										<li>
											<input type="checkbox" class="filled-in" id="lr2" />
											<label for="lr2"> <span class="list-rat-ch"> <span>4.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </span>
											</label>
										</li>
										<li>
											<input type="checkbox" class="filled-in" id="lr3" />
											<label for="lr3"> <span class="list-rat-ch"> <span>3.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </span>
											</label>
										</li>
										<li>
											<input type="checkbox" class="filled-in" id="lr4" />
											<label for="lr4"> <span class="list-rat-ch"> <span>2.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </span>
											</label>
										</li>
										<li>
											<input type="checkbox" class="filled-in" id="lr5" />
											<label for="lr5"> <span class="list-rat-ch"> <span>1.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </span>
											</label>
										</li>
									</ul>
								</form> <a href="javascript:void(0);" class="list-view-more-btn">view more</a> </div>
						</div>
						<!--==========End Sub Category Filter============-->
					</div>
					<div class="col-md-9 dir-alp-con-right list-grid-rig-pad">
						<div class="dir-alp-con-right-1">
							<div class="row">
								<!--LISTINGS-->
								<div class="row span-none">
									@foreach($hotels as $hotel)
										<div class="col-md-6">
											<a href="/hotel/{{$hotel->id}}">
												<div class="list-mig-like-com com-mar-bot-30">
													<div class="list-mig-lc-img"> <img src="/img/hotels/{{$hotel->main_img}}" alt=""> <span class="home-list-pop-rat list-mi-pr">$720</span> </div>
													<div class="list-mig-lc-con">
														<div class="list-rat-ch list-room-rati"> <span>{{$hotel->star}}</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
														<h5>{{$hotel->name}}</h5>
														<h6>0.0 km - {{$hotel->id}}km</h6>
														<p>{{$hotel->address}}</p>
													</div>
												</div>
											</a>
										</div>
									@endforeach
									<div class="row">
										{{$hotels->links()}}
									</div>
								</div>
								<!--LISTINGS END-->
							</div>
						</div>
					</div>
				</div>
			</div>
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
@endsection