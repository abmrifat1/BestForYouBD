<?php

namespace App\Http\Controllers\API;
use App\TourPlace;
use App\District;
use App\SubDistrict;
use App\Hotel;
use DB;
use Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class TourPlaceController extends Controller
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
            $tourPlaces = DB::table('tour_places')
            ->join('sub_districts','sub_districts.id','=','tour_places.sub_district_id')
            ->join('districts','districts.id','=','sub_districts.district_id')
            ->orderBy('districts.name','asc')
            ->orderBy('sub_districts.name','asc')
            ->select('tour_places.*','districts.name as districtName','sub_districts.name as subDistrictName')
            ->paginate(5);
            return $tourPlaces;
        }
    }
    public function getDistricts()
    {
        return District::select('id','name')->orderby('name','asc')->get();
    }
    public function getSubDistricts($district_id)
    {
        return SubDistrict::select('id','name')->where('district_id',$district_id)->orderby('name','asc')->get();
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
            \Image::make($request->main_img)->save(public_path('img/tour_places/').$name);
            $request->merge(['main_img' => $name]);
        }else{
            $request->merge(['main_img' => 'default.jpg']);
        }
        if(!empty($request->gallery_img_1)){
            $name = time().rand(50,5000).'.' . explode('/', explode(':', substr($request->gallery_img_1, 0, strpos($request->gallery_img_1, ';')))[1])[1];
            \Image::make($request->gallery_img_1)->save(public_path('img/tour_places/').$name);
            $request->merge(['gallery_img_1' => $name]);
        }else{
            $request->merge(['gallery_img_1' => 'default.jpg']);
        }
        if(!empty($request->gallery_img_2)){
            $name = time().rand(50,5000).'.' . explode('/', explode(':', substr($request->gallery_img_2, 0, strpos($request->gallery_img_2, ';')))[1])[1];
            \Image::make($request->gallery_img_2)->save(public_path('img/tour_places/').$name);
            $request->merge(['gallery_img_2' => $name]);
        }else{
            $request->merge(['gallery_img_2' => 'default.jpg']);
        }
        $request['user_id'] = Auth::user()->id;
        $tourPlace = TourPlace::create($request->all());
        $tourPlace->hotels()->sync($request->hotels);
        return ['update' => "Tour Place information stored"];
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
        $tourPlace = TourPlace::findOrFail($id);
        $this->validate($request,[
            'name'=>'required|string|max:191'
        ]);
        $currentPhoto = $tourPlace->main_img;
        
        if($request->main_img != $currentPhoto){
            $name = time().rand(50,5000).'.' . explode('/', explode(':', substr($request->main_img, 0, strpos($request->main_img, ';')))[1])[1];
            \Image::make($request->main_img)->save(public_path('img/tour_places/').$name);
            $request->merge(['main_img' => $name]);
            $hotelPhoto = public_path('img/tour_places/').$currentPhoto;
            if(file_exists($hotelPhoto)){
                @unlink($hotelPhoto);
            }
        }
        $currentPhoto = $tourPlace->gallery_img_1;
        if($request->gallery_img_1 != $currentPhoto){
            $name = time().rand(50,5000).'.' . explode('/', explode(':', substr($request->gallery_img_1, 0, strpos($request->gallery_img_1, ';')))[1])[1];

            \Image::make($request->gallery_img_1)->save(public_path('img/tour_places/').$name);
            $request->merge(['gallery_img_1' => $name]);
            $hotelPhoto = public_path('img/tour_places/').$currentPhoto;
            if(file_exists($hotelPhoto)){
                @unlink($hotelPhoto);
            }
        }
        $currentPhoto = $tourPlace->gallery_img_2;
        if($request->gallery_img_2 != $currentPhoto){
            $name = time().rand(50,5000).'.' . explode('/', explode(':', substr($request->gallery_img_2, 0, strpos($request->gallery_img_2, ';')))[1])[1];

            \Image::make($request->gallery_img_2)->save(public_path('img/tour_places/').$name);
            $request->merge(['gallery_img_2' => $name]);

            $hotelPhoto = public_path('img/tour_places/').$currentPhoto;
            if(file_exists($hotelPhoto)){
                @unlink($hotelPhoto);
            }
        }
        $tourPlace->update($request->all());
        $tourPlace->hotels()->syncWithoutDetaching($request->hotels);
        return ['update' => "TourPlace information updated"];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    
    public function destroy($id)
    {
        $tourPlace = TourPlace::findOrFail($id);
        if($tourPlace->main_img != 'default.jpg'){
            $hotelPhoto = public_path('img/tour_places/').$tourPlace->main_img;
            if(file_exists($hotelPhoto)){
                @unlink($hotelPhoto);
            }
        }
        if($tourPlace->gallery_img_1 != 'default.jpg'){
            $hotelPhoto = public_path('img/tour_places/').$tourPlace->gallery_img_1;
            if(file_exists($hotelPhoto)){
                @unlink($hotelPhoto);
            }
        }
        if($tourPlace->gallery_img_2 != 'default.jpg'){
            $hotelPhoto = public_path('img/tour_places/').$tourPlace->gallery_img_2;
            if(file_exists($hotelPhoto)){
                @unlink($hotelPhoto);
            }
        }
        $tourPlace->delete();
        return ['delete'=>"Deleted successfully"];
    }
    public function search(){

        if ($search = \Request::get('q')) {
            $tourPlaces = DB::table('tour_places')
            ->join('sub_districts','sub_districts.id','=','tour_places.sub_district_id')
            ->join('districts','districts.id','=','sub_districts.district_id')
            ->orderBy('districts.name','asc')
            ->orderBy('sub_districts.name','asc')
            ->select('tour_places.*','districts.name as districtName','sub_districts.name as subDistrictName')->where(function($query) use ($search){
                $query->where('tour_places.name','LIKE',"%$search%")
                    ->orWhere('sub_districts.name','LIKE',"%$search%")
                    ->orWhere('tour_places.isActive','LIKE',"%$search%")
                    ->orWhere('districts.name','LIKE',"%$search%");
            })->paginate(10);
        }else{
            $tourPlaces = DB::table('tour_places')
            ->join('sub_districts','sub_districts.id','=','tour_places.sub_district_id')
            ->join('districts','districts.id','=','sub_districts.district_id')
            ->orderBy('districts.name','asc')
            ->orderBy('sub_districts.name','asc')
            ->select('tour_places.*','districts.name as districtName','sub_districts.name as subDistrictName')
            ->paginate(10);
        }

        return $tourPlaces;
    }
}
