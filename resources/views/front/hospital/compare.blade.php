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
						<a href="http://hospitals.webometrics.info/en/Asia/Bangladesh%20" target="_blank"><li class="list-group-item">Ranking of Bangladesh Hospitals</li></a>
						<li class="list-group-item">We're not best but we're trying to give best information</li>
						<li class="list-group-item">We're providing many information bellow Please See All and Choose</li>
					</ul>
			</div>
			<div class="offset-1 col-md-1"></div>
		</div>
	</div>
	@foreach($hospitals as $i=>$hospital)
	<section class="list-pg-bg">
		<div class="container">
			<div class="row">
				<div class="com-padd">
					<div class="list-pg-lt list-page-com-p">
						<!--LISTING DETAILS: LEFT PART 1-->
						<div class="pglist-p1 pglist-bg pglist-p-com" id="ld-abour">
							<div class="pglist-p-com-ti">
							<h3><span style="font-weight:bold;color:darkgreen">@if ($loop->first) <i class="fa fa-star"></i> @endif {{$i+1}}: </span>About {{$hospital->name}}</h3> </div>
							{{--<div class="list-pg-inn-sp">
								<div class="share-btn">
									<ul>
										<li><a href="#"><i class="fa fa-facebook fb1"></i> Share On Facebook</a> </li>
										<li><a href="#"><i class="fa fa-twitter tw1"></i> Share On Twitter</a> </li>
										<li><a href="#"><i class="fa fa-google-plus gp1"></i> Share On Google Plus</a> </li>
									</ul>
								</div>
								<p>{{$hospital->description}}</p>
							</div>--}}
						</div>
						<!--END LISTING DETAILS: LEFT PART 1-->
						<!--LISTING DETAILS: LEFT PART 2-->
						{{--<div class="pglist-p2 pglist-bg pglist-p-com" id="ld-ser">
							<div class="pglist-p-com-ti">
								<h3><span>Services</span> Offered</h3> </div>
							<div class="list-pg-inn-sp">
								<div class="row pg-list-ser">
									<ul>
										@if($hospital->restaurant)
										<li class="col-md-4">
											<div class="pg-list-ser-p1"><img src="/front/images/services/our-restaurants.jpg" alt="" /> </div>
											<div class="pg-list-ser-p2">
												<h4>Restaurant</h4> </div>
										</li>
										@endif
										@if($hospital->hostel > 0)
										<li class="col-md-4">
											<div class="pg-list-ser-p1"><img src="/front/images/services/ser2.jpg" alt="" /> </div>
											<div class="pg-list-ser-p2">
												<h4>Hostel</h4> </div>
										</li>
										@endif
										@if($hospital->events)
										<li class="col-md-4">
											<div class="pg-list-ser-p1"><img src="/front/images/services/ser3.jpg" alt="" /> </div>
											<div class="pg-list-ser-p2">
												<h4>Corporate Events</h4> </div>
										</li>
										@endif
										@if($hospital->auditorium > 0)
										<li class="col-md-4">
											<div class="pg-list-ser-p1"><img src="/front/images/services/audi.jpg" alt="" /> </div>
											<div class="pg-list-ser-p2">
												<h4>Auditorium Hall</h4> </div>
										</li>
										@endif
										@if($hospital->bus > 0)
										<li class="col-md-4">
											<div class="pg-list-ser-p1"><img src="/front/images/services/bus.jpg" alt="" /> </div>
											<div class="pg-list-ser-p2">
												<h4>Transport</h4> </div>
										</li>
										@endif
										@if($hospital->play_ground)
										<li class="col-md-4">
											<div class="pg-list-ser-p1"><img src="/front/images/services/playground.jpg" alt="" /> </div>
											<div class="pg-list-ser-p2">
												<h4>Play Ground</h4> </div>
										</li>
										@endif
									</ul>
								</div>
							</div>
						</div>--}}
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
										<div class="item active"> <img src="/img/hospitals/{{$hospital->main_img}}" alt="{{$hospital->name}}" style="height:400px !important;width:100%"> </div>
										<div class="item"> <img src="/img/hospitals/{{$hospital->gallery_img_1}}" alt="{{$hospital->name}}" style="height:400px !important;width:100%"> </div>
										<div class="item"> <img src="/img/hospitals/{{$hospital->gallery_img_2}}" alt="{{$hospital->name}}" style="height:400px !important;width:100%"> </div>
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
								<h3><span>Hospital</span> Departments</h3> </div>
							<div class="list-pg-inn-sp">
									@foreach ($hospital->hospital_departments as $department)
									<div class="home-list-pop list-spac list-spac-1 list-room-mar-o">
										<!--LISTINGS IMAGE-->
										<div class="col-md-3"> <img src="/front/images/hospital-1.png" alt="" style="height:100%;width:100%"> </div>
										<!--LISTINGS: CONTENT-->
										<div class="col-md-9 home-list-pop-desc inn-list-pop-desc list-room-deta"> <h3>
											@php 
											foreach ($departments as $mai_department) {
												if($mai_department->id == $department->department_id){
													echo $mai_department->departmentName;
												}
											}
											@endphp
										</h3>
											<div class="list-room-type list-rom-ami">
												<ul>
													<li>
														<p><b>Amenities:</b> </p>
													</li>
													<li><img src="/front/images/icon/d4.png" alt=""> Doctors: {{$department->doctors}}</li>
													<li><img src="/front/images/icon/hcat8.png" alt=""> Foreign Degree Doctors: {{$department->foreign_degree_doctors}} </li>
													<li><img src="/front/images/icon/hcat10.png" alt=""> Staff: {{$department->staff}}</li>
												</ul>
											</div>
										</div>
									</div>
								@endforeach
							</div>
						</div>
						<div class="pglist-p3 pglist-bg pglist-p-com" id="ld-roo">
								<div class="pglist-p-com-ti">
									<h3><span>Nearest</span> Hotels</h3> </div>
								<div class="list-pg-inn-sp">
									@foreach ($hospital->hotels as $hotel)
										<div class="home-list-pop list-spac list-spac-1 list-room-mar-o">
											<!--LISTINGS IMAGE-->
											<div class="col-md-3"> <img src="/img/hotels/{{ $hotel->main_img }}" alt="" style="height:200px"> </div>
											<!--LISTINGS: CONTENT-->
											<div class="col-md-9 home-list-pop-desc inn-list-pop-desc list-room-deta"> <a href="{{url('/hotel/'.$hotel->id)}}" target="_blank"><h3>{{$hotel->name}}</h3></a>
												<div class="list-room-type list-rom-ami">
													<ul>
														<li>
															<p><b>Amenities:</b> </p>
														</li>
														<li><img src="/front/images/icon/3.png" alt=""> Address: {{$hotel->address}}</li>
														<li><img src="/front/images/icon/dbl13.png" alt=""> Star: {{$hotel->star}} </li>
														<li><img src="/front/images/icon/a11.png" alt=""> Car Parking: {{$hotel->car_parking}}</li>
														<li><img src="/front/images/icon/hcat2.png" alt=""> Total Room: {{$hotel->total_room}}</li>
														<li><img src="/front/images/icon/a2.png" alt=""> Cafe: {{$hotel->cafe}}</li>
													</ul>
												</div>
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
						<!--END 360 DEGREE MAP: LEFT PART 8-->
						--}}
					</div>
					<div class="list-pg-rt">
						<!--LISTING DETAILS: LEFT PART 9-->
						<div class="pglist-p3 pglist-bg pglist-p-com">
							<div class="pglist-p-com-ti pglist-p-com-ti-right">
								<h3><span>Other</span> Informations</h3> </div>
							<div class="list-pg-inn-sp">
								<div class="list-pg-oth-info">
									<ul>
										<li>Rank <span class="green-bg">{{$hospital->bangladesh_ranking}}</span> </li>
										<li>City <span class="green-bg">{{$hospital->districtName}}</span> </li>
										<li>Sub Place of City <span class="green-bg">{{$hospital->subDistrictName}}</span> </li>
										<li>Departments <span>{{$hospital->total_departments}}</span> </li>
										<li>Total Doctors <span>{{$hospital->total_doctors}}</span> </li>
										<li>Establish <span>{{$hospital->estDate}}</span> </li>
										<li>Owership Type <span class="green-bg">{{$hospital->ownership_type}}</span> </li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<hr>
		<p class="btn btn-success text-center" style="display:block;" align="center">*****</a>
	</section>
	<hr>
	@endforeach
@endsection