<?php

namespace App\Http\Controllers\API;
use App\Institute;
use App\Department;
use DB;
use App\InstituteDepartments;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class InstituteController extends Controller
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
        if (\Gate::allows('isAdminOrAuthorOrEditor')) 
        {
            return Institute::with('departments')->orderBy('name','asc')->paginate(20);
        }
    }
    public function getDept()
    {
        return Department::where('isActive','=','Active')->orderby('name','asc')->get();
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
           'main_img'=>'required',
           'institute_type_id'=>'required',
           'district_id'=>'required',
           'sub_district_id'=>'required',
           'department'=>'required',
        ]);
        if(!empty($request->main_img)){
            $name = time().rand(50,5000).'.' . explode('/', explode(':', substr($request->main_img, 0, strpos($request->main_img, ';')))[1])[1];
            \Image::make($request->main_img)->save(public_path('img/institutes/').$name);
            $request->merge(['main_img' => $name]);
        }else{
            $request->merge(['main_img' => 'default.jpg']);
        }
        if(!empty($request->gallery_img_1)){
            $name = time().rand(50,5000).'.' . explode('/', explode(':', substr($request->gallery_img_1, 0, strpos($request->gallery_img_1, ';')))[1])[1];
            \Image::make($request->gallery_img_1)->save(public_path('img/institutes/').$name);
            $request->merge(['gallery_img_1' => $name]);
        }else{
            $request->merge(['gallery_img_1' => 'default.jpg']);
        }
        if(!empty($request->gallery_img_2)){
            $name = time().rand(50,5000).'.' . explode('/', explode(':', substr($request->gallery_img_2, 0, strpos($request->gallery_img_2, ';')))[1])[1];
            \Image::make($request->gallery_img_2)->save(public_path('img/institutes/').$name);
            $request->merge(['gallery_img_2' => $name]);
        }else{
            $request->merge(['gallery_img_2' => 'default.jpg']);
        }
        $institute = Institute::create($request->all());
        /*$institute = Institute::create([
            'name' => $request['name'],
            'estDate' => $request['estDate'],
            'address' => $request['address'],
            'city' => $request['city'],
            'main_img' => $request['main_img'],
            'gallery_img_1' => $request['gallery_img_1'],
            'gallery_img_2' => $request['gallery_img_2'],
            'type' => $request['type'],
            'isActive' => $request['isActive'],
        ]);*/
        $institute->departments()->sync($request->department);
        return ['update' => "Institute information stored"];
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function getEduDept($id)
    {
        $institute = InstituteDepartments::where('institute_id',$id)
        ->leftJoin('departments','institute_departments.department_id','=','departments.id')
        ->select('institute_departments.*',
                'departments.name')
        ->orderBy('departments.name', 'ASC')
        ->get();
        return $institute;
    }
    public function updateEducationDepartment(Request $request)
    {
        $this->validate($request,[
            'cost'=>'required',
            'students'=>'required',
            'faculty_members'=>'required',
         ]);
        $eduDept = InstituteDepartments::where('institute_id', $request->institute_id)
           ->where('department_id', $request->department_id)
           ->update($request->all());
           return ['update' => "Institute Department information stored"];
    }
    public function addInstituteDepartment(Request $request,$institude_id)
    {
        $this->validate($request,[
            'cost'=>'required',
            'students'=>'required',
            'faculty_members'=>'required',
         ]);
        $request->merge(['institute_id' => $institude_id]);
        $insDept = InstituteDepartments::where('institute_id', $request->institute_id)
        ->where('department_id', $request->department_id)
        ->first();
        if (!$insDept) {
            InstituteDepartments::create($request->all());
            return ['success' => "Institute Department information updated"];
        }else{
            return redirect()->back()->withErrors("Institute Department Already Stored");
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
        $institute = Institute::findOrFail($id);
        $this->validate($request,[
            'name'=>'required|string|max:191',
            'district_id'=>'required',
            'sub_district_id'=>'required',
        ]);
        $currentPhoto = $institute->main_img;
        $currentInstituteTypeId = $institute->institute_type_id;
        
        if($request->main_img != $currentPhoto){
            $name = time().rand(50,5000).'.' . explode('/', explode(':', substr($request->main_img, 0, strpos($request->main_img, ';')))[1])[1];
            \Image::make($request->main_img)->save(public_path('img/institutes/').$name);
            $request->merge(['main_img' => $name]);
            $institudePhoto = public_path('img/institutes/').$currentPhoto;
            if(file_exists($institudePhoto)){
                @unlink($institudePhoto);
            }
        }
        $currentPhoto = $institute->gallery_img_1;
        if($request->gallery_img_1 != $currentPhoto){
            $name = time().rand(50,5000).'.' . explode('/', explode(':', substr($request->gallery_img_1, 0, strpos($request->gallery_img_1, ';')))[1])[1];

            \Image::make($request->gallery_img_1)->save(public_path('img/institutes/').$name);
            $request->merge(['gallery_img_1' => $name]);
            $institudePhoto = public_path('img/institutes/').$currentPhoto;
            if(file_exists($institudePhoto)){
                @unlink($institudePhoto);
            }
        }
        $currentPhoto = $institute->gallery_img_2;
        if($request->gallery_img_2 != $currentPhoto){
            $name = time().rand(50,5000).'.' . explode('/', explode(':', substr($request->gallery_img_2, 0, strpos($request->gallery_img_2, ';')))[1])[1];

            \Image::make($request->gallery_img_2)->save(public_path('img/institutes/').$name);
            $request->merge(['gallery_img_2' => $name]);

            $institudePhoto = public_path('img/institutes/').$currentPhoto;
            if(file_exists($institudePhoto)){
                @unlink($institudePhoto);
            }
        }
        $institute->update($request->all());
        if($currentInstituteTypeId != $institute->institute_type_id)
        {
            $institute->departments()->sync($request->department);
        }else 
        { 
            $institute->departments()->syncWithoutDetaching($request->department);
        }
        
        return ['update' => "institute information updated"];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroyEducationDepartment(Request $request)
    {
        DB::table('institute_departments')->where('institute_id', $request->institute_id)->where('department_id',$request->department_id)->delete();
        return ['Message' => "institute department information updated"];
    }
    public function destroy($id)
    {
        $user = Institute::findOrFail($id);
        if($user->main_img != 'default.jpg'){
            $institudePhoto = public_path('img/institutes/').$user->main_img;
            if(file_exists($institudePhoto)){
                @unlink($institudePhoto);
            }
        }
        if($user->gallery_img_1 != 'default.jpg'){
            $institudePhoto = public_path('img/institutes/').$user->gallery_img_1;
            if(file_exists($institudePhoto)){
                @unlink($institudePhoto);
            }
        }
        if($user->gallery_img_2 != 'default.jpg'){
            $institudePhoto = public_path('img/institutes/').$user->gallery_img_2;
            if(file_exists($institudePhoto)){
                @unlink($institudePhoto);
            }
        }
        $user->delete();
        return ['delete'=>"Deleted successfully"];
    }
    public function search(){

        if ($search = \Request::get('q')) {
            $institutes = Institute::where(function($query) use ($search){
                $query->where('name','LIKE',"%$search%")
                ->orWhere('isActive','LIKE',"%$search%");
            })->orderBy('name','asc')->paginate(20);
        }else{
            $institutes = Institute::orderBy('name','asc')->paginate(20);
        }

        return $institutes;
    }
}
