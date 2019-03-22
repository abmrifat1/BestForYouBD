<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Institute extends Model
{
    protected $fillable = [
        'name', 'estDate', 'main_img','gallery_img_1','gallery_img_2','vice_chancellor','ownership_type', 'address','district_id','sub_district_id','institute_type_id','phone','email','description','hostel','restaurant','bus','auditorium','play_ground','events','isActive'
    ];
    public function departments()
    {
        return $this->belongsToMany('App\Department', 'institute_departments')->withTimestamps();
    }
}
