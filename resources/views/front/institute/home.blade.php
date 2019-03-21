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
						<!--==========Sub Category Filter============-->
						<div class="dir-alp-con-left-1"><h3>Departments</h3> </div>
						<div class="dir-hom-pre dir-alp-left-ner-notb">
							<ul>
								@foreach($departments as $department)
									<li>
										<input type="checkbox" id="scf1" value="{{$department->id}}" name=department_id[]/>
										<label for="scf1">{{$department->name}}</label>
									</li>
								@endforeach
							</ul>
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