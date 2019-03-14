<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class HospitalDepartmentRelation extends Model
{
    protected $fillable = [
        'hospital_id', 'hospital_department_id','doctors','foreign_degree_doctors','staff','created_at','updated_at'
    ];
}
