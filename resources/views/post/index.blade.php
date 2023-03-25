@extends('layouts.main')

@section('content')
    <main class="blog">
        <div class="container">
            <h1 class="edica-page-title" data-aos="fade-up">Blog</h1>
            <section class="featured-posts-section">
                <div class="row">
                    @foreach($posts as $post)
                        <div class="col-md-4 fetured-post blog-post" data-aos="fade-right">
                            <div class="blog-post-thumbnail-wrapper">
                                <img src="{{ 'storage/' . $post->preview_image }}" alt="preview_image">
                            </div>
                            <div class="d-flex justify-content-between">
                                <p class="blog-post-category">{{ $post->category->title }}</p>
                                @auth()
                                    <form action="{{ route('post.like.store', $post->id) }}" method="POST">
                                        @csrf
                                        <div>
                                            {{ $post->likes()->count() }}
                                            @if(auth()->user()->likedPosts->contains($post->id))
                                                <button type="submit" class="border-0 bg-transparent">
                                                    <i class="fas fa-heart text-danger"></i>
                                                </button>
                                            @else
                                                <button type="submit" class="border-0 bg-transparent">
                                                    <i class="far fa-heart"></i>
                                                </button>
                                            @endif
                                        </div>
                                    </form>
                                @endauth
                                @guest()
                                    <div>
                                        {{ $post->likes()->count() }}
                                        <i class="far fa-heart"></i>
                                    </div>
                                @endguest
                            </div>
                            <a href="{{ route('post.show', $post->id) }}" class="blog-post-permalink">
                                <h6 class="blog-post-title">{{ $post->title }}</h6>
                            </a>

                        </div>

                    @endforeach
                </div>
                <div class="pagination justify-content-center" style="margin-top: -100px">
                    {{ $posts->links() }}
                </div>
            </section>
            <div class="row">
                <div class="col-md-8">
                    <section>
                        <div class="row blog-post-row">
                            @foreach($randomPosts as $post)
                                <div class="col-md-6 blog-post" data-aos="fade-up">
                                    <div class="blog-post-thumbnail-wrapper">
                                        <img src="{{ 'storage/' . $post->preview_image }}" alt="preview_image">
                                    </div>
                                    <p class="blog-post-category">{{ $post->category->title }}t</p>
                                    <a href="{{ route('post.show', $post->id) }}" class="blog-post-permalink">
                                        <h6 class="blog-post-title">{{ $post->title }}</h6>
                                    </a>
                                </div>
                            @endforeach
                        </div>
                    </section>
                </div>
                <div class="col-md-4 sidebar" data-aos="fade-left">
                    <div class="widget widget-post-list">
                        <h5 class="widget-title">Популярные посты</h5>
                        <ul class="post-list">
                            @foreach($likedPosts as $post)
                                <li class="post">
                                    <a href="{{ route('post.show', $post->id) }}" class="post-permalink media">
                                        <img src="{{ 'storage/' . $post->preview_image }}" alt="blog post">
                                        <div class="media-body">
                                            <h6 class="post-title">{{ $post->title }}</h6>
                                        </div>
                                    </a>
                                </li>
                            @endforeach
                        </ul>
                    </div>

                </div>
            </div>
        </div>

    </main>
@endsection
