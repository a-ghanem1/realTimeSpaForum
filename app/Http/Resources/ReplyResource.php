<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class ReplyResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id'            => $this->id,
            'body'          => $this->body,
            'user'          => $this->user->name,  
            'user_id'       => $this->user->id,  
            'created_at'    => $this->created_at->diffForHumans(),
            'likes_count'   => $this->likes->count(),
            'question_slug' => $this->question->slug,
            'liked'         => !! $this->likes->where('user_id', auth()->user()->id)->count()
        ];
    }
}
