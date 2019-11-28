<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Question extends Model
{
    protected $fillable = ['title', 'body', 'slug', 'user_id', 'category_id'];

    protected static function boot() 
    {
        parent::boot();    

        static::creating(function($question) {
            $question->slug = str_slug($question->title);
        });

        static::updating(function($question) {
            $question->slug = str_slug($question->title);
        });
    }

    public function getRouteKeyName()
    {
        return 'slug';
    }//end of slug

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
    	return $this->hasMany(Reply::class);
    }//end of replies relationship
    
    public function getPathAttribute()
    {
        return "/question/$this->slug";
    }//end of path

}//end of model
