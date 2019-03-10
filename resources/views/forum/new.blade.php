@extends('forum.master')
@section('title')
Add New Discuss - BestInBd
@endsection
@section('content')
    <div class="col-lg-8 col-md-8">
        @if($message = Session::get('message'))
            <p class="alert" style="font-weight: 500;font-size: 16px;background-color: #61d864;padding:12px;color:#fff;margin-top: 1px;position:fixed;right: 50px;z-index: 1">{{ $message }}</p>
        @endif
        <!-- POST -->
        <div class="post">
            <h2 style="color:green;" id="successMessage" class="alert">Write Down Your Question?</h2>
            <form action="{{url('/discuss/post')}}" class="form newtopic" method="post" id='postCreate'>
               
                <div class="topwrap">
                    <div class="posttext pull-left">

                        <div>
                            <input type="text" name="name" placeholder="Your Name *" class="form-control" autocomplete="on" required/>
                            <span class="error">
                                    <strong style="color: red;" id="nameErrorMsg"></strong>
                            </span>
                        </div>
                        <div>
                            <small>(Optional) We will send you an email that will say your post is published or not</small>
                            <input type="text" name="email" placeholder="Your Email" class="form-control" />
                            <span class="error">
                                    <strong style="color: red;" id="emailErrorMsg"></strong>
                            </span>
                        </div>

                        <div class="row">
                            <div class="col-lg-12 col-md-12">
                                <select name="category_id" id="category"  class="form-control" required>
                                    <option value="" disabled selected>Select Category *</option>
                                    @foreach($categories as $category)
                                        <option value="{{$category->id}}">{{$category->name}}</option>
                                    @endforeach
                                </select>
                                <span class="error">
                                        <strong style="color: red;" id="categoryErrorMsg"></strong>
                                    </span>
                            </div>
                        </div>

                        <div>
                            <textarea name="description" id="desc" placeholder="Description *"  class="form-control" required></textarea>
                            <span class="error">
                                    <strong style="color: red;" id="descriptionErrorMsg"></strong>
                                </span>
                        </div>


                    </div>
                    <div class="clearfix"></div>
                </div>                              
                <div class="postinfobot">

                    <div class="pull-right postreply">
                        <div class="pull-left smile"><a href="#"><i class="fa fa-smile-o"></i></a></div>
                        <div class="pull-left"><input type="submit" class="btn btn-primary" value='Submit'></div>
                        <div class="clearfix"></div>
                    </div>


                    <div class="clearfix"></div>
                </div>
            </form>
        </div><!-- POST -->
    </div>
@endsection
@section('script')

@endsection