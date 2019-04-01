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
					<form action="{{url('/search-tour-place')}}" class="tourz-search-form tourz-top-search-form" id="service_search" method="POST">
								
						<div class="">
								</div>
								<div class="">
										<select name='id' id="tourPlaces" style="display:block;" required>
												<option value="">Search a Tour Place</option>
												@foreach($tourPlaces as $tourPlace)
													<option value="{{$tourPlace->id}}">{{$tourPlace->name}}</option>
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
	<section class="dir-alp dir-pa-sp-top">
		<div class="container">
			<div class="row">
				<div class="dir-alp-tit">
					<h1>Tour Place Lists in Bangladesh</h1>
					<ol class="breadcrumb">
						<li><a href="/">Home</a> </li>
						<li class="active">Tour Places List</li>
					</ol>
				</div>
			</div>
			<div class="row">
				<div class="dir-alp-con">
					<div class="col-md-12 dir-alp-con-right">
						<div class="dir-alp-con-right-1">
							<div class="row">
								<!--LISTINGS-->
							@if(isset($tourPlaces) && count($tourPlaces) > 0)
							<form action="{{url('/tour-place-compare')}}" method="GET">
								@foreach($tourPlaces->unique('name') as $tourPlace)
									<div class="home-list-pop list-spac">
										<!--LISTINGS IMAGE-->
										<div class="col-md-3 list-ser-img"> <img src="img/tour_places/{{ $tourPlace->main_img }}" alt="" /> </div>
										<!--LISTINGS: CONTENT-->
										<div class="col-md-9 home-list-pop-desc inn-list-pop-desc"> <a href="{{ url('/tour-place/'.$tourPlace->id)}}"><h3>{{ $tourPlace->name }}</h3></a>
											
											<p><b>Address:</b> {{ $tourPlace->address }}, Bangladesh.</p>
											<div class="list-number">
												{{\Illuminate\Support\Str::words($tourPlace->description, $words = 50, $end = '...')}}
											</div>
											<div class="list-enqu-btn" align="right">
												@if(!empty(session('error')))<span class="alert-info" style="color:red"> {{ session('error') }} </span>
												@else	<span style="color:green"> Compare </span>@endif
												<input type="checkbox" name="id[]" class="filled-in" value="{{ $tourPlace->id }}" id="filled-{{ $tourPlace->id }}"/>
												<label for="filled-{{ $tourPlace->id }}"></label>
												
											</div>
										</div>
									</div>
									@endforeach
									<!--== BOTTOM FLOAT ICON ==-->
									<section>
										<div class="fixed-action-btn vertical">
											<button type="submit" class="btn-floating btn-large red pulse" title="Click for Compare with selected items"> <i class="large material-icons">visibility</i> </button>
									
										</div>
									</section>
								</form>	
								<!--LISTINGS END-->
								@else
									<div align="center">
										<h2 style="color:crimson">{{$message}}</h2>
										<img src="/front/images/preloader.gif" alt="">
								@endif
							</div>
							<div class="row">
								{{$tourPlaces->links()}}
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
	  $("#tourPlaces").select2();
  });
</script>
@endsection