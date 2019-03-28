<?php

namespace App\Http\Controllers\API;

use App\Forum;
use App\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class ForumController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth:api');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (\Gate::allows('isAdminOrAuthorOrEditor')) {
            //return Forum::latest()->paginate(10);
            return Forum::orderBy('isActive','Pending')->orderBy('created_at','ASC')->paginate(10);
        }

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        
    }
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $Forum = Forum::findOrFail($id);
        $Forum->update($request->all());
        return ['update' => "Forum information updated"];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $Forum = Forum::findOrFail($id);
        $Forum->delete();
        return ['delete'=>"Deleted successfully"];
    }
    public function search(){
        if ($search = \Request::get('q')) {
            $forumPosts = Forum::where(function($query) use ($search){
                $query->where('name','LIKE',"%$search%");
                $query->orWhere('description','LIKE',"%$search%");
                $query->orWhere('isActive','LIKE',"%$search%");
            })->orderBy('isActive','Pending')->orderBy('created_at','ASC')->paginate(10);
        }else{
            $forumPosts = Forum::orderBy('isActive','Pending')->orderBy('created_at','ASC')->paginate(10);
        }

        return $forumPosts;
    }
}
