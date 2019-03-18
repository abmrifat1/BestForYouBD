<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Hospital extends Model
{
    protected $fillable = [
        'name', 'estDate', 'main_img','gallery_img_1','gallery_img_2','chancellor','ownership_type', 'address','city','isActive'
    ];
    public function departments()
    {
        return $this->belongsToMany('App\HospitalDepartment', 'hospital_department_relations')->withTimestamps();
    }
}
?>
