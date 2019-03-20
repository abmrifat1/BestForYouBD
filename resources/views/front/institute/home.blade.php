@extends('front.master')
@section('content')
	<!--TOP SEARCH SECTION-->
	<section class="bottomMenu dir-il-top-fix">
		<div class="container top-search-main">
			<div class="row">
				<div class="ts-menu">
					<!--SECTION: LOGO-->
					<div class="ts-menu-1">
						<a href="{{ url('/') }}"><img src="images/aff-logo.png" alt=""> </a>
					</div>
					<!--SECTION: BROWSE CATEGORY(NOTE:IT'S HIDE ON MOBILE & TABLET VIEW)-->
					<div class="ts-menu-2"><a href="{{ url('/') }}" class="t-bb">Best4You</a>
						
					</div>
					<div class="ts-menu-3">
						<div class="">
							<form class="tourz-search-form tourz-top-search-form">
								<div class="input-field">
									<input type="text" id="top-select-city" class="autocomplete">
									<label for="top-select-city">Enter city</label>
								</div>
								<div class="input-field">
									<input type="text" id="top-select-search" class="autocomplete">
									<label for="top-select-search" class="search-hotel-type">Search your services like hotel, resorts, events and more</label>
								</div>
								<div class="input-field">
									<input type="submit" value="" class="waves-effect waves-light tourz-top-sear-btn"> </div>
							</form>
						</div>
					</div>
					<!--SECTION: REGISTER,SIGNIN AND ADD YOUR BUSINESS-->
					<div class="ts-menu-4">
						<div class="v3-top-ri">
							<ul>
								<li><a href="login.html" class="v3-menu-sign"><i class="fa fa-sign-in"></i> Sign In</a> </li>
								<li><a href="db-listing-add.html" class="v3-add-bus"><i class="fa fa-plus" aria-hidden="true"></i> Add Listing</a> </li>
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
							<li><a href="price.html">Add Business</a> </li>
							<li><a href="register.html">Register</a> </li>
							<li><a href="login.html">Sign In</a> </li>
						</ul>
						<h5>All Categories</h5>
						<ul>
							<li><a href="list.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Help Services</a> </li>
							<li><a href="list.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Appliances Repair & Services</a> </li>
							<li><a href="list.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Furniture Dealers</a> </li>
							<li><a href="list.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Packers and Movers</a> </li>
							<li><a href="list.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Pest Control </a> </li>
							<li><a href="list.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Solar Product Dealers</a> </li>
							<li><a href="list.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Interior Designers</a> </li>
							<li><a href="list.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Carpenters</a> </li>
							<li><a href="list.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Plumbing Contractors</a> </li>
							<li><a href="list.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Modular Kitchen</a> </li>
							<li><a href="list.html"><i class="fa fa-angle-right" aria-hidden="true"></i> Internet Service Providers</a> </li>
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
					<h1>Institute Lists in Bangladesh</h1>
					<ol class="breadcrumb">
						<li><a href="/">Home</a> </li>
						<li class="active">Institutes List</li>
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
										<div class="list-left-near lln1"> <img src="front/images/services/s1.jpg" alt="" /> </div>
										<div class="list-left-near lln2">
											<h5>Property Getaways</h5> <span>City: illunois, United States</span> </div>
										<div class="list-left-near lln3"> <span>5.0</span> </div>
									</a>
								</li>
								<!--==========END NEARBY LISTINGS============-->
								<!--==========NEARBY LISTINGS============-->
								<li>
									<a href="listing-details.html">
										<div class="list-left-near lln1"> <img src="front/images/services/s2.jpg" alt="" /> </div>
										<div class="list-left-near lln2">
											<h5>Home Trends</h5> <span>City: illunois, United States</span> </div>
										<div class="list-left-near lln3"> <span>4.0</span> </div>
									</a>
								</li>
								<!--==========END NEARBY LISTINGS============-->
								<!--==========NEARBY LISTINGS============-->
								<li>
									<a href="listing-details.html">
										<div class="list-left-near lln1"> <img src="front/images/services/s3.jpg" alt="" /> </div>
										<div class="list-left-near lln2">
											<h5>Security System</h5> <span>City: illunois, United States</span> </div>
										<div class="list-left-near lln3"> <span>4.4</span> </div>
									</a>
								</li>
								<!--==========END NEARBY LISTINGS============-->
								<!--==========NEARBY LISTINGS============-->
								<li>
									<a href="listing-details.html">
										<div class="list-left-near lln1"> <img src="front/images/services/s4.jpg" alt="" /> </div>
										<div class="list-left-near lln2">
											<h5>Distance Educations</h5> <span>City: illunois, United States</span> </div>
										<div class="list-left-near lln3"> <span>3.8</span> </div>
									</a>
								</li>
								<!--==========END NEARBY LISTINGS============-->
								<!--==========NEARBY LISTINGS============-->
								<li>
									<a href="listing-details.html">
										<div class="list-left-near lln1"> <img src="front/images/services/s5.jpg" alt="" /> </div>
										<div class="list-left-near lln2">
											<h5>Fresh Cake Shops</h5> <span>City: illunois, United States</span> </div>
										<div class="list-left-near lln3"> <span>4.8</span> </div>
									</a>
								</li>
								<!--==========END NEARBY LISTINGS============-->
								<!--==========NEARBY LISTINGS============-->
								<li>
									<a href="listing-details.html">
										<div class="list-left-near lln1"> <img src="front/images/services/s6.jpg" alt="" /> </div>
										<div class="list-left-near lln2">
											<h5>Chicago Automobiles</h5> <span>City: illunois, United States</span> </div>
										<div class="list-left-near lln3"> <span>5.0</span> </div>
									</a>
								</li>
								<!--==========END NEARBY LISTINGS============-->
								<!--==========NEARBY LISTINGS============-->
								<li>
									<a href="listing-details.html">
										<div class="list-left-near lln1"> <img src="front/images/services/s7.jpg" alt="" /> </div>
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
								</form> <a href="#!" class="list-view-more-btn">view more</a> </div>
						</div>
						<!--==========End Sub Category Filter============-->
					</div>
					<div class="col-md-9 dir-alp-con-right">
						<div class="dir-alp-con-right-1">
							<div class="row">
								<!--LISTINGS-->
								@foreach($institutes as $institute)
									<div class="home-list-pop list-spac">
										<!--LISTINGS IMAGE-->
										<div class="col-md-3 list-ser-img"> <img src="img/institutes/{{ $institute->main_img }}" alt="" /> </div>
										<!--LISTINGS: CONTENT-->
										<div class="col-md-9 home-list-pop-desc inn-list-pop-desc"> <a href="{{ url('/institute/'.$institute->id)}}"><h3>{{ $institute->name }}</h3></a>
											<h4>Express Avenue Mall, Los Angeles</h4>
											<p><b>Address:</b> {{ $institute->address }}, Bangladesh.</p>
											<div class="list-number">
												<ul>
													<li><img src="images/icon/phone.png" alt=""> {{ $institute->phone }}</li>
													<li><img src="images/icon/mail.png" alt=""> {{ $institute->email }}</li>
												</ul>
											</div> <span class="home-list-pop-rat">4.2</span>
											<div class="list-enqu-btn">
												<ul>
													<li><a href="#!"><i class="fa fa-star-o" aria-hidden="true"></i> Write Review</a> </li>
													<li><a href="#!"><i class="fa fa-commenting-o" aria-hidden="true"></i> Send SMS</a> </li>
													<li><a href="#!"><i class="fa fa-phone" aria-hidden="true"></i> Call Now</a> </li>
													<li><a href="#!" data-dismiss="modal" data-toggle="modal" data-target="#list-quo"><i class="fa fa-usd" aria-hidden="true"></i> Get Quotes</a> </li>
												</ul>
											</div>
										</div>
									</div>
									@endforeach
									
								<!--LISTINGS END-->
							</div>
							<div class="row">
								{{$institutes->links()}}
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
@endsection