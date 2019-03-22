<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    protected $fillable = [
        'name', 'institute_type_id','isActive','created_at','updated_at'
    ];
    public function institutes(){
        return $this->belongsToMany('App\Institute', 'institute_departments');
    }
}
