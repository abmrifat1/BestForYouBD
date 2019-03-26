<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Hotel extends Model
{
    protected $fillable = [
        'name','user_id','estDate','star','rating','main_img','gallery_img_1','gallery_img_2','owner','website_url','address','phone','email','description','district_id','sub_district_id','isActive','restaurant','cafe','party_center','car_parking','total_room','deleted_at','created_at','updated_at'
    ];
    public function rooms()
    {
        return $this->belongsToMany('App\RoomType', 'hotel_rooms')->withTimestamps();
    }
    public function hotel_rooms()
    {
        return $this->hasMany('App\HotelRoom', 'hotel_id');
    }
}
