<?php

namespace App\Http\Controllers\front;
use App\Institute;
use App\Hospital;
use App\Hotel;
use App\TourPlace;
use App\District;
use App\SubDistrict;
use App\Department;
use DB;
use Illuminate\Http\Request;
use IlluminateSupportFacadesInput;
use App\Http\Controllers\Controller;
use Illuminate\Database\Eloquent\Builder;
class WebsiteController extends Controller
{
    public function index()
    {
        $publicInstitutes = Institute::withCount('departments')->where('isActive' , 'Active')->where('ownership_type','Public')->orderByRaw('RAND()')->take(4)->get();
        $privateInstitutes = Institute::withCount('departments')->where('isActive' , 'Active')->where('ownership_type','Private')->orderByRaw('RAND()')->take(4)->get();
        
        $publicHospitals = Hospital::withCount('departments')->where('isActive' , 'Active')->where('ownership_type','Public')->orderByRaw('RAND()')->take(4)->get();
        $privateHospitals = Hospital::withCount('departments')->where('isActive' , 'Active')->where('ownership_type','Private')->orderByRaw('RAND()')->take(4)->get();
        
        $hotels = Hotel::where('isActive' , 'Active')->orderByRaw('RAND()')->take(4)->get();

        $tourPlaces = TourPlace::where('isActive' , 'Active')->orderByRaw('RAND()')->take(6)->get();
                

        return view('front.home',['publicInstitutes'=>$publicInstitutes,'privateInstitutes'=>$privateInstitutes,'publicHospitals'=>$publicHospitals,'privateHospitals'=>$privateHospitals,'hotels'=>$hotels,'tourPlaces'=>$tourPlaces]);
    }

    public function districts()
    {
        $districts = District::orderBy('name','asc')->get();
        return response()->json($districts);
    }
  
    public function subDistricts($district_id)
    {
        $subDistricts = SubDistrict::where('district_id', $district_id)->orderBy('name','asc')->get();  
        return response()->json($subDistricts);
    }
    
    public function institutes()
    {
        $institutes = Institute::where('isActive' , 'Active')->latest()->paginate(6);
        $departments = Department::orderBy('name','asc')->get();
        return view('front.institute.home',['institutes'=>$institutes,'departments'=>$departments]);
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
        $institutes = Institute::where('isActive' , 'Active')->orderByRaw('RAND()')->take(4)->get();
        return view('front.institute.show',['institute'=>$institute,'institute_departments'=>$institute_departments,'institutes'=>$institutes]);
    }

    public function hospitals()
    {
        $hospitals = Hospital::where('isActive' , 'Active')->orderByRaw('RAND()')->paginate(6);
        return view('front.hospital.home',['hospitals'=>$hospitals]);
    }

    public function showHospital($id)
    {
        //$hospital_info = Hospital::select('district_id','sub_district_id')->where('id',$id)->first();
        //return $hospital_info;
        $hospital = Hospital::where('hospitals.id',$id)
        ->leftJoin('districts','districts.id','=','hospitals.district_id')
        ->leftJoin('sub_districts','sub_districts.id','=','hospitals.sub_district_id')
        ->select('districts.name as districtName','sub_districts.name as subDistrictName','hospitals.*')
        ->first();
        
        $hospital_department_relations = DB::table('hospitals')
        ->join('hospital_department_relations','hospital_department_relations.hospital_id','=','hospitals.id')
        ->join('hospital_departments','hospital_departments.id','=','hospital_department_relations.hospital_department_id')
        ->where('hospitals.id',$id)
        ->select('hospital_departments.name','hospital_department_relations.*')
        ->get();

        //$hospitals = Hospital::where('isActive' , 'Active')->where('district_id', $hospital->district_id)->orWhere('sub_district_id', $hospital->sub_district_id)->take(4)->get();
        //return $hospitals;
        $hospitals = Hospital::where('isActive' , 'Active')->orderByRaw('RAND()')->take(4)->get();
        return view('front.hospital.show',['hospital'=>$hospital,'hospital_department_relations'=>$hospital_department_relations,'hospitals'=>$hospitals]);
    }
    public function hotels()
    {
        $hotels = Hotel::where('isActive' , 'Active')->orderByRaw('RAND()')->paginate(6);
        return view('front.hotel.home',['hotels'=>$hotels]);
    }

