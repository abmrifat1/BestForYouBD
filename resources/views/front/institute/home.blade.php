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
					<form action="{{url('/search-institute')}}" class="tourz-search-form tourz-top-search-form" id="service_search" method="POST">
								
						<div class="">
								</div>
								<div class="">
										<select name='id' id="institutes" style="display:block;" required>
												<option value="">Search a Institute</option>
												@foreach($institutes as $institute)
													<option value="{{$institute->id}}">{{$institute->name}}</option>
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
					<h1>Institute Lists in Bangladesh</h1>
					<ol class="breadcrumb">
						<li><a href="/">Home</a> </li>
						<li class="active">Institutes List</li>
					</ol>
				</div>
			</div>
			<div class="row">
				<div class="dir-alp-con">
					
					<form action="{{url('/filter-institutes')}}" method="GET">
					<div class="col-md-3 dir-alp-con-left">
						<!--==========Sub Category Filter============-->
						<div class="dir-alp-con-left-1"><h3>Departments</h3> </div>
						<div class="dir-hom-pre dir-alp-left-ner-notb">
							<select name='department_id' id="department" style="display:block;">
								<option value="">Select a Department</option>
								@foreach($departments as $department)
									<option value="{{$department->id}}" id="ld{{$department->id}}">{{$department->name}}</option>
								@endforeach
							</select>
							@if(Session::has('message'))
								<p class="alert {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('message') }}</p>
							@endif
						</div>
						
						<!--==========End Sub Category Filter============-->
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
							@if(Session::has('message'))
								<p class="alert {{ Session::get('alert-class', 'alert-info') }}">{{ Session::get('message') }}</p>
							@endif
						</div>
						<div class="dir-alp-l3 dir-alp-l-com" style="margin-top:10px;">
							<h4>Ownership Type</h4>
							<div class="dir-alp-l-com1 dir-alp-p3">
								<ul>
									<li>
										<input class="with-gap" name="ownership_type" value="Public" type="radio" id="government" />
										<label for="government">Public</label>
									</li>
									<li>
										<input class="with-gap" name="ownership_type" value="Private" type="radio" id="private" />
										<label for="private">Private</label>
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
						{{--
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
									</ul>
								</form> <a href="#!" class="list-view-more-btn">view more</a> </div>
						</div>--}}
						<!--==========End Sub Category Filter============-->
					</div>
					</form>
					<div class="col-md-9 dir-alp-con-right">
						<div class="dir-alp-con-right-1">
							<div class="row">
								<!--LISTINGS-->
							@if(isset($institutes) && count($institutes) > 0)
							<form action="{{url('/institute-compare')}}" method="GET">
								@foreach($institutes->unique('name') as $institute)
									<div class="home-list-pop list-spac">
										<!--LISTINGS IMAGE-->
										<div class="col-md-3 list-ser-img"> <img src="img/institutes/{{ $institute->main_img }}" alt="" /> </div>
										<!--LISTINGS: CONTENT-->
										<div class="col-md-9 home-list-pop-desc inn-list-pop-desc"> <a href="{{ url('/institute/'.$institute->id)}}"><h3>{{ $institute->name }}</h3></a>
											
											<p><b>Address:</b> {{ $institute->address }}, Bangladesh.</p>
											<div class="list-number">
												<ul>
													<li><img src="{{asset('front/images/icon/phone.png')}}" alt=""> {{ $institute->phone }}</li>
													<li><img src="{{asset('front/images/icon/mail.png')}}" alt=""> {{ $institute->email }}</li>
												</ul>
											</div>
											<div class="list-enqu-btn" align="right">
												@if(!empty(session('error')))<span class="alert-info" style="color:red"> {{ session('error') }} </span>
												@else	<span style="color:green"> Compare </span>@endif
												<input type="checkbox" name="id[]" class="filled-in" value="{{ $institute->id }}" id="filled-{{ $institute->id }}"/>
												<label for="filled-{{ $institute->id }}"></label>
												
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
								<!--LISTINGS END-->
								@else
									<div>
										<h2 style="color:crimson">{{$message}}</h2>
										<img src="/front/images/preloader.gif" alt="">
								@endif
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
@section('script')
<script src="{{asset('front/js/select2.min.js')}}"></script>
<script>
  $(document).ready(function() {
	  $("#department").select2();
	  $("#institutes").select2();
  });
</script>
@endsection