<?php

namespace App\Http\Resources;

use App\Http\Resources\ReplyResource;
use Illuminate\Http\Resources\Json\JsonResource;

class QuestionResource extends JsonResource
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
            'title'          => $this->title,
            'slug'           => $this->slug,
            'replies'        => ReplyResource::collection($this->replies),
            'replies_count'  => $this->replies->count(),
            'path'           => $this->path,
            'body'           => $this->body,
            'user'           => $this->user->name,    
            'user_id'        => $this->user_id,    
            'created_at'     => $this->created_at->diffForHumans()
        ];
    }
}
