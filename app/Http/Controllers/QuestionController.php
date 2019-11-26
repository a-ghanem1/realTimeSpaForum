<?php

namespace App\Http\Controllers;

use App\Question;
use Illuminate\Http\Request;
use App\Http\Resources\QuestionResource;
use Symfony\Component\HttpFoundation\Response;

class QuestionController extends Controller
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

    public function index()
    {
        return QuestionResource::collection(Question::latest()->get());
    }//end of index

    
    public function store(Request $request)
    {
        auth()->user()->questions()->create($request->all());

        return response('Created', Response::HTTP_CREATED);
    }//end of store

    
    public function show(Question $question)
    {
        return new QuestionResource($question);
    }//end of show

    
    public function update(Request $request, Question $question)
    {
        $question->update($request->all());
                
        return response('Updated', Response::HTTP_ACCEPTED);
    }//end of update


    public function destroy(Question $question)
    {
        $question->delete();

        return response(null, Response::HTTP_NO_CONTENT);
    }//end of destroy
}//end of controller 
