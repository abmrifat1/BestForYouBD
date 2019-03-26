@extends('forum.master')
@section('content')
    <div class="col-lg-8 col-md-8">
        <!-- POST -->
        <div class="post beforepagination">
            <div class="topwrap">
                <div class="posttext pull-left">
                    @if($post->id % 2 == 0)
                        <img src="{{asset('forum/images/avatar.png')}}" alt="" style="margin-right:20px;margin-top:-10px;"/>
                    @else
                        <img src="{{asset('forum/images/avatar3.png')}}" alt="" style="margin-right:20px;margin-top:-10px;"/>
                    @endif
                    <h3 style="display:inline-block;">{{$post->name}}</h3>
                    <h2>{{$post->title}}</h2>
                    <p>{{$post->description}}</p>
                </div>
                <div class="clearfix"></div>
            </div>                              
            <div class="postinfobot">

                <div class="likeblock pull-left">
                    <a href="#" class="up"><i class="fa fa-thumbs-o-up"></i>25</a>
                    <a href="#" class="down"><i class="fa fa-thumbs-o-down"></i>3</a>
                </div>

                <div class="prev pull-left">                                        
                    <a href="#"><i class="fa fa-reply"></i></a>
                </div>

                <div class="posted pull-left"><i class="fa fa-clock-o"></i> Posted on : {{$post->created_at->toDayDateTimeString()}}</div>

                <div class="next pull-right">                                        
                    <a href="#"><i class="fa fa-share"></i></a>

                    <a href="#"><i class="fa fa-flag"></i></a>
                </div>

                <div class="clearfix"></div>
            </div>
        </div><!-- POST -->


        <!--Replay POST -->
        <div class="post">
            <form action="{{url('/discuss/comment')}}" class="form" method="post" id="commentForm">
                <div class="topwrap">
                    <div class="posttext pull-left">
                            <h2>Post a Reply</h2>
                            <div class="form-group">
                                <input type="text" name="name" placeholder="Your Name *" class="form-control" autocomplete="on"/>
                                <input type="hidden" name="forum_id" value="{{$post->id}}"/>
                                <span class="error">
                                    <strong style="color: red;" id="nameErrorMssg"></strong>
                                </span>
                            </div>
                            <div class="form-group">
                                <textarea name="reply" class="form-control" id="reply" placeholder="Type your message here *"></textarea>
                                <span class="error">
                                    <strong style="color: red;" id="replyErrorMsg"></strong>
                                </span>
                            </div>
                    </div>
                    <div class="clearfix"></div>
                </div>                              
                <div class="postinfobot">

                    <div class="notechbox pull-left">
                        <!--<input type="checkbox" name="note" id="note" class="form-control" />-->
                    </div>

                    <div class="pull-left">
                        <!--<label for="note"> Email me when some one post a reply</label>-->
                    </div>

                    <div class="pull-right postreply">
                        <div class="pull-left smile"><a href="javascript:void(0)"><i class="fa fa-smile-o"></i></a></div>
                        <div class="pull-left"><button type="submit" class="btn btn-primary">Post Reply</button></div>
                        <div class="clearfix"></div>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </form>
        </div><!-- Replay POST -->
        @foreach ($comments as $comment)
        <!-- POST -->
        <div class="post">
            <div class="topwrap">
                <div class="posttext pull-left">
                    @if($comment->id % 2 == 0)
                        <img src="{{asset('forum/images/avatar4.png')}}" alt="" style="margin-right:20px;margin-top:-10px;"/>
                    @else
                        <img src="{{asset('forum/images/avatar6.png')}}" alt="" style="margin-right:20px;margin-top:-10px;"/>
                    @endif
                    <h3 style="display:inline-block;">{{$comment->name}}</h3>
                    <p>{{$comment->reply}}</p>
                </div>
                <div class="clearfix"></div>
            </div>                              
            <div class="postinfobot">

                <div class="likeblock pull-left">
                    <a href="#" class="up"><i class="fa fa-thumbs-o-up"></i>10</a>
                    <a href="#" class="down"><i class="fa fa-thumbs-o-down"></i>1</a>
                </div>

                <div class="prev pull-left">                                        
                    <a href="#"><i class="fa fa-reply"></i></a>
                </div>

                <div class="posted pull-left"><i class="fa fa-clock-o"></i> Posted on : <?php if(!empty($comment->created_at)) echo $comment->created_at->toDayDateTimeString()?></div>

                <div class="next pull-right">                                        
                    <a href="#"><i class="fa fa-share"></i></a>

                    <a href="#"><i class="fa fa-flag"></i></a>
                </div>

                <div class="clearfix"></div>
            </div>
        </div><!-- POST -->
        @endforeach
        {{ $comments->links() }}
    </div>
@endsection
@section('script')

<script>
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
    $('#commentForm').on('submit',function (e) {
        e.preventDefault();
        var data = $(this).serialize();
        var url = $(this).attr('action');
        $.ajax({
            type:'post',
            url:url,
            data:data,
            dataTy:'json',
            success:function (data) {
                $('#commentForm').trigger('reset');
                swal({
                    title: "You have successfully added your reply, Thank You?",
                    icon: "success",
                })
                .then((value) => {
                    if (value) {
                        $('#questionModal').modal('hide');
                        location.reload();
                    }else{
                        $('#questionModal').modal('hide');
                        location.reload();
                    }
                });
                /*swal({
                    title: "You have successfully added your reply, Thank You?",
                    icon: "success",
                    buttons: true,
                    })
                    .then((willDelete) => {
                    if (willDelete) {
                        $('#questionModal').modal('hide');
                        location.reload();
                    }
                });*/
            },
            error:function (errorData) {
                var error = errorData.responseJSON.message;
                $('#nameErrorMssg').html('');
                $('#replyErrorMsg').html('');

                $('#nameErrorMssg').append(error['name']);
                $('#replyErrorMsg').append(error['reply']);
            }
        });
    });
    
</script>
<script>
        <!--
        function timedRefresh(timeoutPeriod) {
            setTimeout("location.reload(true);",timeoutPeriod);
        }
        //window.onload = timedRefresh(5000);
</script>
@endsection