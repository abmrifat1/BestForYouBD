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
	<!--BANNER AND SERACH BOX-->
	<section class="dir3-home-head">
		<div class="container dir-ho-t-sp">
			<div class="row">
				<div class="dir-hr1 dir-cat-search">
					<div class="dir-ho-t-tit">
						<h1>Get The Best <br>Services & Places In Bangladesh</h1> 
						<!--<p>Find Institute, Hospital & Hotel Infromations with contact addresses, and phone numbers.<br> Get a suggestion of beautiful tour places in BD.</p>-->
					</div>
					<form action="{{url('/search')}}" method="POST">
						@csrf
						<div class="form-row">
							<div class="form-group col-md-3">
								<select id="service" name="service" class="form-control" required>
									<option value="">Select a Service</option>
									<option value="institutes">Institute</option>
									<option value="hospitals">Hospital</option>
									<option value="hotels">Hotel</option>
									<option value="tour_places">Tour Place</option>
								</select>
							</div>
							<div class="form-group col-md-3">
									<select id="district" name="district_id" class="form-control">
										<option value="">Select a City</option>
									</select>
							</div>
							<div class="form-group col-md-3">
								<select id="subdistrict" name="sub_district_id" class="form-control">
									<option value="">Select a sub Place</option>
								</select>
							</div>
							<div class="form-group col-md-2">
								<button type="submit" class="form-control btn btn-primary">Search</button>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
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
								<img src="{{ asset('/front/images/services/20.png')}}" alt="">
							</div>
							<div class="land-pack-grid-text">
							<h4>Institute Listing</h4>
							<a href="{{ url('/institutes')}}" class="land-pack-grid-btn">Go Now</a></div>
							</div>
						</li>
						<li>							
							<div class="land-pack-grid">
							<div class="land-pack-grid-img">
								<img src="{{ asset('/front/images/services/10.jpg')}}" alt="">
							</div>
							<div class="land-pack-grid-text">
							<h4>Hospital Listing</h4>
							<a href="{{ url('/hospitals')}}" class="land-pack-grid-btn land-pack-grid-btn-blu">Go Now</a></div>
							</div>
						</li>
						<li>							
							<div class="land-pack-grid">
							<div class="land-pack-grid-img">
								<img src="{{ asset('/front/images/services/p1.jpg')}}" alt="">
							</div>
							<div class="land-pack-grid-text">
							<h4>Hotel Listing</h4>
							<a href="{{ url('/hotels')}}" class="land-pack-grid-btn land-pack-grid-btn-yel">Go Now</a></div>
							</div>
						</li>
						<li>							
							<div class="land-pack-grid">
							<div class="land-pack-grid-img">
								<img src="{{ asset('/front/images/services/ser5.jpg')}}" alt="">
							</div>
							<div class="land-pack-grid-text">
							<h4>Tour Place Listing</h4>
							<a href="{{ url('/tour-places')}}" class="land-pack-grid-btn land-pack-grid-btn-red">Go Now</a></div>
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
                                        <p>{{ $institute->address }}</p> <!--<span class="home-list-pop-rat">4.2</span>-->
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
                                        <p>{{ $institute->address }}</p> <!--<span class="home-list-pop-rat">4.2</span>-->
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
                                    <div class="list-rat-ch list-room-rati"> <span>{{ $hotel->star }}.0</span> @for($i=1;$i<=$hotel->star;$i++) <i class="fa fa-star" aria-hidden="true"></i>@endfor </div>
                                    <h5>{{ $hotel->name }}</h5>
                                    <p><b>Address:</b> {{$hotel->address}}</p>
                                </div>
                            </div>
                        </a>
                    </div>
                @endforeach
			</div>
		</div>
	</section>
	<!--EXPLORE Tour Place LISTING-->
	<section class="com-padd com-padd-redu-top">
		<div class="container">
			<div class="row">
				<div class="com-title">
					<h2>Watch The Beauty of Tour Places <span>in Bangladesh</span></h2>
					<p>Explore some of the best tour place from around the Bangladesh.</p>
                </div>
                @foreach ($tourPlaces as $tourPlace)
                    <div class="col-md-4">
                        <a href="/tour-place/{{$tourPlace->id}}">
                            <div class="list-mig-like-com">
                                <div class="list-mig-lc-img"> <img src="img/tour_places/{{ $tourPlace->main_img }}" alt="" /> </div>
                                <div class="list-mig-lc-con">
                                    <!--<div class="list-rat-ch list-room-rati"> <span>{{ $tourPlace->star }}</span> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star" aria-hidden="true"></i> <i class="fa fa-star-o" aria-hidden="true"></i> </div>-->
                                    <h5>{{ $tourPlace->name }}</h5>
                                    <p><b>Address:</b> {{$tourPlace->address}}</p>
                                </div>
                            </div>
                        </a>
                    </div>
                @endforeach
			</div>
		</div>
	</section>
@endsection
@section('script')
<script type="text/javascript">
	$('#service').on('change', function(e){
	  var service = e.target.value;
	  $.get('/get-districts?service=' + service,function(data) {
		$('#district').empty();
		$('#district').append('<option value="">Select a City</option>');

		$('#subdistrict').empty();
		$('#subdistrict').append('<option value="">Select a Sub Place</option>');

		$.each(data, function(index, districtsObj){
		  $('#district').append('<option value="'+ districtsObj.id +'">'+ districtsObj.name +'</option>');
		})
	  });
	});

	$('#district').on('change', function(e){
	  var district_id = e.target.value;
	  $.get('/get-subdistricts/' + district_id,function(data) {
		$('#subdistrict').empty();
		$('#subdistrict').append('<option value="">Select a Sub Place</option>');

		$.each(data, function(index, subdistrictsObj){
		  $('#subdistrict').append('<option value="'+ subdistrictsObj.id +'">'+ subdistrictsObj.name +'</option>');
		})
	  });
	});
  </script>
  <script src="{{asset('front/js/select2.min.js')}}"></script>
  <script>
	$(document).ready(function() {
		$("#service").select2();
		$("#district").select2();
		$("#subdistrict").select2();
	});
  </script>
@endsection