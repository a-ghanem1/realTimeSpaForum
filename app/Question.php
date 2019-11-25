<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    public function user()
    {
    	return $this->belongsTo(User::class);
    }//end of user relationship

    public function category()
    {
    	return $this->belongsTo(Category::class);
    }//end of category relationship

    public function replies()
    {
    	return $this->hasMany(Replay::class);
    }//end of replies relationship
    
}//end of model
