@extends('front.master')
@section('style')
<link href="{{asset('front/css/select2.min.css')}}" rel="stylesheet" />
<style>
.form-control{
	height: 45px !important;
    line-height: 2 !important;
}
.select2-container .select2-selection--single {
	height:45px;
	line-height: 2 !important;
}.select2-container--default .select2-selection--single .select2-selection__rendered {
    line-height: 42px;
}
.select2-container--default .select2-selection--single .select2-selection__arrow {
    top: 8px;
}
</style>
@endsection
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
					<div class="ts-menu-3">
					<div class="">
					<form action="{{url('/search-hotel')}}" class="tourz-search-form tourz-top-search-form" id="service_search" method="POST">
								
						<div class="">
								</div>
								<div class="">
										<select name='id' id="hotels" style="display:block;" required>
												<option value="">Search a Hotel</option>
												@foreach($hotels as $hotel)
													<option value="{{$hotel->id}}">{{$hotel->name}}</option>
												@endforeach
										</select>
								</div>
								<div class="">
									<button type="submit" value="" class="waves-effect waves-light tourz-top-sear-btn"></button> </div>
									@csrf
							</form>
						</div>
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
							<li><a href="/institutes">Hotels</a> </li>
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
	<section class="dir-alp dir-pa-sp-top">
		<div class="container">
			<div class="row">
				<div class="dir-alp-tit">
					<h1>Hotel Lists in Bangladesh</h1>
					<ol class="breadcrumb">
						<li><a href="/">Home</a> </li>
						<li class="active">Hotels List</li>
					</ol>
				</div>
			</div>
			<div class="row">
				<div class="dir-alp-con">
					
					<form action="{{url('/filter-hotels')}}" method="GET">
						<div class="col-md-3 dir-alp-con-left">
						<!--==========Sub Category Filter============-->
						<div class="dir-alp-con-left-1"><h3>Room Types</h3> </div>
						<div class="dir-hom-pre dir-alp-left-ner-notb">
							<select name='room_type_id[]' id="room" style="display:block;" multiple="multiple">
								@foreach($rooms as $room)
									<option value="{{$room->id}}" id="ld{{$room->id}}">{{$room->name}}</option>
								@endforeach
							</select>
							@if(Session::has('message'))
								<p class="alert {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('message') }}</p>
							@endif
						</div>
						
						{{--<!--==========End Sub Category Filter============-->
						<!--==========Sub Category Filter============-->
						<div class="dir-alp-l3 dir-alp-l-com" style="margin-top:10px;">
							<h4>Certification</h4>
							<div class="dir-alp-l-com1 dir-alp-p3">
								<ul>
									<li>
										<input class="with-gap" name="IEEB" value="IEEB" type="radio" id="IEEB" />
										<label for="IEEB">IEEB</label>
									</li>
									<li>
										<input class="with-gap" name="IEEB" value="Pharmacists" type="radio" id="Pharmacists" />
										<label for="Pharmacists">Pharmacists</label>
									</li>
								</ul>
							</div>
						</div>
						
						{{----}}
						<!--==========End Sub Category Filter============-->
						<!--==========Sub Category Filter============-->
						<div class="dir-alp-l3 dir-alp-l-com">
							<h4>Star</h4>
							<div class="dir-alp-l-com1 dir-alp-p3">
								<ul>
									<li>
										<input type="checkbox" name="star[]" value="2" class="filled-in" id="lr2" />
										<label for="lr2"> <span class="list-rat-ch"> <span>2.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i></span>
										</label>
									</li>
									<li>
										<input type="checkbox" name="star[]" value="3" class="filled-in" id="lr3" />
										<label for="lr3"> <span class="list-rat-ch"> <span>3.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> </span>
										</label>
									</li>
									<li>
										<input type="checkbox" name="star[]" value="4" class="filled-in" id="lr4" />
										<label for="lr4"> <span class="list-rat-ch"> <span>4.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> </span>
										</label>
									</li>
									<li>
										<input type="checkbox" name="star[]" value="5" class="filled-in" id="lr5" />
										<label for="lr5"> <span class="list-rat-ch"> <span>5.0</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> </span>
										</label>
									</li>
								</ul>
								@if(Session::has('message'))
									<p class="alert {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('message') }}</p>
								@endif
							</div>
						</div>
						<div class="form-control">
								<input type="submit" class="btn btn-submit" style="width:100%" value="Filter">
						</div>
						<!--==========End Sub Category Filter============-->
					</div>
					</form>
					<div class="col-md-9 dir-alp-con-right">
						<div class="dir-alp-con-right-1">
							<div class="row">
								<!--LISTINGS-->
							@if(isset($hotels) && count($hotels) > 0)
							<form action="{{url('/hotel-compare')}}" method="get">
								@foreach($hotels as $hotel)
									<div class="home-list-pop list-spac">
										<!--LISTINGS IMAGE-->
										<div class="col-md-3 list-ser-img"> <img src="img/hotels/{{ $hotel->main_img }}" alt="" /> </div>
										<!--LISTINGS: CONTENT-->
										<div class="col-md-9 home-list-pop-desc inn-list-pop-desc"> <a href="{{ url('/hotel/'.$hotel->id)}}"><h3>{{ $hotel->name }}</h3></a>
											
											<p><b>Address:</b> {{ $hotel->address }}, Bangladesh.</p>
											<div class="list-number">
												<ul>
													<li><img src="{{asset('front/images/icon/phone.png')}}" alt=""> {{ $hotel->phone }}</li>
													<li><img src="{{asset('front/images/icon/mail.png')}}" alt=""> {{ $hotel->email }}</li>
												</ul>
											</div>
											<div class="list-enqu-btn" align="right">
													@if(!empty(session('error')))<span class="alert-info" style="color:red"> {{ session('error') }} </span>
													@else	<span style="color:green"> Compare </span>@endif
												<input type="checkbox" name="id[]" class="filled-in" value="{{ $hotel->id }}" id="filled-{{ $hotel->id }}"/>
												<label for="filled-{{ $hotel->id }}"></label>
												
											</div>
										</div>
									</div>
									@endforeach
									<!--== BOTTOM FLOAT ICON ==-->
									<section>
										<div class="fixed-action-btn vertical">
											<button type="submit" class="btn-floating btn-large red pulse" title="Click for Compare with selected items"> <i class="large material-icons">visibility</i> </button>
											{{--<ul>
												<li><a class="btn-floating red"><i class="material-icons">insert_chart</i></a> </li>
												<li><a class="btn-floating yellow darken-1"><i class="material-icons">format_quote</i></a> </li>
												<li><a class="btn-floating green"><i class="material-icons">publish</i></a> </li>
												<li><a class="btn-floating blue"><i class="material-icons">attach_file</i></a> </li>
											</ul>--}}
										</div>
									</section>
								</form>	
								@else
									<div>
										<h2 style="color:crimson">{{$message}}</h2>
										<img src="/front/images/preloader.gif" alt="">
								@endif
								<!--LISTINGS END-->
							</div>
							<div class="row">
								{{$hotels->links()}}
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
@endsection
@section('script')
<script src="{{asset('front/js/select2.min.js')}}"></script>
<script>
  $(document).ready(function() {
	  $("#room").select2({
		placeholder: "Select the room types"
	  });
	  $("#hotels").select2();
  });
</script>
@endsection