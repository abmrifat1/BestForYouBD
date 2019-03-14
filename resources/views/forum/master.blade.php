<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>@yield('title')</title>
        <!-- CSRF Token -->
        <meta name="csrf-token" content="{{ csrf_token() }}">
        <link href="{{asset('img/favicon.ico')}}" rel="icon" type="image/x-icon" />
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
                        <div class="col-lg-2 col-xs-2 col-sm-2 col-md-2 logo "><a href="{{url('/discuss')}}" style="text-decoration:none;font-weight:600;font-size:18px;"><img src="{{asset('forum/images/bestforyoubd.png')}}" alt=""  />  BestInBD</a></div>
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
                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#questionModal">
                                        Ask a question!
                                </button>
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
                                            <li><a href="{{ url('/discuss/category-post/'.$category->id)}}">{{ $category->name }} <span class="badge pull-right">{{$category->forum_posts_count}}</span></a></li>
                    
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
        <!-- Modal -->
        <div class="modal fade" id="questionModal" tabindex="-1" role="dialog" aria-labelledby="questionLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="questionLabel" style="font-size:20px;font-weight:600;">Question Information</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <form action="{{url('/discuss/post')}}" id='postCreate'>
                        <div class="modal-body">
                            <div class="form-group">
                                <label for="name" class="col-form-label">Name:</label>
                                <input type="text" name="name" class="form-control" id="name">
                                <span class="error">
                                    <strong style="color: red;" id="nameErrorMsg"></strong>
                                </span>
                            </div>
                            <div class="form-group">
                                <label for="email" class="col-form-label">E-mail:</label>
                                <input type="email" name="email" class="form-control" id="email">
                                <span class="error">
                                    <strong style="color: red;" id="emailErrorMsg"></strong>
                                </span>
                            </div>
                            <div class="form-group">
                                <label for="degree" class="col-form-label">Category:</label>
                                <select name="category_id" class="form-control">
                                    <option>Select a category</option>
                                    @foreach($categories as $category)
                                        <option value="{{$category->id}}">{{$category->name}}</option>
                                    @endforeach
                                </select>
                                <span class="error">
                                    <strong style="color: red;" id="categoryErrorMsg"></strong>
                                </span>
                            </div>
                            <div class="form-group">
                                <label for="description" class="col-form-label">Question</label>
                                <textarea type="text" name="description" class="form-control" id="description" rows="6"></textarea>
                                <span class="error">
                                    <strong style="color: red;" id="descriptionErrorMsg"></strong>
                                </span>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-success">Create</button>
                            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!-- End form modal -->
        <!-- get jQuery from the google apis -->
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="{{asset('forum/js/bootstrap.min.js')}}"></script>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
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
                            swal({
                            title: "Good job!",
                            text: "You have successfully added you question, we will review it quickly and after then we will publish it in public and send you a confirmation email!, Thank you.",
                            icon: "success",
                            });
                            $('#questionModal').modal('hide');
                        },
                        error:function (errorData) {
                            var error = errorData.responseJSON.message;
                            $('#nameErrorMsg').html('');
                            $('#emailErrorMsg').html('');
                            $('#descriptionErrorMsg').html('');
                            $('#categoryErrorMsg').html('');

                            $('#nameErrorMsg').append(error['name']);
                            $('#emailErrorMsg').append(error['email']);
                            $('#descriptionErrorMsg').append(error['description']);
                            $('#categoryErrorMsg').append(error['email']);
                        }
                    });
                });
        </script>
    </body>
</html>