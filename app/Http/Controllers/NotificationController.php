<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Resources\NotificationResource;

class NotificationController extends Controller
{
    public function index()
    {
    	return [
			'read'   => NotificationResource::collection(auth()->user()->readNotifications),
			'unRead' => NotificationResource::collection(auth()->user()->unreadNotifications)
		];
    }//end of index

    public function markAsRead(Request $request)
    {
    	auth()->user()->notifications->where('id', $request->id)->markAsRead();
    }//end of mark as read
}//end of controller
