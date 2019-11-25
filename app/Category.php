<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $guarded = [];

    public function getRouteKeyName()
    {
        return 'slug';
    }//end of slug

    public function getPathAttribute()
    {
        return asset("api/category/$this->slug");
    }//end of path

}//end of model
