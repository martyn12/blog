<?php

namespace App\Http\Controllers\Profile\Comment;

use App\Http\Controllers\Controller;

class IndexController extends Controller
{
    public function __invoke()
    {
        return view('profile.comment.index');
    }
}
