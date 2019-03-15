<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HotelRoom extends Model
{
    protected $fillable = [
        'hotel_id','room_type_id','bedNumber','bedtype','price','created_at','updated_at'
    ];
}
