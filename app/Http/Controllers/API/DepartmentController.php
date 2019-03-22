<?php

namespace App\Http\Controllers\API;
use App\Department;
use DB;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class DepartmentController extends Controller
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
        if (\Gate::allows('isAdmin') || \Gate::allows('isAuthor')) {
            $departments = DB::table('departments')
            ->join('institute_types','institute_types.id','=','departments.institute_type_id')
            ->select('departments.*','institute_types.name as instituteTypeName')
            ->orderBy('institute_types.id','asc')
            ->orderBy('departments.name','asc')
            ->paginate(20);
            return $departments;
        }

    }
    public function getInstituteTypes()
    {
        return DB::table('institute_types')->orderBy('id','asc')->get();
    }
    
    public function getInstituteDepartments($institute_type_id)
    {
        return Department::where('institute_type_id',$institute_type_id)->orderby('name','asc')->get();
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
           'name'=>'required|string|max:60',
           'institute_type_id'=>'required',
        ]);
        return Department::create($request->all());
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
        $category = Department::findOrFail($id);
        $this->validate($request,[
            'name'=>'required|string|max:60',
            'institute_type_id'=>'required',
        ]);
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
        $category = Department::findOrFail($id);
        $category->delete();
        return ['delete'=>"Deleted successfully"];
    }
    public function search(){

        if ($search = \Request::get('q')) {
            $departments = Department::where(function($query) use ($search){
                $query->where('name','LIKE',"%$search%");
            })->orderBy('name','asc')->paginate(20);
        }else{
            $departments = Department::orderBy('name','asc')->paginate(20);
        }

        return $departments;
    }
}
