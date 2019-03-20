<?php

namespace App\Http\Controllers\front;
use App\Institute;
use App\Hospital;
use App\Hotel;
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
        return view('front.institute.show',['institute'=>$institute]);
    }
}
