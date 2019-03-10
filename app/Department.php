<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Department extends Model
{
    protected $fillable = [
        'name', 'slug','isActive','created_at','updated_at'
    ];
    public function institutes(){
        return $this->belongsToMany('App\Institute', 'institute_departments')->latest()->paginate(5);
    }
}
