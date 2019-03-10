<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HospitalDepartment extends Model
{
    protected $fillable = [
        'name', 'slug','isActive','created_at','updated_at'
    ];
    public function hospitals(){
        return $this->belongsToMany('App\Hospital', 'hospital_department_relations')->latest()->paginate(5);
    }
}
