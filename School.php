<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class School extends Model
{
    use SoftDeletes;
    protected $primaryKey='id';

    public function user(){
        return $this->belongsTo('App\User');
    }
    public function course(){
        return $this->belongsTo('App\Course');
    }
}
