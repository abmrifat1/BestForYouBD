@extends('front.master')
@section('style')
<style>
/*======================
    404 page
=======================*/

.page_404{ 
	padding:40px 0; 
	background:#fff; 
	font-family: 'Arvo', serif;
}
.page_404  img{ 
	width:100%;
}
.four_zero_four_bg{
 	background-image: url('/img/dribbble.gif');
    height: 400px;
    background-position: center;
 }
.four_zero_four_bg h1{
	font-size:80px;
}
.four_zero_four_bg h3{
	font-size:80px;
}
.link_404{			 
	color: #fff!important;
    padding: 10px 20px;
    background: #39ac31;
    margin: 20px 0;
    display: inline-block;
}
.contant_box_404{ 
	margin-top:-50px;
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
				<div class="ts-menu-2"><a href="/" class="t-bb">Best nN BD</a>
					
				</div>
				<!--SECTION: REGISTER,SIGNIN AND ADD YOUR BUSINESS-->
				<div class="ts-menu-6">
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
<section class="page_404">
	<div class="container">
		<div class="row">	
		<div class="col-sm-12 ">
		<div class="col-sm-10 col-sm-offset-1  text-center">
		<div class="four_zero_four_bg">
			<h1 class="text-center ">404</h1>
		
		
		</div>
		
		<div class="contant_box_404">
		<h3 class="h2">
		Look like you're not found anything
		</h3>
		
		<p>the service you are looking for not avaible!</p>
		
		<a href="/" class="link_404">Go to Home</a>
	</div>
		</div>
		</div>
		</div>
	</div>
</section>
@endsection
