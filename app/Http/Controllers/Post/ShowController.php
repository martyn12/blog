<?php

namespace App\Http\Controllers\Post;

use App\Http\Controllers\Controller;
use App\Models\Comment;
use App\Models\Post;
use Carbon\Carbon;
use Illuminate\Http\Request;

class ShowController extends Controller
{
    public function __invoke(Post $post)
    {
        $relatedPosts = Post::where('category_id', '=', $post->category_id)
            ->where('id', '!=', $post->id)
            ->inRandomOrder()
            ->limit(5)
            ->get();
        $date = Carbon::parse($post->created_at);
        $comments = Comment::where('post_id', '=', $post->id)->get();
        return view('post.show', compact('post', 'date', 'relatedPosts', 'comments'));
    }
}
