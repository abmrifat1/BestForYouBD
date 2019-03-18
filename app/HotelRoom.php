<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HotelRoom extends Model
{
    protected $fillable = [
        'hotel_id','room_type_id','bedNumber','bedtype','self_check_in','bedroom_comforts','bathroom','tv','sofa','coffee_maker','hair_dryer','iron','heating','air_conditioning','wifi','price','created_at','updated_at'
    ];
}
