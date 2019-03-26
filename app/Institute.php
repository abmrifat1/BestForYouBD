<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Institute extends Model
{
    protected $fillable = [
        'name', 'estDate', 'main_img','gallery_img_1','gallery_img_2','vice_chancellor','total_department','ownership_type', 'address','district_id','sub_district_id','total_phd_teacher','total_faculty','total_student','website_url','library','institute_type_id','phone','email','description','hostel','restaurant','bus','auditorium','play_ground','events','world_ranking','bangladesh_ranking','isActive'
    ];
    public function departments()
    {
        return $this->belongsToMany('App\Department', 'institute_departments')->withTimestamps();
    }
    public function institute_departments()
    {
        return $this->hasMany('App\InstituteDepartments', 'institute_id');
    }
}
