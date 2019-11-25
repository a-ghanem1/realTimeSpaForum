<?php

// Question
Route::apiResource('/question', 'QuestionController');

// Category
Route::apiResource('/category', 'CategoryController');

// Reply
Route::apiResource('/question/{question}/reply', 'ReplyController');