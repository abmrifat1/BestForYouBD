@extends('forum.master')
@section('title')
Discussion Forum - BestInBd
@endsection
@section('content')
    <div class="col-lg-8 col-md-8">
        <!-- POST -->
        <h2></h2>
        @foreach($forumPosts as $post)
        <div class="post">
            <div class="wrap-ut pull-left">
                <div class="posttext pull-left">
                    <img src="{{asset('forum/images/avatar.png')}}" alt="" style="margin-right:20px;margin-top:-10px;"/>
                    <h3 style="display:inline-block"><a href="{{ url('/discuss/post/'.$post->id)}}" style="text-decoration:none;display:inline-block">{{$post->name}}</a></h3>
                    <h2><a href="{{ url('/discuss/post/'.$post->id)}}">{{$post->title}}</a></h2>
                    <a href="{{ url('/discuss/post/'.$post->id)}}" style="text-decoration:none;">{{$post->description}}.</a>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="postinfo pull-left">
                <div class="comments">
                    <div class="commentbg">
                        89
                        <div class="mark"></div>
                    </div>

                </div>
                <div class="views"><a href="{{ url('/discuss/post/'.$post->id)}}" style="text-decoration:none;"><i class="fa fa-eye"></i> {{$post->views}}</a></div>
                <div class="time"><i class="fa fa-clock-o"></i> {{$post->created_at->diffForHumans()}}</div>                                    
            </div>
            <div class="clearfix"></div>
        </div><!-- POST -->
        @endforeach
        {{ $forumPosts->links() }}
    </div>
@endsection