<?php

namespace App\Http\Controllers\API;

use App\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class CategoryController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth:api');
        //$this->middleware('auth')->except(['index', 'show']);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        if (\Gate::allows('isAdminOrAuthorOrEditor')) {
            return Category::latest()->paginate(8);
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
        $this->validate($request,[
           'name'=>'required|string|max:191',
           'isActive'=>'required',
        ]);
        $slug = trim(preg_replace('/\s+/', '', $request['name']));
        $slug = strtolower($slug);
        return Category::create([
            'name' => $request['name'],
            'slug' => $slug,
            'isActive' => $request['isActive'],
        ]);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
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
        $category = Category::findOrFail($id);
        $this->validate($request,[
            'name'=>'required|string|max:191',
        ]);
        $slug = trim(preg_replace('/\s+/', '', $request['name']));
        $slug = strtolower($slug);
        $request['slug'] = $slug;
        $category->update($request->all());
        return ['update' => "Category information updated"];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $category = Category::findOrFail($id);
        $category->delete();
        return ['delete'=>"Deleted successfully"];
    }
    public function search(){

        if ($search = \Request::get('q')) {
            $categories = Cateogry::where(function($query) use ($search){
                $query->where('name','LIKE',"%$search%");
            })->paginate(8);
        }else{
            $categories = Category::latest()->paginate(8);
        }

        return $categories;
    }
}
