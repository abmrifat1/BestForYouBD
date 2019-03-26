<?php
namespace App\Http\Controllers\Forum;
use App\Category;
use App\Forum;
use App\ForumComments;
use Validator;
use Illuminate\Http\Response;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
class ForumController extends Controller
{
    public function index()
    {
        $forumPosts = Forum::withCount('comments')->where('isActive','=','Active')->latest()->paginate(15);
        return view('forum.home',['forumPosts'=>$forumPosts]);
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
                'category_id'=>'required',
                'description'=>'required|string',
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

            DB::table('forums')->insert([
                'name'=>$request->name,
                'category_id'=>$request->category_id,
                'description'=>$request->description,
            ]);
            //return redirect('/discuss/post/create')->with('message','You have successfully uploaded you post, we will review it and after then we publish it in public!');
            return ['success'=> "You question submitted"];
        }
    }
    public function storeComment(Request $request)
    {
        if($request->ajax())
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
            //ForumComments::insert($request->all());
            DB::table('forum_comments')->insert([
                'name'=>$request->name,
                'forum_id'=>$request->forum_id,
                'reply'=>$request->reply
            ]);
            return ['message','Thanks for your reply !'];
        }
    }
    public function show($id)
    {
        $post = Forum::findOrfail($id);
        DB::table('forums')->where('id',$id)->increment('views');
        $comments = ForumComments::where('forum_id',$id)->latest()->paginate(8);
        return view('forum.single',['post'=>$post,'comments'=>$comments]);
    }
    public function category_posts($catId)
    {
        $posts = Forum::where('category_id', $catId)->where('isActive','=','Active')->latest()->paginate(15);
        return view('forum.category_posts',['forumPosts'=> $posts]);
    }
    public function searchQuestion(Request $request)
    {
        $id = $request->id;
        return redirect('discuss/post/'.$id);
    }
}
