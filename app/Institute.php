<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Institute extends Model
{
    protected $fillable = [
        'name', 'estDate', 'main_img','gallery_img_1','gallery_img_2','vice_chancellor','ownership_type', 'address','city','type','isActive'
    ];
    public function departments()
    {
        return $this->belongsToMany('App\Department', 'institute_departments')->withTimestamps();
    }
}
