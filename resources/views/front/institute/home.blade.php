@extends('front.master')
@section('content')

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
										<input type="checkbox" id="scf{{$department->id}}" value="{{$department->id}}" name=department_id[]/>
										<label for="scf{{$department->id}}">{{$department->name}}</label>
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
									</ul>
								</form> <a href="#!" class="list-view-more-btn">view more</a> </div>
						</div>
						<!--==========End Sub Category Filter============-->
					</div>
					<div class="col-md-9 dir-alp-con-right">
						<div class="dir-alp-con-right-1">
							<div class="row">
								<!--LISTINGS-->
							<form action="{{url('/institute-compare')}}" method="POST">
								@csrf
								@foreach($institutes as $institute)
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
												<input type="checkbox" name="id[]" class="filled-in" value="{{ $institute->id }}" id="filled-{{ $institute->id }}"/>
												<label for="filled-{{ $institute->id }}"></label>
												
											</div>
										</div>
									</div>
									@endforeach
									<!--== BOTTOM FLOAT ICON ==-->
									<section>
										<div class="fixed-action-btn vertical">
											<button type="submit" class="btn-floating btn-large red pulse"> <i class="large material-icons">visibility</i> </button>
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
								{{$institutes->links()}}
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
@endsection