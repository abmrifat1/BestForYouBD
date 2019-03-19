<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Hotel extends Model
{
    protected $fillable = [
        'name','user_id','estDate','star','rating','main_img','gallery_img_1','gallery_img_2','owner','website_url','address','description','district','sub_district','isActive','restaurant','cafe','car_parking','deleted_at','created_at','updated_at'
    ];
    public function rooms()
    {
        return $this->belongsToMany('App\RoomType', 'hotel_rooms')->withTimestamps();
    }
}
