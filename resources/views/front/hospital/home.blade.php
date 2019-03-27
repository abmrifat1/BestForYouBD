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
					<form action="{{url('/search-hospital')}}" class="tourz-search-form tourz-top-search-form" id="service_search" method="POST">
								
						<div class="">
								</div>
								<div class="">
										<select name='id' id="hospitals" style="display:block;" required>
												<option value="">Search a hospital</option>
												@foreach($hospitals as $hospital)
													<option value="{{$hospital->id}}">{{$hospital->name}}</option>
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
					<h1>Hospital Lists in Bangladesh</h1>
					<ol class="breadcrumb">
						<li><a href="/">Home</a> </li>
						<li class="active">Hospitals List</li>
					</ol>
				</div>
			</div>
			<div class="row">
				<div class="dir-alp-con">
					
					<form action="{{url('/filter-hospitals')}}" method="GET">
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
						</div>
						
						<!--==========End Sub Category Filter============-->
						<!--==========Sub Category Filter============-->
						<div class="dir-alp-l3 dir-alp-l-com" style="margin-top:10px;">
							<h4>Ownership Type</h4>
							<div class="dir-alp-l-com1 dir-alp-p3">
								<ul>
									<li>
										<input class="with-gap" name="ownership_type" value="Public" type="radio" id="government" />
										<label for="government">Government</label>
									</li>
									<li>
										<input class="with-gap" name="ownership_type" value="Private" type="radio" id="private" />
										<label for="private">Private</label>
									</li>
								</ul>
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
								
							<form action="{{url('/hospital-compare')}}" method="GET">
								@foreach($hospitals->unique('name') as $hospital)
									<div class="home-list-pop list-spac">
										<!--LISTINGS IMAGE-->
										<div class="col-md-3 list-ser-img"> <img src="img/hospitals/{{ $hospital->main_img }}" alt="" /> </div>
										<!--LISTINGS: CONTENT-->
										<div class="col-md-9 home-list-pop-desc inn-list-pop-desc"> <a href="{{ url('/hospital/'.$hospital->id)}}"><h3>{{ $hospital->name }}</h3></a>
											
											<p><b>Address:</b> {{ $hospital->address }}, Bangladesh.</p>
											<div class="list-number">
												<ul>
													<li><img src="{{asset('front/images/icon/phone.png')}}" alt=""> {{ $hospital->phone }}</li>
													<li><img src="{{asset('front/images/icon/mail.png')}}" alt=""> {{ $hospital->email }}</li>
												</ul>
											</div>
											<div class="list-enqu-btn" align="right">
												@if(!empty(session('error')))<span style="color:red"> {{ session('error') }} </span>@endif
												<input type="checkbox" name="id[]" class="filled-in" value="{{ $hospital->id }}" id="filled-{{ $hospital->id }}"/>
												<label for="filled-{{ $hospital->id }}"></label>
												
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
							</div>
							<div class="row">
								{{$hospitals->links()}}
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
	  $("#hospitals").select2();
  });
</script>
@endsection