<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ForumComments extends Model
{
    protected $fillable = ['id','name','forum_id','reply','isCorrect','created_at','updated_at'];

    public function forums()
    {
        return $this->belongsTo('App\Forum');
    }
}