<?php

namespace App\Http\Controllers\API;
use App\HospitalDepartment;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class HospitalDepartmentController extends Controller
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
            return HospitalDepartment::orderby('name','asc')->paginate(8);
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
        $slug = trim(preg_replace('/\s+/', '-', $request['name']));
        $slug = strtolower($slug);
        return HospitalDepartment::create([
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
        $category = HospitalDepartment::findOrFail($id);
        $this->validate($request,[
            'name'=>'required|string|max:191',
            'isActive'=>'required',
        ]);
        if($category->name != $request->name){

            $slug = trim(preg_replace('/\s+/', '-', $request['name']));
            $slug = strtolower($slug);
            $request['slug'] = $slug;
        }
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
        $category = HospitalDepartment::findOrFail($id);
        $category->delete();
        return ['delete'=>"Deleted successfully"];
    }
    public function search(){

        if ($search = \Request::get('q')) {
            $hospitalDepartments = HospitalDepartment::where(function($query) use ($search){
                $query->where('name','LIKE',"%$search%");
                $query->orWhere('isActive','LIKE',"%$search%");
            })->orderby('name','asc')->paginate(10);
        }else{
            $hospitalDepartments = HospitalDepartment::orderby('name','asc')->paginate(10);
        }

        return $hospitalDepartments;
    }
}
