<?php

use App\User;
use App\Like;
use App\Reply;
use App\Category;
use App\Question;
use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\Hash;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $admin = new User();

        $admin->name     = "ahmed";
        $admin->email    = "super@admin.com";
        $admin->password = 'secret';
        $admin->save();

        factory(User::class, 10)->create();
        factory(Category::class, 5)->create();
        factory(Question::class, 10)->create();
        factory(Reply::class, 50)->create()->each(function($reply) {
        	return $reply->likes()->save(factory(Like::class)->make());
        });
    }//end of run
}
