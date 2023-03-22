<?php

namespace App\Http\Controllers\Profile\Liked;

use App\Http\Controllers\Controller;

class IndexController extends Controller
{
    public function __invoke()
    {
        return view('profile.liked.index');
    }
}
