<?php

namespace App\Http\Controllers;

use App\Like;
use App\Reply;
use App\Events\LikeEvent;
use Illuminate\Http\Request;

class LikeController extends Controller
{
    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('jwt');
    }
    
    public function likeIt(Reply $reply)
    {
        $reply->likes()->create([
            'user_id' => auth()->user()->id
        ]);

        broadcast(new LikeEvent($reply->id,1))->toOthers();
    }//end of likeIt

    public function unLikeIt(Reply $reply)
    {
        $reply->likes()->where('user_id', auth()->user()->id)->first()->delete();

        broadcast(new LikeEvent($reply->id,0))->toOthers();
    }//end of unLikeIt

}
