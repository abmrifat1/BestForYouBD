<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class InstituteDepartments extends Model
{
    protected $fillable = [
        'institute_id', 'department_id','cost','students','faculty_members','total_phd_teacher','credit','computer',
    ];
}
