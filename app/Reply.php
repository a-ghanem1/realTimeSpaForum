<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Reply extends Model
{
    public function question()
    {
    	return $this->belongsTo(Question::class);
    }//end of question relationship

    public function user()
    {
    	return $this->belongsTo(User::class);
    }//end of user relationship

    public function likes()
    {
    	return $this->hasMany(Like::class);
    }//end of likes relationship

}//end of model
