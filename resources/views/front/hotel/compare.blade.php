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
					<div class="ts-menu-2"><a href="/" class="t-bb">Best In BD</a>
						
					</div>
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
	<div class="container" style="margin-top:60px;">
		<div class="row" style="color: #000000;border: 1px solid #dedede">
			<div class="offset-3 col-md-3"></div>
			<div class="col-md-8">
					<h2>We're providing the result based on following rules.</h2>
					<ul class="list-group">
						<a href="#"><li class="list-group-item">Ranking of Bangladesh Hotels</li></a>
						<li class="list-group-item">Personal Opinions</li>
						<li class="list-group-item">We're not best but we're trying to give best information</li>
						<li class="list-group-item">We're providing many information bellow Please See All and Choose</li>
					</ul>
			</div>
			<div class="offset-1 col-md-1"></div>
		</div>
	</div>
	{{--<section>
		<div class="v3-list-ql">
			<div class="container">
				<div class="row">
					<div class="v3-list-ql-inn">
						<ul>
							<li class="active"><a href="#ld-abour"><i class="fa fa-user"></i> About</a>
							</li>
							<li><a href="#ld-ser"><i class="fa fa-cog"></i> Services</a>
							</li>
							<li><a href="#ld-gal"><i class="fa fa-photo"></i> Gallery</a>
							</li>
							<li><a href="#ld-roo"><i class="fa fa-ticket"></i> Departments</a>
							</li>
							<!--<li><a href="#ld-vie"><i class="fa fa-street-view"></i> 360 View</a>
							</li>-->
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--LISTING DETAILS-->
	<section class="pg-list-1">
		<div class="container">
			<div class="row">
				<div class="pg-list-1-left"> <h3>{{$institute->name}}</h3>					
					<p><b>Address:</b> {{$institute->address}}, Bangladesh.</p>
					<div class="list-number pag-p1-phone">
						<ul>
							<li><i class="fa fa-phone" aria-hidden="true"></i> {{$institute->phone}}</li>
							<li><i class="fa fa-envelope"></i> {{$institute->email}}</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>--}}
	@foreach($hotels as $i=>$hotel)
	<section class="list-pg-bg">
			<div class="container">
				<div class="row">
					<div class="com-padd">
						<div class="list-pg-lt list-page-com-p">
							<!--LISTING DETAILS: LEFT PART 1-->
							<div class="pglist-p1 pglist-bg pglist-p-com" id="ld-abour">
								<div class="pglist-p-com-ti">
										<h3><span style="font-weight:bold;color:darkgreen">@if ($loop->first) <i class="fa fa-star"></i> @endif {{$i+1}}: </span>About</span> {{$hotel->name}}</h3> </div>
								<div class="list-pg-inn-sp">
									<p>{{$hotel->description}}</p>
								</div>
							</div>
							<!--END LISTING DETAILS: LEFT PART 1-->
							<!--LISTING DETAILS: LEFT PART 2-->
							<div class="pglist-p2 pglist-bg pglist-p-com" id="ld-ser">
								<div class="pglist-p-com-ti">
									<h3><span>Services</span> Offered</h3> </div>
								<div class="list-pg-inn-sp">
									<div class="row pg-list-ser">
										<ul>
											@if($hotel->restaurant)
											<li class="col-md-4">
												<div class="pg-list-ser-p1"><img src="/front/images/services/grace-bay-dining.jpg" alt="" /> </div>
												<div class="pg-list-ser-p2">
													<h4>Restaurant</h4> </div>
											</li>
											@endif
											@if($hotel->cafe)
											<li class="col-md-4">
												<div class="pg-list-ser-p1"><img src="/front/images/services/Party-Center.jpg" alt="" /> </div>
												<div class="pg-list-ser-p2">
													<h4>Party Center</h4> </div>
											</li>
											@endif
											@if($hotel->cafe)
											<li class="col-md-4">
												<div class="pg-list-ser-p1"><img src="/front/images/services/cafe.jpg" alt="" /> </div>
												<div class="pg-list-ser-p2">
													<h4>Hostel</h4> </div>
											</li>
											@endif
											
										</ul>
									</div>
								</div>
							</div>
							<!--END LISTING DETAILS: LEFT PART 2-->
							<!--LISTING DETAILS: LEFT PART 3-->
							<div class="pglist-p3 pglist-bg pglist-p-com" id="ld-gal">
								<div class="pglist-p-com-ti">
									<h3><span>Photo</span> Gallery</h3> </div>
								<div class="list-pg-inn-sp">
									<div id="myCarousel" class="carousel slide" data-ride="carousel">
										<!-- Indicators -->
										<ol class="carousel-indicators">
											<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
											<li data-target="#myCarousel" data-slide-to="1"></li>
											<li data-target="#myCarousel" data-slide-to="2"></li>
										</ol>
										<!-- Wrapper for slides -->
										<div class="carousel-inner">
											<div class="item active"> <img src="/img/hotels/{{$hotel->main_img}}" alt="{{$hotel->name}}" style="height:400px !important;width:100%"> </div>
											<div class="item"> <img src="/img/hotels/{{$hotel->gallery_img_1}}" alt="{{$hotel->name}}" style="height:400px !important;width:100%"> </div>
											<div class="item"> <img src="/img/hotels/{{$hotel->gallery_img_2}}" alt="{{$hotel->name}}" style="height:400px !important;width:100%"> </div>
										</div>
										<!-- Left and right controls -->
										<a class="left carousel-control" href="#myCarousel" data-slide="prev"> <i class="fa fa-angle-left list-slider-nav" aria-hidden="true"></i> </a>
										<a class="right carousel-control" href="#myCarousel" data-slide="next"> <i class="fa fa-angle-right list-slider-nav list-slider-nav-rp" aria-hidden="true"></i> </a>
									</div>
								</div>
							</div>
							<!--END LISTING DETAILS: LEFT PART 3-->
							<!--LISTING DETAILS: LEFT PART 4-->
							<div class="pglist-p3 pglist-bg pglist-p-com" id="ld-roo">
								<div class="pglist-p-com-ti">
									<h3><span>Hotel</span> Rooms</h3> </div>
								<div class="list-pg-inn-sp">
									@foreach ($hotel->hotel_rooms as $room)
										<div class="home-list-pop list-spac list-spac-1 list-room-mar-o">
											<!--LISTINGS IMAGE-->
											<div class="col-md-3"> <img src="/front/images/hotel_room.png" alt="" style="height:100%;width:100%"> </div>
											<!--LISTINGS: CONTENT-->
											<div class="col-md-9 home-list-pop-desc inn-list-pop-desc list-room-deta"> <a href="#!"><h3>
													@php 
													foreach ($rooms as $mainRoom) {
														if($mainRoom->id == $room->room_type_id){
															echo $mainRoom->RomeName;
														}
													}
													@endphp
											</h3></a>
												<div class="list-room-type list-rom-ami">
													<ul>
														<li>
															<p><b>Amenities:</b> </p>
														</li>
														<li><img src="/front/images/icon/dbl12.png" alt=""> Self Check In: {{$room->self_check_in}}</li>
														<li><img src="/front/images/icon/a9.png" alt=""> Bed Type: {{$room->bedtype}}</li>
														<li><img src="/front/images/icon/a10.png" alt=""> Total Bed: {{$room->bedNumber}} </li>
														<li><img src="/front/images/icon/dbl7.png" alt=""> Bedroom Comforts: {{$room->bedroom_comforts}}</li>
														<li><img src="/front/images/icon/a5.png" alt=""> Bathroom: {{$room->bathroom}}</li>
														<li><img src="/front/images/icon/a3.png" alt=""> Sofa: {{$room->sofa}}</li>
														<li><img src="/front/images/icon/tz-arrow.png" alt=""> Cofe Maker: {{$room->coffee_maker}}</li>
														<li><img src="/front/images/icon/dbl6.png" alt=""> Hair Dryer: {{$room->hair_dryer}}</li>
														<li><img src="/front/images/icon/a9.png" alt=""> Iron: {{$room->iron}}</li>
														<li><img src="/front/images/icon/tz-arrow.png" alt=""> Heating: {{$room->heating}}</li>
														<li><img src="/front/images/icon/a4.png" alt=""> Air Conditioning: {{$room->air_conditioning}}</li>
														<li><img src="/front/images/icon/a7.png" alt=""> Wifi: {{$room->wifi}}</li>
														<li><img src="/front/images/icon/dbl210.png" alt=""> Smoke Detector: {{$room->smoke_detector}}</li>
														<li><img src="/front/images/icon/a6.png" alt=""> Tv: {{$room->tv}}</li>
													</ul>
												</div> <span class="home-list-pop-rat list-rom-pric green-bg">Cost: {{$room->price}} TK</span>
											</div>
										</div>
									@endforeach
								</div>
							</div>
							{{--
							<!--END 360 DEGREE MAP: LEFT PART 8-->
							<div class="pglist-p3 pglist-bg pglist-p-com" id="ld-vie">
								<div class="pglist-p-com-ti">
									<h3><span>360 </span> Degree View</h3> </div>
								<div class="list-pg-inn-sp list-360">
									<iframe src="" allowfullscreen></iframe>
								</div>
							</div>
							<!--END 360 DEGREE MAP: LEFT PART 8-->--}}
						</div>
						<div class="list-pg-rt">
							<!--LISTING DETAILS: LEFT PART 9-->
							<div class="pglist-p3 pglist-bg pglist-p-com">
								<div class="pglist-p-com-ti pglist-p-com-ti-right">
									<h3><span>Other</span> Informations</h3> </div>
								<div class="list-pg-inn-sp">
									<div class="list-pg-oth-info">
										<ul>
											<li>Rank <span class="green-bg">{{$hotel->bangladesh_ranking}}</span> </li>
											<li>Star <span class="green-bg">{{$hotel->star}}</span> </li>
											<li>Car Parking <span>{{$hotel->car_parking}}</span> </li>
											<li>Restaurant <span>{{$hotel->restaurant}}</span> </li>
											<li>Cafe <span>{{$hotel->cafe}}</span> </li>
											<li>Total Room <span class="green-bg">{{$hotel->total_room}}</span> </li>
										</ul>
									</div>
								</div>
							</div>
							<!--END LISTING DETAILS: LEFT PART 9-->
							<!--LISTING DETAILS: LEFT PART 10-->
							<!--END LISTING DETAILS: LEFT PART 10-->
						</div>
					</div>
				</div>
			</div>
			<a href="{{$hotel->website_url}}" target="_blank" class="btn btn-success text-center" style="display:block;" align="center">Go to Hotel Website</a>
		</section>
	<!--QUOTS POPUP-->
	<hr><hr>
	@endforeach
@endsection