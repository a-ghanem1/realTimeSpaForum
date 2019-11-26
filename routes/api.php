<?php

//JWT Authentication 
Route::group([
	'middleware' => 'api',
    'prefix' => 'auth'

], function ($router) {

    Route::post('login', 'AuthController@login');
    Route::post('signup', 'AuthController@signup');
    Route::post('logout', 'AuthController@logout');
    Route::post('refresh', 'AuthController@refresh');
    Route::post('me', 'AuthController@me');
    Route::post('payload', 'AuthController@payload');

});


// Question
Route::apiResource('/question', 'QuestionController');

// Category
Route::apiResource('/category', 'CategoryController');

// Reply
Route::apiResource('/question/{question}/reply', 'ReplyController');

// Like
Route::post('/like/{reply}', 'LikeController@likeIt');
Route::delete('/like/{reply}', 'LikeController@unLikeIt');