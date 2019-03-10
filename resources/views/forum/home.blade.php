@extends('forum.master')
@section('title')
Discussion Forum - BestInBd
@endsection
@section('content')
    <div class="col-lg-8 col-md-8">
        <!-- POST -->
        @foreach($forumPosts as $post)
        <div class="post">
            <div class="wrap-ut pull-left">
                <div class="posttext pull-left">
                @if($post->id % 2 == 0)
                    <img src="{{asset('forum/images/avatar.png')}}" alt="" style="margin-right:20px;margin-top:-10px;"/>
                @else
                    <img src="{{asset('forum/images/avatar2.png')}}" alt="" style="margin-right:20px;margin-top:-10px;"/>
                @endif
                    <h2 class="questioner_name"><a href="{{ url('/discuss/post/'.$post->id)}}" style="text-decoration:none">{{$post->name}}</a></h2>
                    <a href="{{ url('/discuss/post/'.$post->id)}}" class="post_description">{{str_limit($post->description,250)}}</a>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="postinfo pull-left" title="Answer of peoples">
                <div class="comments">
                    <div class="commentbg">
                        {{$commentCount}}
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