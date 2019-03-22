<?php
namespace App\Http\Controllers\API;
use App\Hotel;
use App\RoomType;
use DB;
use App\HotelRoom;
use Auth;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class HotelController extends Controller
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
            return Hotel::with('rooms')->orderBy('name','asc')->paginate(10);
        }
    }
    public function getRoom()
    {
        return RoomType::where('isActive','=','Active')->orderby('name','asc')->get();
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
            \Image::make($request->main_img)->save(public_path('img/hotels/').$name);
            $request->merge(['main_img' => $name]);
        }else{
            $request->merge(['main_img' => 'default.jpg']);
        }
        if(!empty($request->gallery_img_1)){
            $name = time().rand(50,5000).'.' . explode('/', explode(':', substr($request->gallery_img_1, 0, strpos($request->gallery_img_1, ';')))[1])[1];
            \Image::make($request->gallery_img_1)->save(public_path('img/hotels/').$name);
            $request->merge(['gallery_img_1' => $name]);
        }else{
            $request->merge(['gallery_img_1' => 'default.jpg']);
        }
        if(!empty($request->gallery_img_2)){
            $name = time().rand(50,5000).'.' . explode('/', explode(':', substr($request->gallery_img_2, 0, strpos($request->gallery_img_2, ';')))[1])[1];
            \Image::make($request->gallery_img_2)->save(public_path('img/hotels/').$name);
            $request->merge(['gallery_img_2' => $name]);
        }else{
            $request->merge(['gallery_img_2' => 'default.jpg']);
        }
        $request['user_id'] = Auth::user()->id;
        $hotel = Hotel::create($request->all());
        $hotel->rooms()->sync($request->room);
        return ['update' => "Hotel information stored"];
    }
    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function getHotelRoom($id)
    {
        $hotel = HotelRoom::where('hotel_id',$id)
        ->leftJoin('room_types','hotel_rooms.room_type_id','=','room_types.id')
        ->select('hotel_rooms.*',
                'room_types.name')
        ->orderBy('room_types.name', 'ASC')
        ->get();
        return $hotel;
    }
    public function updateHotelRoom(Request $request)
    {
        $hotelRoom = HotelRoom::where('hotel_id', $request->hotel_id)
           ->where('room_type_id', $request->room_type_id)
           ->update($request->all());
           return ['update' => "Hotel room information updated"];
    }
    public function addHotelRoom(Request $request,$hotel_id)
    {
        $request->merge(['hotel_id' => $hotel_id]);
        $hotel_room = HotelRoom::where('hotel_id', $request->hotel_id)
        ->where('room_type_id', $request->room_type_id)
        ->first();
        if (!$hotel_room) {
            HotelRoom::create($request->all());
            return ['success' => "Hotel Department information updated"];
        }else{
            return ['error',"Hotel Department Already Stored"];
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
        $Hotel = Hotel::findOrFail($id);
        $this->validate($request,[
            'name'=>'required|string|max:191'
        ]);
        $currentPhoto = $Hotel->main_img;
        
        if($request->main_img != $currentPhoto){
            $name = time().rand(50,5000).'.' . explode('/', explode(':', substr($request->main_img, 0, strpos($request->main_img, ';')))[1])[1];
            \Image::make($request->main_img)->save(public_path('img/hotels/').$name);
            $request->merge(['main_img' => $name]);
            $hotelPhoto = public_path('img/hotels/').$currentPhoto;
            if(file_exists($hotelPhoto)){
                @unlink($hotelPhoto);
            }
        }
        $currentPhoto = $Hotel->gallery_img_1;
        if($request->gallery_img_1 != $currentPhoto){
            $name = time().rand(50,5000).'.' . explode('/', explode(':', substr($request->gallery_img_1, 0, strpos($request->gallery_img_1, ';')))[1])[1];

            \Image::make($request->gallery_img_1)->save(public_path('img/hotels/').$name);
            $request->merge(['gallery_img_1' => $name]);
            $hotelPhoto = public_path('img/hotels/').$currentPhoto;
            if(file_exists($hotelPhoto)){
                @unlink($hotelPhoto);
            }
        }
        $currentPhoto = $Hotel->gallery_img_2;
        if($request->gallery_img_2 != $currentPhoto){
            $name = time().rand(50,5000).'.' . explode('/', explode(':', substr($request->gallery_img_2, 0, strpos($request->gallery_img_2, ';')))[1])[1];

            \Image::make($request->gallery_img_2)->save(public_path('img/hotels/').$name);
            $request->merge(['gallery_img_2' => $name]);

            $hotelPhoto = public_path('img/hotels/').$currentPhoto;
            if(file_exists($hotelPhoto)){
                @unlink($hotelPhoto);
            }
        }
        $Hotel->update($request->all());
        $Hotel->rooms()->syncWithoutDetaching($request->department);
        return ['update' => "Hotel information updated"];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroyHotelRoom(Request $request)
    {
        DB::table('hotel_rooms')->where('hotel_id', $request->hotel_id)->where('room_type_id',$request->room_type_id)->delete();
        return ['Message' => "Hotel room information updated"];
    }
    public function destroy($id)
    {
        $hotel = Hotel::findOrFail($id);
        if($hotel->main_img != 'default.jpg'){
            $hotelPhoto = public_path('img/hotels/').$hotel->main_img;
            if(file_exists($hotelPhoto)){
                @unlink($hotelPhoto);
            }
        }
        if($hotel->gallery_img_1 != 'default.jpg'){
            $hotelPhoto = public_path('img/hotels/').$hotel->gallery_img_1;
            if(file_exists($hotelPhoto)){
                @unlink($hotelPhoto);
            }
        }
        if($hotel->gallery_img_2 != 'default.jpg'){
            $hotelPhoto = public_path('img/hotels/').$hotel->gallery_img_2;
            if(file_exists($hotelPhoto)){
                @unlink($hotelPhoto);
            }
        }
        $hotel->delete();
        return ['delete'=>"Deleted successfully"];
    }
    public function search(){

        if ($search = \Request::get('q')) {
            $hotels = Hotel::where(function($query) use ($search){
                $query->where('name','LIKE',"%$search%")
                    ->orWhere('address','LIKE',"%$search%");
            })->paginate(15);
        }else{
            $hotels = Hotel::orderBy('name','asc')->paginate(15);
        }

        return $hotels;
    }
}
