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
	<section>
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
	</section>
	<section class="list-pg-bg">
		<div class="container">
			<div class="row">
				<div class="com-padd">
					<div class="list-pg-lt list-page-com-p">
						<!--LISTING DETAILS: LEFT PART 1-->
						<div class="pglist-p1 pglist-bg pglist-p-com" id="ld-abour">
							<div class="pglist-p-com-ti">
								<h3><span>About</span> {{$institute->name}}</h3> </div>
							<div class="list-pg-inn-sp">
							
								<p>{{$institute->description}}</p>
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
										@if($institute->restaurant)
										<li class="col-md-4">
											<div class="pg-list-ser-p1"><img src="/front/images/services/our-restaurants.jpg" alt="" /> </div>
											<div class="pg-list-ser-p2">
												<h4>Restaurant</h4> </div>
										</li>
										@endif
										@if($institute->hostel > 0)
										<li class="col-md-4">
											<div class="pg-list-ser-p1"><img src="/front/images/services/ser2.jpg" alt="" /> </div>
											<div class="pg-list-ser-p2">
												<h4>Hostel</h4> </div>
										</li>
										@endif
										@if($institute->events)
										<li class="col-md-4">
											<div class="pg-list-ser-p1"><img src="/front/images/services/ser3.jpg" alt="" /> </div>
											<div class="pg-list-ser-p2">
												<h4>Corporate Events</h4> </div>
										</li>
										@endif
										@if($institute->auditorium > 0)
										<li class="col-md-4">
											<div class="pg-list-ser-p1"><img src="/front/images/services/audi.jpg" alt="" /> </div>
											<div class="pg-list-ser-p2">
												<h4>Auditorium Hall</h4> </div>
										</li>
										@endif
										@if($institute->bus > 0)
										<li class="col-md-4">
											<div class="pg-list-ser-p1"><img src="/front/images/services/bus.jpg" alt="" /> </div>
											<div class="pg-list-ser-p2">
												<h4>Transport</h4> </div>
										</li>
										@endif
										@if($institute->play_ground)
										<li class="col-md-4">
											<div class="pg-list-ser-p1"><img src="/front/images/services/playground.jpg" alt="" /> </div>
											<div class="pg-list-ser-p2">
												<h4>Play Ground</h4> </div>
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
										<div class="item active"> <img src="/img/institutes/{{$institute->main_img}}" alt="{{$institute->name}}" style="height:400px !important;width:100%"> </div>
										<div class="item"> <img src="/img/institutes/{{$institute->gallery_img_1}}" alt="{{$institute->name}}" style="height:400px !important;width:100%"> </div>
										<div class="item"> <img src="/img/institutes/{{$institute->gallery_img_2}}" alt="{{$institute->name}}" style="height:400px !important;width:100%"> </div>
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
								<h3><span>Institute</span> Departments</h3> </div>
							<div class="list-pg-inn-sp">
								@foreach ($institute_departments as $department)
									<div class="home-list-pop list-spac list-spac-1 list-room-mar-o">
										<!--LISTINGS IMAGE-->
										<div class="col-md-3"> <img src="/front/images/Dept_Ed.jpg" alt="" style="height:200px"> </div>
										<!--LISTINGS: CONTENT-->
										<div class="col-md-9 home-list-pop-desc inn-list-pop-desc list-room-deta"> <a href="#!"><h3>{{$department->name}}</h3></a>
											<div class="list-room-type list-rom-ami">
												<ul>
													<li>
														<p><b>Amenities:</b> </p>
													</li>
													@if($department->credit > 0)<li><img src="/front/images/icon/book.jpg" alt=""> Credit: {{$department->credit}}</li>@endif
													<li><img src="/front/images/icon/teacher-icon.png" alt=""> Faculty Teacher: {{$department->faculty_members}} </li>
													<li><img src="/front/images/icon/hcat8.png" alt=""> PhD Holder: {{$department->total_phd_teacher}} </li>
													<li><img src="/front/images/icon/d4.png" alt=""> Students: {{$department->students}}</li>
													<li><img src="/front/images/icon/a6.png" alt=""> Computer: {{$department->computer}}</li>
													<li><img src="/front/images/icon/certification.png" alt=""> Certification: {{$department->IEEB}}</li>
												</ul>
											</div> <span class="home-list-pop-rat list-rom-pric green-bg">Cost: ${{$department->cost}}</span>
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
										<li>World Ranking <span class="green-bg">{{$institute->world_ranking}}</span> </li>
										<li>Bangladesh Ranking <span class="green-bg">{{$institute->bangladesh_ranking}}</span> </li>
										<li>PhD Teacher <span class="green-bg">{{$institute->total_phd_teacher}}</span> </li>
										<li>Total Teacher <span class="green-bg">{{$institute->total_faculty}}</span> </li>
										<li>Total Departments <span>{{$institute->total_department}}</span> </li>
										<li>library <span>{{$institute->library}}</span> </li>
										<li>Hostel <span>{{$institute->hostel}}</span> </li>
										<li>Bus <span>{{$institute->bus}}</span> </li>
										<li>Auditorium <span>{{$institute->auditorium}}</span> </li>
										<li>Play Ground <span>{{$institute->play_ground}}</span> </li>
										<li>Restaurant <span>{{$institute->restaurant}}</span> </li>
										<li>Yearly Events <span>{{$institute->events}}</span> </li>
										<li>Owership Type <span class="green-bg">{{$institute->ownership_type}}</span> </li>
									</ul>
								</div>
							</div>
						</div>
						<!--END LISTING DETAILS: LEFT PART 9-->
						<!--LISTING DETAILS: LEFT PART 10-->
						<div class="list-mig-like">
							<div class="list-ri-spec-tit">
								<h3><span>You might</span> like this</h3> </div>
							@foreach($institutes as $randomInstitute)
								<a href="/institute/{{$randomInstitute->id}}">
									<div class="list-mig-like-com">
										<div class="list-mig-lc-img"> <img src="/img/institutes/{{$randomInstitute->main_img}}" alt="" /><!-- <span class="home-list-pop-rat list-mi-pr">$720</span> --></div>
										<div class="list-mig-lc-con">
											<h5>{{$randomInstitute->name}}</h5>
											<p>{{$randomInstitute->address}}</p>
										</div>
									</div>
								</a>
							@endforeach
						</div>
						<!--END LISTING DETAILS: LEFT PART 10-->
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--QUOTS POPUP-->
	
@endsection