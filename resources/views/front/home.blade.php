@extends('front.master')
@section('content')
    <!--BANNER AND SERACH BOX-->
	<!--BANNER AND SERACH BOX-->
	<section class="dir3-home-head">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="dir-ho-tl">
						<ul>
							<li>
                                <a href="{{ url('/') }}"><h3>Best<span>4</span>You</h3></a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-sm-6">
					<div class="dir-ho-tr">
						<ul>
							<li><a href="javascript:void(0)"><i class="fa fa-plus" aria-hidden="true"></i> Add Listing</a> </li>
							<li><a href="{{url('/register')}}">Register</a> </li>
							<li><a href="{{url('/login')}}">Sign In</a> </li>
							<li><a href="/discuss">Discussion Forum <i class="fa fa-arrow-right"></i></a> </li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="container dir-ho-t-sp">
			<div class="row">
				<div class="dir-hr1 dir-cat-search">
					<div class="dir-ho-t-tit">
						<h1>Connect with the right<br>Service Experts</h1> 
						<p>Find B2B & B2C businesses contact addresses, phone numbers,<br> user ratings and reviews.</p>
					</div>
					<form class="cate-search-form" action="javascript:void(0)">
						<div class="input-field">
							<input type="text" id="select-search" class="autocomplete">
							<label for="select-search">Search your services</label>
						</div>
						<div class="input-field">
							<input type="text" id="select-city" class="autocomplete">
							<label for="select-city">Enter city</label>
						</div>
						<div class="input-field">
							<input type="text" id="select-category" class="autocomplete auto-category">
							<label for="select-category">Select category</label>
						</div>
						<div class="input-field">
							<input type="submit" value="search" class="waves-effect waves-light tourz-sear-btn"> </div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!--TOP SEARCH SECTION-->
	<section id="myID" class="bottomMenu hom3-top-menu">
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
						<!--SECTION: SEARCH BOX-->
						<div class="ts-menu-3">
							<div class="">
								<form class="tourz-search-form tourz-top-search-form" action="javascript:void(0)">
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
									<li><a href="{{url('/login')}}" class="v3-menu-sign"><i class="fa fa-sign-in"></i> Sign In</a> </li>
									<li><a href="javascript:void(0)" class="v3-add-bus"><i class="fa fa-plus" aria-hidden="true"></i> Add Listing</a> </li>
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
								<li><a href="{{url('/register')}}" data-toggle="modal" data-target="#register">Register</a> </li>
								<li><a href="{{url('/login')}}" data-toggle="modal" data-target="#sign-in">Sign In</a> </li>
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
		<!-- End Top search Section -->
	<!--HOME PROJECTS-->
	<section>
		<div class="land-full land-packages">
            <div class="container">
				<div class="com-title">
					<h2>Popular <span>Services</span></h2>
					<p>Explore some of the best business from around the world from our partners and friends.</p>
				</div>
               <div class="land-pack">
					<ul>
						<li>							
							<div class="land-pack-grid">
							<div class="land-pack-grid-img">
								<img src="{{ asset('front/images/services/20.png')}}" alt="">
							</div>
							<div class="land-pack-grid-text">
							<h4>Institute Listing</h4>
							<a href="{{ url('/institutes')}}" class="land-pack-grid-btn">Go Now</a></div>
							</div>
						</li>
						<li>							
							<div class="land-pack-grid">
							<div class="land-pack-grid-img">
								<img src="{{ asset('front/images/services/10.jpg')}}" alt="">
							</div>
							<div class="land-pack-grid-text">
							<h4>Hospital Listing</h4>
							<a href="{{ url('/hospital')}}" class="land-pack-grid-btn land-pack-grid-btn-blu">Go Now</a></div>
							</div>
						</li>
						<li>							
							<div class="land-pack-grid">
							<div class="land-pack-grid-img">
								<img src="{{ asset('front/images/services/p1.jpg')}}" alt="">
							</div>
							<div class="land-pack-grid-text">
							<h4>Hotel Listing</h4>
							<a href="{{ url('/hotel')}}" class="land-pack-grid-btn land-pack-grid-btn-yel">Go Now</a></div>
							</div>
						</li>
						<li>							
							<div class="land-pack-grid">
							<div class="land-pack-grid-img">
								<img src="{{ asset('front/images/services/ser5.jpg')}}" alt="">
							</div>
							<div class="land-pack-grid-text">
							<h4>Tour Place Listing</h4>
							<a href="{{ url('/tour')}}" class="land-pack-grid-btn land-pack-grid-btn-red">Go Now</a></div>
							</div>
						</li>
					</ul>
			   </div>
			</div>
		</div>		
    </section>
    <!--BEST Institutes-->
	<section class="com-padd com-padd-redu-bot">
		<div class="container dir-hom-pre-tit">
			<div class="row">
				<div class="com-title">
					<h2>Top Public & Private Universities in <span>Your Country</span></h2>
					<p>Explore some of the best institutes from around the Bangladesh for good education.</p>
				</div>
				<div class="col-md-6">
					<div>
						<!--POPULAR LISTINGS-->
                        @foreach($publicInstitutes as $institute)
                            @if($institute->ownership_type == 'Public')
                                <div class="home-list-pop">
                                    <!--POPULAR LISTINGS IMAGE-->
                                    <div class="col-md-3"> <img src="img/institutes/{{$institute->main_img}}" alt="" /> </div>
                                    <!--POPULAR LISTINGS: CONTENT-->
                                    <div class="col-md-9 home-list-pop-desc"> <a href="/institute/{{$institute->id}}"><h3>{{ $institute->name }}</h3></a>
                                        <h4>{{ $institute->departments_count }} Departments</h4>
                                        <p>{{ $institute->address }}</p> <span class="home-list-pop-rat">4.2</span>
                                        <div class="hom-list-share">
                                            <ul>
                                                <li><a href="#!"><i class="fa fa-bar-chart" aria-hidden="true"></i> 52</a> </li>
                                                <li><a href="#!"><i class="fa fa-heart-o" aria-hidden="true"></i> 32</a> </li>
                                                <li><a href="#!"><i class="fa fa-eye" aria-hidden="true"></i> 420</a> </li>
                                                <li><a href="#!"><i class="fa fa-share-alt" aria-hidden="true"></i> 570</a> </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            @endif
                        @endforeach
					</div>
				</div>
				<div class="col-md-6">
					<div>
                        <!--POPULAR LISTINGS-->
                        @foreach($privateInstitutes as $institute)
                            @if($institute->ownership_type == 'Private')
                                <div class="home-list-pop">
                                    <!--POPULAR LISTINGS IMAGE-->
                                    <div class="col-md-3"> <img src="img/institutes/{{$institute->main_img}}" alt="" /> </div>
                                    <!--POPULAR LISTINGS: CONTENT-->
                                    <div class="col-md-9 home-list-pop-desc"> <a href="/institute/{{$institute->id}}"><h3>{{ $institute->name }}</h3></a>
                                        <h4>{{ $institute->departments_count }} Departments</h4>
                                        <p>{{ $institute->address }}</p> <span class="home-list-pop-rat">4.2</span>
                                        <div class="hom-list-share">
                                            <ul>
                                                <li><a href="#!"><i class="fa fa-bar-chart" aria-hidden="true"></i> 52</a> </li>
                                                <li><a href="#!"><i class="fa fa-heart-o" aria-hidden="true"></i> 32</a> </li>
                                                <li><a href="#!"><i class="fa fa-eye" aria-hidden="true"></i> 420</a> </li>
                                                <li><a href="#!"><i class="fa fa-share-alt" aria-hidden="true"></i> 570</a> </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            @endif
                        @endforeach
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--FIND Hospital SERVICE-->
	<section class="com-padd com-padd-redu-bot1 pad-bot-red-40">
		<div class="container">
			<div class="row">
				<div class="com-title">
					<h2>Find You Hospital For Best Treatment <span>In Your Contry</span></h2>
					<p>Explore some of the best hospitals for treatment from around the Bangladesh from our partners.</p>
				</div>
				<div class="dir-hli">
					<ul>
                        <!--=====Start Hospital======-->
                        @foreach($publicHospitals as $hospital)
                            @if($hospital->ownership_type == 'Public')
                                <li class="col-md-3 col-sm-6">
                                    <a href="/hospital/{{$hospital->id}}">
                                        <div class="dir-hli-5">
                                            <div class="dir-hli-1">
                                                <div class="dir-hli-3"><img src="img/hospitals/{{$hospital->main_img}}" alt=""> </div>
                                                <div class="dir-hli-4"> </div> <img src="/img/hospitals/{{$hospital->main_img}}" alt=""> 
                                            </div>
                                            <div class="dir-hli-2">
                                                <h4>{{ $hospital->name}}</h4> 
                                                <p>{{ $hospital->address}}</p> 
                                                <a href="#" class="dir-ho-cat">Show All (940)</a>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            @endif
                        @endforeach
                        <!-- End Public -->
                        @foreach($privateHospitals as $hospital)
                            @if($hospital->ownership_type == 'Private')
                                <li class="col-md-3 col-sm-6">
                                    <a href="/hospital/{{$hospital->id}}">
                                        <div class="dir-hli-5">
                                            <div class="dir-hli-1">
                                                <div class="dir-hli-3">
                                                    <img src="img/hospitals/{{$hospital->main_img}}" alt="">
                                                </div>
                                                <div class="dir-hli-4"> 
                                                
                                                </div> 
                                                <img src="img/hospitals/{{$hospital->main_img}}" alt=""> 
                                            </div>
                                            <div class="dir-hli-2">
                                                <h4>{{ $hospital->name}}</h4> 
                                                <p>{{ $hospital->address}}</p> 
                                                <a href="#" class="dir-ho-cat">Show All (940)</a>
                                            </div>
                                        </div>
                                    </a>
                                </li>
                            @endif
                        @endforeach
						<!--=====End Hospital======-->
					</ul>
				</div>
			</div>
		</div>
	</section>
	<!--EXPLORE Hotel LISTING-->
	<section class="com-padd com-padd-redu-top">
		<div class="container">
			<div class="row">
				<div class="com-title">
					<h2>Check Hotel For Stay At Night <span>in Bangladesh</span></h2>
					<p>Explore some of the best hotel from around the Bangladesh from our partners and friends.</p>
                </div>
                @foreach ($hotels as $hotel)
                    <div class="col-md-6">
                        <a href="/hotel/{{$hotel->id}}">
                            <div class="list-mig-like-com">
                                <div class="list-mig-lc-img"> <img src="img/hotels/{{ $hotel->main_img }}" alt="" /> </div>
                                <div class="list-mig-lc-con">
                                    <div class="list-rat-ch list-room-rati"> <span>4.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>
                                    <h5>{{ $hotel->name }}</h5>
                                    <p><b>Address:</b> {{$hotel->address}}</p>
                                </div>
                            </div>
                        </a>
                    </div>
                @endforeach
                <!--
				<div class="col-md-3">
					<a href="list-lead.html">
						<div class="list-mig-like-com">
							<div class="list-mig-lc-img"> <img src="{{ asset('front/images/listing/home2.jpg')}}" alt="" /> </div>
							<div class="list-mig-lc-con list-mig-lc-con2">
								<h5>United Kingdom</h5>
								<p>18 Cities . 1454 Listings</p>
							</div>
						</div>
					</a>
				</div>
				<div class="col-md-3">
					<a href="list-lead.html">
						<div class="list-mig-like-com">
							<div class="list-mig-lc-img"> <img src="{{ asset('front/images/listing/home3.jpg')}}" alt="" /> </div>
							<div class="list-mig-lc-con list-mig-lc-con2">
								<h5>Australia</h5>
								<p>14 Cities . 1895 Listings</p>
							</div>
						</div>
					</a>
				</div>
				<div class="col-md-3">
					<a href="list-lead.html">
						<div class="list-mig-like-com">
							<div class="list-mig-lc-img"> <img src="{{ asset('front/images/listing/home4.jpg')}}" alt="" /> </div>
							<div class="list-mig-lc-con list-mig-lc-con2">
								<h5>Germany</h5>
								<p>12 Cities . 1260 Listings</p>
							</div>
						</div>
					</a>
				</div>
				<div class="col-md-3">
					<a href="list-lead.html">
						<div class="list-mig-like-com">
							<div class="list-mig-lc-img"> <img src="{{ asset('front/images/listing/home1.jpg')}}" alt="" /> </div>
							<div class="list-mig-lc-con list-mig-lc-con2">
								<h5>India</h5>
								<p>24 Cities . 4152 Listings</p>
							</div>
						</div>
					</a>
                </div>
                -->
			</div>
		</div>
	</section>
	<!--ADD BUSINESS-->
	<section class="com-padd quic-book-ser-full">
		<div class="quic-book-ser">
			<div class="quic-book-ser-inn">
				<div class="quic-book-ser-left">
					<div class="land-com-form">
						<h2>Quick service request</h2>
						<form>
							<ul>
								<li>
									<div class="row">
										<div class="input-field col s12">
											<input type="text" class="validate" required>
											<label>Name</label>
										</div>
									</div>
								</li>
								<li>
									<div class="row">
										<div class="input-field col s12">
											<input type="number" class="validate" required>
											<label>Phone number</label>
										</div>
									</div>
								</li>
								<li>
									<div class="row">
										<div class="input-field col s12">
											<input type="email" class="validate" required>
											<label>Email id</label>
										</div>
									</div>
								</li>
								<li>
									<div class="row">
										<div class="input-field col s12">
											<input type="text" id="select-category1" class="autocomplete auto-category">
											<label for="select-category1">Select your Service</label>
										</div>
									</div>
								</li>
								<li>
									<div class="row">
										<div class="input-field col s12">
											<input type="submit" value="Send Request">
										</div>
									</div>
								</li>
								<li><p>Praesent felis velit, maximus at dapibus semper, fermentum sagittis diam. <a href="#">Privacy Policy</a></p></li>
							</ul>
						</form>
					</div>
				</div>
				<div class="quic-book-ser-right">
					<div class="hom-cre-acc-left">
						<h3>What service do you need? <span>Business Directory</span></h3>
						<p>Tell us more about your requirements so that we can connect you to the right service provider.</p>
						<ul>
							<li> <img src="images/icon/7.png" alt="">
								<div>
									<h5>Tell us more about your requirements</h5>
									<p>Imagine you have made your presence online through a local online directory, but your competitors have..</p>
								</div>
							</li>
							<li> <img src="images/icon/5.png" alt="">
								<div>
									<h5>We connect with right service provider</h5>
									<p>Advertising your business to area specific has many advantages. For local businessmen, it is an opportunity..</p>
								</div>
							</li>
							<li> <img src="images/icon/6.png" alt="">
								<div>
									<h5>Happy with our service</h5>
									<p>Your local business too needs brand management and image making. As you know the local market..</p>
								</div>
							</li>
						</ul>
					</div>
				</div>
				
			</div>
		</div>
	</section>
	
	<!--CREATE FREE ACCOUNT-->
	<section class="com-padd sec-bg-white">
		<div class="container">
			<div class="row">
				<div class="com-title">
					<h2>Create a free <span>Account</span></h2>
					<p>Explore some of the best tips from around the world from our partners and friends.</p>
				</div>
				<div class="col-md-6">
					<div class="hom-cre-acc-left">
						<h3>A few reasons you’ll love Online <span>Business Directory</span></h3>
						<p>5 Benefits of Listing Your Business to a Local Online Directory</p>
						<ul>
							<li> <img src="{{ asset('front/images/icon/7.png')}}" alt="">
								<div>
									<h5>Enhancing Your Business</h5>
									<p>Imagine you have made your presence online through a local online directory, but your competitors have..</p>
								</div>
							</li>
							<li> <img src="{{ asset('front/images/icon/5.png')}}" alt="">
								<div>
									<h5>Advertising Your Business</h5>
									<p>Advertising your business to area specific has many advantages. For local businessmen, it is an opportunity..</p>
								</div>
							</li>
							<li> <img src="{{ asset('front/images/icon/6.png')}}" alt="">
								<div>
									<h5>Develop Brand Image</h5>
									<p>Your local business too needs brand management and image making. As you know the local market..</p>
								</div>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-md-6">
					<div class="hom-cre-acc-left hom-cre-acc-right">
						<form>
							<div class="row">
								<div class="input-field col s12">
									<input id="acc-name" type="text" class="validate">
									<label for="acc-name">Name</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s12">
									<input id="acc-mob" type="number" class="validate">
									<label for="acc-mob">Mobile</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s12">
									<input id="acc-mail" type="email" class="validate">
									<label for="acc-mail">Email</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s12">
									<input id="acc-pass" type="password" class="validate">
									<label for="acc-pass">Password</label>
								</div>
							</div>
							<div class="row">
								<div class="col s12 hom-cr-acc-check">
									<input type="checkbox" id="test5" />
									<label for="test5">By signing up, you agree to the Terms and Conditions and Privacy Policy. You also agree to receive product-related emails.</label>
								</div>
							</div>
							<div class="row">
								<div class="input-field col s12"> <a class="waves-effect waves-light btn-large full-btn" href="#!">Submit Now</a> </div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--MOBILE APP-->
	<section class="web-app com-padd">
		<div class="container">
			<div class="row">
				<div class="col-md-6 web-app-img"> <img src="{{ asset('front/images/mobile.png')}}" alt="" /> </div>
				<div class="col-md-6 web-app-con">
					<h2>Looking for the Best Service Provider? <span>Get the App!</span></h2>
					<ul>
						<li><i class="fa fa-check" aria-hidden="true"></i> Find nearby listings</li>
						<li><i class="fa fa-check" aria-hidden="true"></i> Easy service enquiry</li>
						<li><i class="fa fa-check" aria-hidden="true"></i> Listing reviews and ratings</li>
						<li><i class="fa fa-check" aria-hidden="true"></i> Manage your listing, enquiry and reviews</li>
					</ul> <span>We'll send you a link, open it on your phone to download the app</span>
					<form>
						<ul>
							<li>
								<input type="text" placeholder="+01" /> </li>
							<li>
								<input type="number" placeholder="Enter mobile number" /> </li>
							<li>
								<input type="submit" value="Get App Link" /> </li>
						</ul>
					</form>
					<a href="#"><img src="{{ asset('front/images/android.png')}}" alt="" /> </a>
					<a href="#"><img src="{{ asset('front/images/apple.png')}}" alt="" /> </a>
				</div>
			</div>
		</div>
	</section>
@endsection