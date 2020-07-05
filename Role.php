<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Role extends Model
{
    protected $primaryKey='id';

    public function scopeActive($query)
    {
        return $query->where('status', 1);
    }

    public function users(){
        return $this->hasMany('App\User');
    }
}
