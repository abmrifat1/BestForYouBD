<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Forum extends Model
{
    protected $fillable = [
        'id','name','description','category_id','email','isActive',
    ];
    public function comments()
    {
        return $this->hasMany('App\ForumComments');
    }
}
