<?php

namespace App\Http\Controllers;

use App\Like;
use App\Reply;
use Illuminate\Http\Request;

class LikeController extends Controller
{
    
    public function likeIt(Reply $reply)
    {
        $reply->likes()->create([
            //'user_id' => auth()->user()->id
            'user_id' => '1'
        ]);
    }//end of likeIt

    public function unLikeIt(Reply $reply)
    {
        //$reply->likes()->where('user_id', auth()->user()->id)->first()->delete();

        $reply->likes()->where('user_id', '1')->first()->delete();
    }//end of unLikeIt

}
