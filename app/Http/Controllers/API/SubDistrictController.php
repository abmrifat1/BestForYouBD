<?php

namespace App\Http\Controllers\API;
use App\SubDistrict;  
use App\District;  
use DB;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class SubDistrictController extends Controller
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
            return DB::table('sub_districts')
            ->join('districts','districts.id','=','sub_districts.district_id')
            ->orderby('districts.name','asc')
            ->orderby('sub_districts.name','asc')
            ->select('sub_districts.*','districts.name as districtName')
            ->paginate(20);
        }

    }
    public function getDistrict()
    {
        return District::orderby('name','asc')->get();
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
           'district_id'=>'required'
        ]);
        return SubDistrict::create($request->all());
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
        $sub_district = SubDistrict::findOrFail($id);
        $this->validate($request,[
            'name'=>'required|string|max:191',
            'district_id'=>'required'
        ]);
        $sub_district->update($request->all());
        return ['update' => "Information updated"];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $sub_district = SubDistrict::findOrFail($id);
        $sub_district->delete();
        return ['delete'=>"Deleted successfully"];
    }
    public function search(){

        if ($search = \Request::get('q')) {
            $sub_districts = DB::table('sub_districts')
            ->join('districts','districts.id','=','sub_districts.district_id')
            ->where(function($query) use ($search){
                $query->where('districts.name','LIKE',"%$search%")
                ->orWhere('sub_districts.name','LIKE',"%$search%");
            })
            ->orderby('districts.name','asc')
            ->orderby('sub_districts.name','asc')
            ->select('sub_districts.*','districts.name as districtName')
            ->paginate(20);
        }else{
            $sub_districts = DB::table('sub_districts')
            ->join('districts','districts.id','=','sub_districts.district_id')
            ->orderby('districts.name','asc')
            ->orderby('sub_districts.name','asc')
            ->select('sub_districts.*','districts.name as districtName')
            ->paginate(20);
        }

        return $sub_districts;
    }
}