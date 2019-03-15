<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class RoomType extends Model
{
    protected $fillable = ['id','name','slug','isActive','updated_at','created_at'];
}
