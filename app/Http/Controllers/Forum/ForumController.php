<?php
namespace App\Http\Controllers\Forum;
use App\Category;
use App\Forum;
use App\Forumcomment;
use Validator;
use Illuminate\Http\Response;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
class ForumController extends Controller
{
    public function index()
    {
        //$categories = Category::where('isActive','=','Active')->orderby('name','asc')->get();
        //return view('forum.home',compact($categories));
        $forumPosts = Forum::where('isActive','Active')->latest()->paginate(10);
        $commentCount = Forumcomment::count();
        return view('forum.home',['forumPosts'=>$forumPosts,'commentCount'=>$commentCount]);
    }
    public function create()
    {
        $categories = Category::where('isActive','=','Active')->orderby('name','asc')->get();
        return view('forum.new',['categories'=>$categories]);
    }
    public function store(Request $request)
    {
        if($request->ajax())
        {
            $validator = Validator::make($request->all(),[
                'name'=>'required|string|max:100',
                'email'=>'nullable|email|max:100',
                'title'=>'required||string',
                'description'=>'required|string',
                'category_id'=>'required'
            ]);
            if($validator->fails())
            {
                return response()->json(
                    [
                        'error'=>true,
                        'message'=>$validator->messages(),
                        'code'=>400
                    ],400);
            };


            $slug = str_replace(' ', '-', $request->title);
            $slug = strtolower($slug);
            //$unique_id = time().rand(100000,10000000);

            DB::table('forums')->insert([
                'slug'=>$slug,
                'name'=>$request->name,
                'title'=>$request->title,
                'category_id'=>$request->category_id,
                'description'=>$request->description,
                'email'=>$request->email
            ]);
            //return redirect('/discuss/post/create')->with('message','You have successfully uploaded you post, we will review it and after then we publish it in public!');
            return response("You have successfully uploaded you post, we will review it and after then we publish it in public!, Thank you.");
        }
    }
    public function storeComment(Request $request)
    {
        $validator = Validator::make($request->all(),[
            'name'=>'required|string|max:100',
            'reply'=>'required|string',
        ]);
        if($validator->fails())
        {
            return response()->json(
                [
                    'error'=>true,
                    'message'=>$validator->messages(),
                    'code'=>400
                ],400);
        };
        //$unique_id = time().rand(100000,10000000);

        DB::table('forumcomments')->insert([
            'name'=>$request->name,
            'post_id'=>$request->post_id,
            'reply'=>$request->reply
        ]);
        //return redirect('/discuss/post/create')->with('message','You have successfully uploaded you post, we will review it and after then we publish it in public!');
        //return Redirect::back()->with('message','Thanks for your reply !');
        return redirect()->back()->with('message','Thanks for your reply !');
        
    }
    public function show($id)
    {
        $post = Forum::findOrfail($id);
        $views = $post->views;
        ++$views;
        DB::table('forums')
            ->where('id', $id)
            ->update(['views' => $views]);
        $comments = Forumcomment::where('post_id',$id)->latest()->paginate(8);
        return view('forum.single',['post'=>$post,'comments'=>$comments]);
    }
    public function category_posts($catId)
    {
        $posts = Forum::where('category_id', $catId)
           ->orderBy('created_at', 'desc')
           ->paginate(10);
        return view('forum.category_posts',['forumPosts'=> $posts]);
    }
}
