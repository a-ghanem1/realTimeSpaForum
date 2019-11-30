<?php

namespace App\Http\Controllers;

use App\Reply;
use App\Question;
use Illuminate\Http\Request;
use App\Events\NewReplyEvent;
use App\Events\DeleteReplyEvent;
use App\Http\Resources\ReplyResource;
use App\Notifications\NewReplyNotification;
use Symfony\Component\HttpFoundation\Response;

class ReplyController extends Controller
{

    /**
     * Create a new AuthController instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('jwt', ['except' => ['index', 'show']]);
    }
    
    public function index(Question $question)
    {
        return ReplyResource::collection($question->replies);
    }//end of index

 
    public function store(Question $question, Request $request)
    {
        $reply = $question->replies()->create($request->all());

        $user = $question->user;
        
        // broadcast the reply for all
        broadcast(new NewReplyEvent(new ReplyResource($reply)))->toOthers();

        // notify the own user
        if ($reply->user_id !== $question->user_id) 
        {
            $user->notify(new NewReplyNotification($reply));
        }//end of if


        return response(new ReplyResource($reply), Response::HTTP_CREATED);
    }//end of store

    
    public function show(Question $question, Reply $reply)
    {
        return new ReplyResource($reply);
    }//end of show


    public function update(Question $question, Request $request, Reply $reply)
    {
        $reply->update($request->all());

        return response('Updated', Response::HTTP_ACCEPTED);
    }//end of update

    
    public function destroy(Question $question, Reply $reply)
    {
        $reply->delete();
        broadcast(new DeleteReplyEvent($reply->id))->toOthers();
        return response(null, Response::HTTP_NO_CONTENT);
    }//end of destroy
}
