<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TourPlace extends Model
{
    protected $fillable = [
        'name','user_id','sub_district_id','star','rating','main_img','gallery_img_1','gallery_img_2','website_url','address','description','district_id','isActive','bangladesh_ranking','restaurant','cafe','car_parking','deleted_at','created_at','updated_at'
    ];
    public function hotels()
    {
        return $this->belongsToMany('App\Hotel', 'tour_place_hotels')->withTimestamps();
    }
    public function tourPlaceHotels()
    {
        return $this->hasMany('App\TourPlaceHotel', 'tour_place_id');
    }
}
