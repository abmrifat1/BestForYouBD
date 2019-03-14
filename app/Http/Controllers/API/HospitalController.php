<?php

namespace App\Http\Controllers\API;
use App\Hospital;
use App\HospitalDepartment;
use DB;
use App\HospitalDepartmentRelation;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class HospitalController extends Controller
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
            return Hospital::with('departments')->orderBy('name','asc')->paginate(10);
        }
    }
    public function getDept()
    {
        return HospitalDepartment::where('isActive','=','Active')->orderby('name','asc')->get();
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
        ]);
        if(!empty($request->main_img)){
            $name = time().rand(50,5000).'.' . explode('/', explode(':', substr($request->main_img, 0, strpos($request->main_img, ';')))[1])[1];
            \Image::make($request->main_img)->save(public_path('img/hospitals/').$name);
            $request->merge(['main_img' => $name]);
        }else{
            $request->merge(['main_img' => 'default.jpg']);
        }
        if(!empty($request->gallery_img_1)){
            $name = time().rand(50,5000).'.' . explode('/', explode(':', substr($request->gallery_img_1, 0, strpos($request->gallery_img_1, ';')))[1])[1];
            \Image::make($request->gallery_img_1)->save(public_path('img/hospitals/').$name);
            $request->merge(['gallery_img_1' => $name]);
        }else{
            $request->merge(['gallery_img_1' => 'default.jpg']);
        }
        if(!empty($request->gallery_img_2)){
            $name = time().rand(50,5000).'.' . explode('/', explode(':', substr($request->gallery_img_2, 0, strpos($request->gallery_img_2, ';')))[1])[1];
            \Image::make($request->gallery_img_2)->save(public_path('img/hospitals/').$name);
            $request->merge(['gallery_img_2' => $name]);
        }else{
            $request->merge(['gallery_img_2' => 'default.jpg']);
        }
        $hospital = Hospital::create([
            'name' => $request['name'],
            'estDate' => $request['estDate'],
            'address' => $request['address'],
            'city' => $request['city'],
            'main_img' => $request['main_img'],
            'gallery_img_1' => $request['gallery_img_1'],
            'gallery_img_2' => $request['gallery_img_2'],
            'ownership_type' => $request['ownership_type'],
            'isActive' => $request['isActive'],
        ]);
        $hospital->departments()->sync($request->department);
        return ['update' => "Hospital information stored"];
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function getHosDept($id)
    {
        $hospital = HospitalDepartmentRelation::where('hospital_id',$id)
        ->leftJoin('hospital_departments','hospital_department_relations.hospital_department_id','=','hospital_departments.id')
        ->select('hospital_department_relations.*',
                'hospital_departments.name')
        ->orderBy('hospital_departments.name', 'ASC')
        ->get();
        return $hospital;
    }
    public function updateHospitalDepartment(Request $request)
    {
        $hosDept = HospitalDepartmentRelation::where('hospital_id', $request->hospital_id)
           ->where('hospital_department_id', $request->hospital_department_id)
           ->update($request->all());
           return ['update' => "Hospital Department information stored"];
    }
    public function addHospitalDepartment(Request $request,$hospital_id)
    {
        $request->merge(['hospital_id' => $hospital_id]);
        $hosDept = HospitalDepartmentRelation::where('hospital_id', $request->hospital_id)
        ->where('hospital_department_id', $request->department_id)
        ->first();
        if (!$hosDept) {
            HospitalDepartmentRelation::create($request->all());
            return ['success' => "Hospital Department information updated"];
        }else{
            return redirect()->back()->withErrors("Hospital Department Already Stored");
        }
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
        $hospital = Hospital::findOrFail($id);
        $this->validate($request,[
            'name'=>'required|string|max:191'
        ]);
        $currentPhoto = $hospital->main_img;
        
        if($request->main_img != $currentPhoto){
            $name = time().rand(50,5000).'.' . explode('/', explode(':', substr($request->main_img, 0, strpos($request->main_img, ';')))[1])[1];
            \Image::make($request->main_img)->save(public_path('img/hospitals/').$name);
            $request->merge(['main_img' => $name]);
            $hospitalPhoto = public_path('img/hospitals/').$currentPhoto;
            if(file_exists($hospitalPhoto)){
                @unlink($hospitalPhoto);
            }
        }
        $currentPhoto = $hospital->gallery_img_1;
        if($request->gallery_img_1 != $currentPhoto){
            $name = time().rand(50,5000).'.' . explode('/', explode(':', substr($request->gallery_img_1, 0, strpos($request->gallery_img_1, ';')))[1])[1];

            \Image::make($request->gallery_img_1)->save(public_path('img/hospitals/').$name);
            $request->merge(['gallery_img_1' => $name]);
            $hospitalPhoto = public_path('img/hospitals/').$currentPhoto;
            if(file_exists($hospitalPhoto)){
                @unlink($hospitalPhoto);
            }
        }
        $currentPhoto = $hospital->gallery_img_2;
        if($request->gallery_img_2 != $currentPhoto){
            $name = time().rand(50,5000).'.' . explode('/', explode(':', substr($request->gallery_img_2, 0, strpos($request->gallery_img_2, ';')))[1])[1];

            \Image::make($request->gallery_img_2)->save(public_path('img/hospitals/').$name);
            $request->merge(['gallery_img_2' => $name]);

            $hospitalPhoto = public_path('img/hospitals/').$currentPhoto;
            if(file_exists($hospitalPhoto)){
                @unlink($hospitalPhoto);
            }
        }
        $hospital->update($request->all());
        if(!empty($request->department)){
            $hospital->departments()->sync($request->department);
        }
        return ['update' => "Hospital information updated"];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroyHospitalDepartment(Request $request)
    {
        DB::table('hospital_department_relations')->where('hospital_id', $request->hospital_id)->where('hospital_department_id',$request->hospital_department_id)->delete();
        return ['Message' => "Hospital department information updated"];
    }
    public function destroy($id)
    {
        $hospital = Hospital::findOrFail($id);
        if($hospital->main_img != 'default.jpg'){
            $hospitalPhoto = public_path('img/hospitals/').$hospital->main_img;
            if(file_exists($hospitalPhoto)){
                @unlink($hospitalPhoto);
            }
        }
        if($hospital->gallery_img_1 != 'default.jpg'){
            $hospitalPhoto = public_path('img/hospitals/').$hospital->gallery_img_1;
            if(file_exists($hospitalPhoto)){
                @unlink($hospitalPhoto);
            }
        }
        if($hospital->gallery_img_2 != 'default.jpg'){
            $hospitalPhoto = public_path('img/hospitals/').$hospital->gallery_img_2;
            if(file_exists($hospitalPhoto)){
                @unlink($hospitalPhoto);
            }
        }
        $hospital->delete();
        return ['delete'=>"Deleted successfully"];
    }
    public function search(){

        if ($search = \Request::get('q')) {
            $users = Hospital::where(function($query) use ($search){
                $query->where('name','LIKE',"%$search%")
                    ->orWhere('email','LIKE',"%$search%");
            })->paginate(20);
        }else{
            $users = Hospital::latest()->paginate(5);
        }

        return $users;
    }
}