    public function showHotel($id)
    {
        $hotel = Hotel::findOrfail($id);
        $hotel_rooms = DB::table('hotels')
        ->join('hotel_rooms','hotel_rooms.hotel_id','=','hotels.id')
        ->join('room_types','room_types.id','=','hotel_rooms.room_type_id')
        ->where('hotels.id',$id)
        ->select('room_types.name','hotel_rooms.*')
        ->get();
        $hotels = Hotel::where('isActive' , 'Active')->orderByRaw('RAND()')->take(4)->get();
        return view('front.hotel.show',['hotel'=>$hotel,'hotelRooms'=>$hotel_rooms,'hotels'=>$hotels]);
    }
    public function tourPlaces()
    {
        $tourPlaces = TourPlace::where('isActive' , 'Active')->orderByRaw('RAND()')->paginate(6);
        return view('front.tourPlace.home',['tourPlaces'=>$tourPlaces]);
    }

    public function showTourPlace($id)
    {
        $tour_place = TourPlace::where('tour_places.id',$id)
        ->leftJoin('districts','districts.id','=','tour_places.district_id')
        ->leftJoin('sub_districts','sub_districts.id','=','tour_places.sub_district_id')
        ->select('districts.name as districtName','sub_districts.name as subDistrictName','tour_places.*')
        ->first();
        
        /*$hospital_department_relations = DB::table('tour_places')
        ->join('hospital_department_relations','hospital_department_relations.hospital_id','=','tour_places.id')
        ->join('hospital_departments','hospital_departments.id','=','hospital_department_relations.hospital_department_id')
        ->where('tour_places.id',$id)
        ->select('hospital_departments.name','hospital_department_relations.*')
        ->get();*/

        //$hospitals = Hospital::where('isActive' , 'Active')->where('district_id', $hospital->district_id)->orWhere('sub_district_id', $hospital->sub_district_id)->take(4)->get();
        //return $hospitals;
        $tour_places = TourPlace::where('isActive' , 'Active')->orderByRaw('RAND()')->take(4)->get();
        return view('front.tourPlace.show',['tour_place'=>$tour_place,'tour_places'=>$tour_places]);
    }
    public function search(Request $request)
    {
        if(!empty($request->service) && empty($request->district_id) && empty($request->sub_district_id)){
            $services = DB::table($request->service)->where('isActive','Active')->paginate(10);
        }
        elseif(!empty($request->service) && !empty($request->district_id) && empty($request->sub_district_id)){
            $services = DB::table($request->service)->where('isActive','Active')->where('district_id',$request->district_id)->paginate(10);
        }else{
            $services = DB::table($request->service)->where('isActive','Active')->where('district_id',$request->district_id)->where('sub_district_id',$request->sub_district_id)->paginate(10);
        }
        if($services->isNotEmpty()){
            if($request->service === 'institutes'){
                $departments = Department::where('isActive','Active')->get();
                return view('front.institute.home',['institutes'=>$services,'departments'=>$departments]);
            }
            elseif($request->service === 'hospitals'){
                return view('front.hospital.home',['hospitals'=>$services]);
            }
            elseif($request->service === 'hotels'){
                return view('front.hotel.home',['hotels'=>$services]);
            }
            elseif($request->service === 'tour_places'){
                return view('front.tourPlace.home',['tourPlaces'=>$services]);
            }
        }
        else 
            return view('front.404');
    }
    public function instituteCompare(Request $request)
    {
        return Institute::with('institute_departments')->with('departments')->whereIn('institutes.id',$request->id)->get();
        //return Institute::with('departments')->where('isActive','Active')->whereIn('id',$request->id)->get();
        /*$tourPlaces = DB::table('institutes')
            ->join('institute_departments','institute_departments.institute_id','=','institutes.id')
            ->join('departments','departments.id','=','institutes.id')
            ->orderBy('institutes.name','asc')
            ->orderBy('departments.name','asc')
            ->where('institutes.id',$request->id)
            ->select('institutes.*','departments.name as departmentName','institute_departments.*')
            ->get();
            return $tourPlaces;*/
    }
    /*public function allServices()
    {
        $institutes = DB::table('institutes')->select('institutes.name as institute_name', 'institutes.id as institute_id')->where('isActive','Active');
        $hospitals = DB::table('hospitals')->select('hospitals.name as hospital_name', 'hospitals.id as hospital_id')->where('isActive','Active');
        $hotels = DB::table('hotels')->select('hotels.name as hotel_name', 'hotels.id as hotel_id')->where('isActive','Active')->unionAll($institutes)->unionAll($hospitals)->get();
        return $hotels;
        $services = DB::table('institutes')
                    ->crossJoin('hospitals')
                    ->crossJoin('hotels')
                    ->select('institutes.name as institute_name','hospitals.name as hospital_name','hotels.name as hotel_name')
                    ->get();
        return $services;
    }*/

}
