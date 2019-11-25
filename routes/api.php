<?php

// Question
Route::apiResource('/question', 'QuestionController');

// Category
Route::apiResource('/category', 'CategoryController');

// Reply
Route::apiResource('/question/{question}/reply', 'ReplyController');

// Like
Route::post('/like/{reply}', 'LikeController@likeIt');
Route::delete('/like/{reply}', 'LikeController@unLikeIt');