<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>@yield('title')</title>
        <!-- CSRF Token -->
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <!-- Bootstrap -->
        <link href="{{asset('forum/css/bootstrap.min.css')}}" rel="stylesheet">

        <!-- Custom -->
        <link href="{{asset('forum/css/custom.css') }}" rel="stylesheet">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
          <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
          <![endif]-->

        <!-- fonts -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="{{asset('forum/css/font-awesome.min.css')}}">

        <!-- CSS STYLE-->
        <link rel="stylesheet" type="text/css" href="{{asset('forum/css/style.css') }}" media="screen" />

        <!-- SLIDER REVOLUTION 4.x CSS SETTINGS -->
        <link rel="stylesheet" type="text/css" href="{{asset('forum/css/settings.css') }}" media="screen" />

    </head>
    <body>
        <div class="container-fluid">
            <div class="headernav">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-2 col-xs-2 col-sm-2 col-md-2 logo "><a href="{{url('/discuss')}}" style="text-decoration:none;font-weight:600;font-size:18px;"><img src="{{asset('forum/images/logo.jpg')}}" alt=""  />  BestInBD</a></div>
                        <div class="col-lg-6 col-xs-6 col-sm-6 search col-md-6">
                            <div class="wrap">
                                <form action="#" method="post" class="form searchForm">
                                    <div class="pull-left txt"><input type="text" class="form-control" placeholder="Search Topics"></div>
                                    <div class="pull-right"><button class="btn btn-default" type="button"><i class="fa fa-search"></i></button></div>
                                    <div class="clearfix"></div>
                                </form>
                            </div>
                        </div>
                        <div class="col-lg-4 col-xs-4 col-sm-4 col-md-4 avt">
                            <a href="{{url('/discuss/post/create')}}" class="btn btn-primary">Ask Question</a>
                        </div>
                    </div>
                </div>
            </div>
            <section class="content">
                <div class="container">
                    <div class="row" style="padding-top:20px;">
                        @yield('content')
                        <div class="col-lg-4 col-md-4">

                            <!-- -->
                            <div class="sidebarblock">
                                <h3>Categories</h3>
                                <div class="divline"></div>
                                <div class="blocktxt">
                                    <ul class="cats">
                                        @foreach ($categories as $category)
                                            <li><a href="{{ url('/discuss/category-post/'.$category->id)}}">{{ $category->name }} <span class="badge pull-right">5</span></a></li>
                    
                                        @endforeach
                                    </ul>
                                </div>
                            </div>

                            <!-- -->
                            <div class="sidebarblock">
                                <h3>Poll of the Week</h3>
                                <div class="divline"></div>
                                <div class="blocktxt">
                                    <p>Which game you are playing this week?</p>
                                    <form action="#" method="post" class="form">
                                        <table class="poll">
                                            <tr>
                                                <td>
                                                    <div class="progress">
                                                        <div class="progress-bar color1" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 90%">
                                                            Call of Duty Ghosts
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="chbox">
                                                    <input id="opt1" type="radio" name="opt" value="1">  
                                                    <label for="opt1"></label>  
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="progress">
                                                        <div class="progress-bar color2" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 63%">
                                                            Titanfall
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="chbox">
                                                    <input id="opt2" type="radio" name="opt" value="2" checked>  
                                                    <label for="opt2"></label>  
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <div class="progress">
                                                        <div class="progress-bar color3" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 75%">
                                                            Battlefield 4
                                                        </div>
                                                    </div>
                                                </td>
                                                <td class="chbox">
                                                    <input id="opt3" type="radio" name="opt" value="3">  
                                                    <label for="opt3"></label>  
                                                </td>
                                            </tr>
                                        </table>
                                    </form>
                                    <p class="smal">Voting ends on 19th of October</p>
                                </div>
                            </div>


                        </div>
                    </div>
                </div>
            </section>

            <footer>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-1 col-xs-3 col-sm-2 logo "><a href="#"><img src="images/logo.jpg" alt=""  /></a></div>
                        <div class="col-lg-8 col-xs-9 col-sm-5 ">Copyrights {{ now()->year }}, BestForYouBD Team</div>
                        <div class="col-lg-3 col-xs-12 col-sm-5 sociconcent">
                            <ul class="socialicons">
                                <li><a href="#"><i class="fa fa-facebook-square"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fa fa-cloud"></i></a></li>
                                <li><a href="#"><i class="fa fa-rss"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </footer>
        </div>

        <!-- get jQuery from the google apis -->
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.1/jquery.js"></script>
 

        <!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
        <!-- SLIDER REVOLUTION 4.x SCRIPTS  -->
        <script type="text/javascript" src="js/jquery.themepunch.plugins.min.js"></script>
        <script type="text/javascript" src="js/jquery.themepunch.revolution.min.js"></script>

        <script src="{{asset('forum/js/bootstrap.min.js')}}"></script>


        <!-- LOOK THE DOCUMENTATION FOR MORE INFORMATIONS -->
        <script type="text/javascript">
            $('.alert').delay(5000).slideUp(1500,function () {
                                $(this).alert('close');
                            });
            var revapi;

            jQuery(document).ready(function() {
                "use strict";
                revapi = jQuery('.tp-banner').revolution(
                        {
                            delay: 15000,
                            startwidth: 1200,
                            startheight: 278,
                            hideThumbs: 10,
                            fullWidth: "on"
                        });

            });	//ready

        </script>

        <!-- END REVOLUTION SLIDER -->

        @yield('script')
        <script>
                $.ajaxSetup({
                    headers: {
                        'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                    }
                });
                $('#postCreate').on('submit',function (e) {
                    e.preventDefault();
                    var data = $(this).serialize();
                    var url = $(this).attr('action');
                    $.ajax({
                        type:'post',
                        url:url,
                        data:data,
                        dataTy:'json',
                        success:function (data) {
                            $('#postCreate').trigger('reset');
                            $('#successMessage').text(data);
                            $('.alert').delay(5000).slideUp(1500,function () {
                                $(this).alert('close');
                            });
                        },
                        error:function (errorData) {
                            var error = errorData.responseJSON.message;
                            var nameErrors = error['name'];
                            var emailErrors = error['email'];
                            var titleErrors = error['title'];
                            var descriptionErrors = error['description'];
                            var categoryErrors = error['category_id'];
                            $('#nameErrorMsg').append(error['name']);
                            for(var i in nameErrors)
                            {
                                $nameError = nameErrors[i];
                                $('#nameErrorMsg').append($nameError);
                            }
                            for(var i in emailErrors)
                            {
                                $emailError = emailErrors[i];
                                $('#emailErrorMsg').append($emailError);
                            }
                            for(var i in titleErrors)
                            {
                                $titleError = titleErrors[i];
                                $('#titleErrorMsg').append($titleError);
                            }
                            for(var i in descriptionErrors)
                            {
                                $descriptionError = descriptionErrors[i];
                                $('#descriptionErrorMsg').append($descriptionError);
                            }
                            for(var i in categoryErrors)
                            {
                                $categoryError = categoryErrors[i];
                                $('#categoryErrorMsg').append($categoryError);
                            }
                        }
                    });
                });
        </script>
    </body>
</html>