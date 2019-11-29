<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Reply extends Model
{
    protected $guarded = [];
    
    protected static function boot() {
        parent::boot();

        static::creating(function ($reply) {
            $reply->user_id = auth()->user()->id;
        });
    }//end of boot

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
