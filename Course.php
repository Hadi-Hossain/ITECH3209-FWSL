<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Course extends Model
{
    use SoftDeletes;
    protected $primaryKey='id';

    public function schools(){
        return $this->hasMany('App\School');
    }
}
