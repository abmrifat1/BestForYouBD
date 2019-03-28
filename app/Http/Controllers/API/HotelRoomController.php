<?php

namespace App\Http\Controllers\API;
use App\RoomType;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class HotelRoomController extends Controller
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
            return RoomType::orderby('name','asc')->paginate(10);
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
        return RoomType::create([
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
        $room = RoomType::findOrFail($id);
        $this->validate($request,[
            'name'=>'required|string|max:191',
            'isActive'=>'required',
        ]);
        if($room->name != $request->name){
            $slug = trim(preg_replace('/\s+/', '-', $request['name']));
            $slug = strtolower($slug);
            $request['slug'] = $slug;
        }
        $room->update($request->all());
        return ['update' => "Room information updated"];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $room = RoomType::findOrFail($id);
        $room->delete();
        return ['delete'=>"Deleted successfully"];
    }
    public function search(){

        if ($search = \Request::get('q')) {
            $rooms = RoomType::where(function($query) use ($search){
                $query->where('name','LIKE',"%$search%");
            })->paginate(8);
        }else{
            $rooms = RoomType::latest()->paginate(8);
        }

        return $rooms;
    }
}
