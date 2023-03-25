<?php

namespace App\Http\Controllers\Post;

use App\Http\Controllers\Controller;
use App\Models\Post;
use Illuminate\Http\Request;

class IndexController extends Controller
{
    public function __invoke()
    {
        $posts = Post::cursorPaginate(9);
        $randomPosts = Post::get()->random(4);
        $likedPosts = Post::withCount('likedUsers')
            ->orderBy('liked_users_count', 'DESC')
            ->limit(4)
            ->get();
        return view('post.index', compact('posts', 'likedPosts', 'randomPosts'));
    }
}
