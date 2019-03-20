<?php

namespace App\Http\Controllers\front;
use App\Institute;
use App\Hospital;
use App\Hotel;
use DB;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class WebsiteController extends Controller
{
    public function index()
    {
        $publicInstitutes = Institute::withCount('departments')->where('isActive' , 'Active')->where('ownership_type','Public')->orderByRaw('RAND()')->take(4)->get();
        $privateInstitutes = Institute::withCount('departments')->where('isActive' , 'Active')->where('ownership_type','Private')->orderByRaw('RAND()')->take(4)->get();
        
        $publicHospitals = Hospital::withCount('departments')->where('isActive' , 'Active')->where('ownership_type','Public')->orderByRaw('RAND()')->take(4)->get();
        $privateHospitals = Hospital::withCount('departments')->where('isActive' , 'Active')->where('ownership_type','Private')->orderByRaw('RAND()')->take(4)->get();
        
        $hotels = Hotel::where('isActive' , 'Active')->orderByRaw('RAND()')->take(4)->get();
                

        return view('front.home',['publicInstitutes'=>$publicInstitutes,'privateInstitutes'=>$privateInstitutes,'publicHospitals'=>$publicHospitals,'privateHospitals'=>$privateHospitals,'hotels'=>$hotels]);
    }

    public function institutes()
    {
        $institutes = Institute::withCount('departments')->where('isActive' , 'Active')->latest()->paginate(6);
        return view('front.institute.home',['institutes'=>$institutes]);
    }

    public function showInstitute($id)
    {
        $institute = Institute::findOrfail($id);
        $institute_departments = DB::table('institutes')
        ->join('institute_departments','institute_departments.institute_id','=','institutes.id')
        ->join('departments','departments.id','=','institute_departments.department_id')
        ->where('institutes.id',$id)
        ->select('departments.name','institute_departments.*')
        ->get();
        $institutes = Institute::withCount('departments')->where('isActive' , 'Active')->orderByRaw('RAND()')->take(4)->get();
        return view('front.institute.show',['institute'=>$institute,'institute_departments'=>$institute_departments,'institutes'=>$institutes]);
    }

    public function hospitals()
    {
        $hospitals = Hospital::withCount('departments')->where('isActive' , 'Active')->latest()->paginate(6);
        return view('front.institute.home',['hospitals'=>$hospitals]);
    }

    public function showHospital($id)
    {
        $hospital = Hospital::with('departments')->where('id',$id)->first();
        return $hospital;
        return view('front.hospital.show',['hospital'=>$hospital]);
    }

}
