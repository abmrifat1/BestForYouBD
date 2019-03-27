<?php

namespace App\Http\Controllers\front;
use App\Institute;
use App\Hospital;
use App\Hotel;
use App\RoomType;
use App\TourPlace;
use App\District;
use App\SubDistrict;
use App\Department;
use App\HospitalDepartment;
use App\InstituteDepartments;
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
        $institutes = Institute::where('isActive' , 'Active')->latest()->paginate(20);
        $departments = Department::where('isActive' , 'Active')->orderBy('name','asc')->get();
        return view('front.institute.home',['institutes'=>$institutes,'departments'=>$departments])->with('message','Sorry! We have not uploaded data that you are looking for');
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
        $hospitals = Hospital::where('isActive' , 'Active')->latest()->paginate(20);
        $departments = HospitalDepartment::where('isActive' , 'Active')->orderBy('name','asc')->get();
        return view('front.hospital.home',['hospitals'=>$hospitals,'departments'=>$departments])->with('message','Sorry! We have not uploaded data that you are looking for');
    }

    public function showHospital($id)
    {
        //$hospital_info = Hospital::select('district_id','sub_district_id')->where('id',$id)->first();
        //return $hospital_info;
        $hospital = Hospital::with('hotels')->where('hospitals.id',$id)
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
        $hotels = Hotel::where('isActive' , 'Active')->latest()->paginate(20);
        $rooms = RoomType::where('isActive' , 'Active')->orderBy('name','asc')->get();
        return view('front.hotel.home',['hotels'=>$hotels,'rooms'=>$rooms])->with('message','Sorry! We have not uploaded data that you are looking for');
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
        $tourPlaces = TourPlace::where('isActive' , 'Active')->latest()->paginate(20);
        return view('front.tourPlace.home',['tourPlaces'=>$tourPlaces])->with('message','Sorry! We have not uploaded data that you are looking for');
    }

    public function showTourPlace($id)
    {
        DB::table('tour_places')->where('id',$id)->increment('views');
        $tour_place = TourPlace::with('hotels')->where('tour_places.id',$id)
        ->leftJoin('districts','districts.id','=','tour_places.district_id')
        ->leftJoin('sub_districts','sub_districts.id','=','tour_places.sub_district_id')
        ->select('districts.name as districtName','sub_districts.name as subDistrictName','tour_places.*')
        ->first();
        $tour_places = TourPlace::where('isActive' , 'Active')->orderByRaw('RAND()')->take(4)->get();
        return view('front.tourPlace.show',['tour_place'=>$tour_place,'tour_places'=>$tour_places]);
    }
    public function search(Request $request)
    {
        if(!empty($request->service) && empty($request->district_id) && empty($request->sub_district_id)){
            $services = DB::table($request->service)->where('isActive','Active')->paginate(20);
        }
        elseif(!empty($request->service) && !empty($request->district_id) && empty($request->sub_district_id)){
            $services = DB::table($request->service)->where('isActive','Active')->where('district_id',$request->district_id)->paginate(10);
        }else{
            $services = DB::table($request->service)->where('isActive','Active')->where('district_id',$request->district_id)->where('sub_district_id',$request->sub_district_id)->paginate(10);
        }

        if($request->service === 'institutes'){
                $departments = Department::where('isActive','Active')->get();
                return view('front.institute.home',['institutes'=>$services,'departments'=>$departments])->with('message','Sorry! We have not uploaded data that you are looking for!');
        }
        elseif($request->service === 'hospitals'){
            $departments = HospitalDepartment::where('isActive' , 'Active')->orderBy('name','asc')->get();
            return view('front.hospital.home',['hospitals'=>$services,'departments'=>$departments])->with('message','Sorry! We have not uploaded data that you are looking for!');
        }
        elseif($request->service === 'hotels'){
            $rooms = RoomType::where('isActive' , 'Active')->orderBy('name','asc')->get();
            return view('front.hotel.home',['hotels'=>$services,'rooms'=>$rooms])->with('message','Sorry! We have not uploaded data that you are looking for!');
        }
        elseif($request->service === 'tour_places'){
            return view('front.tourPlace.home',['tourPlaces'=>$services])->with('message','Sorry! We have not uploaded data that you are looking for!');
        }
    }
    public function instituteCompare(Request $request)
    {
        if(count($request->id) > 1){

            $institutes = Institute::with('institute_departments')->whereIn('institutes.id',$request->id)->orderBy('bangladesh_ranking','asc')->orderBy('world_ranking','asc')->orderBy('total_phd_teacher','desc')->get();
            $departments = Department::select('id','name as departmentName')->get();
            return view('front.institute.compare',['institutes'=>$institutes,'departments'=>$departments]);
        }else{
            return redirect()->back()->with('error','Please select at lease 2 institutes');
        }
    }
    public function tourPlaceCompare(Request $request)
    {
        if(count($request->id) > 1){

            $tour_places = TourPlace::with('hotels')->whereIn('tour_places.id',$request->id)
            ->leftJoin('districts','districts.id','=','tour_places.district_id')
            ->leftJoin('sub_districts','sub_districts.id','=','tour_places.sub_district_id')
            ->orderBy('tour_places.bangladesh_ranking','asc')
            ->select('districts.name as districtName','sub_districts.name as subDistrictName','tour_places.*')
            ->get();
            return view('front.tourPlace.compare',['tour_places'=>$tour_places]);
        }else{
            return redirect()->back()->with('error','Please select at lease 2 Tour Places');
        }
    }
    public function hospitalCompare(Request $request)
    {
        if(count($request->id) > 1){

            $hospitals = Hospital::with('hotels')->with('hospital_departments')->whereIn('hospitals.id',$request->id)
            ->leftJoin('districts','districts.id','=','hospitals.district_id')
            ->leftJoin('sub_districts','sub_districts.id','=','hospitals.sub_district_id')
            ->select('districts.name as districtName','sub_districts.name as subDistrictName','hospitals.*')
            ->orderBy('hospitals.bangladesh_ranking','asc')->orderBy('hospitals.world_ranking','asc')->get();
            $departments = HospitalDepartment::select('id','name as departmentName')->get();
            return view('front.hospital.compare',['hospitals'=>$hospitals,'departments'=>$departments]);
        }else{
            return redirect()->back()->with('error','Please select at lease 2 hospitals');
        }
    }
    public function hotelCompare(Request $request)
    {
        if(count($request->id) > 1){

            $hotels = Hotel::with('hotel_rooms')->whereIn('hotels.id',$request->id)->orderBy('bangladesh_ranking','asc')->get();
            $rooms = RoomType::select('id','name as RoomName')->get();
            return view('front.hotel.compare',['hotels'=>$hotels,'rooms'=>$rooms]);
        }else{
            //return redirect('/hotels')->with('error','Please select at lease 2 hotels');
            return redirect()->back()->with('error','Please select at lease 2 hotels');
        }
    }
    public function filterInstitute(Request $request)
    {
        $departments = Department::where('isActive','Active')->get();
        if(!empty($request->department_id) && empty($request->IEEB)){
            $institutes = DB::table('institutes')
            ->join('institute_departments','institute_departments.institute_id','=','institutes.id')
            ->where('institute_departments.department_id',$request->department_id)->paginate(20);
        }
            
        elseif(empty($request->department_id) && !empty($request->IEEB)){
            $institutes = DB::table('institutes')
            ->join('institute_departments','institute_departments.institute_id','=','institutes.id')
            ->where('institute_departments.IEEB',$request->IEEB)->paginate(20);
        }
        elseif(!empty($request->department_id) && !empty($request->IEEB)){
            $institutes = DB::table('institutes')
            ->join('institute_departments','institute_departments.institute_id','=','institutes.id')
            ->where('institute_departments.department_id',$request->department_id)
            ->where('institute_departments.IEEB',$request->IEEB)->paginate(20);
        }else{
            return redirect()->back()->with('selectError','Please Select at least one item');
        }
        return view('front.institute.home',['institutes'=>$institutes,'departments'=>$departments])->with('message','Sorry! We have not uploaded data that you are looking for');
    }
    public function filterHospital(Request $request)
    {
        //return $request;
        $departments = HospitalDepartment::where('isActive','Active')->get();
        if(!empty($request->department_id) && empty($request->ownership_type)){
            $hospitals = DB::table('hospitals')
            ->join('hospital_department_relations','hospital_department_relations.hospital_id','=','hospitals.id')
            ->where('hospital_department_relations.hospital_department_id',$request->department_id)->where('hospitals.isActive','Active')->paginate(20);
        }
            
        elseif(empty($request->department_id) && !empty($request->ownership_type)){
            $hospitals = DB::table('hospitals')
            ->where('ownership_type',$request->ownership_type)->where('isActive','Active')->paginate(20);
        }
        elseif(!empty($request->department_id) && !empty($request->ownership_type)){
            $hospitals = DB::table('hospitals')
            ->join('hospital_department_relations','hospital_department_relations.hospital_id','=','hospitals.id')
            ->where('hospital_department_relations.hospital_department_id',$request->department_id)
            ->where('hospitals.ownership_type',$request->ownership_type)->where('hospitals.isActive','Active')->paginate(20);
        }else{
            return redirect()->back()->with('selectError','Please Select at least one item');
        }
        return view('front.hospital.home',['hospitals'=>$hospitals,'departments'=>$departments])->with('message','Sorry! We have not uploaded data that you are looking for');
    }
    public function filterHotel(Request $request)
    {
        //return $request;
        $rooms = RoomType::where('isActive','Active')->get();
        if(!empty($request->room_type_id) && empty($request->star)){
            $hotels = DB::table('hotels')
            ->join('hotel_rooms','hotel_rooms.hotel_id','=','hotels.id')
            ->whereIn('hotel_rooms.room_type_id',$request->room_type_id)->paginate(12);
        }
        elseif(empty($request->room_type_id) && !empty($request->star)){
            $hotels = DB::table('hotels')
            ->whereIn('star',$request->star)->paginate(12);
        }
        elseif(!empty($request->room_type_id) && !empty($request->star)){
            $hotels = DB::table('hotels')
            ->join('hotel_rooms','hotel_rooms.hotel_id','=','hotels.id')
            ->whereIn('hotel_rooms.room_type_id',$request->room_type_id)
            ->whereIn('hotels.star',$request->star)->paginate(12);
        }else{
            return redirect()->back()->with('selectError','Please Select at least one item');
        }
        return view('front.hotel.home',['hotels'=>$hotels,'rooms'=>$rooms])->with('message','Sorry! We have not uploaded data that you are looking for');
    }
    public function searchInstitute(Request $request)
    {
        $id = $request->id;
        return redirect('institute/'.$id);
    }
    public function searchHotel(Request $request)
    {
        $id = $request->id;
        return redirect('hotel/'.$id);
    }
    public function searchHospital(Request $request)
    {
        $id = $request->id;
        return redirect('hospital/'.$id);
    }
    public function searchTourPlace(Request $request)
    {
        $id = $request->id;
        return redirect('tour-place/'.$id);
    }
    public function error()
    {
        return view('front.404');
    }

}
