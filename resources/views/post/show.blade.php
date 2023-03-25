@extends('layouts.main')

@section('content')
    <main class="blog-post">
        <div class="container">
            <h1 class="edica-page-title" data-aos="fade-up">{{ $post->title }}</h1>
            <p class="edica-blog-post-meta" data-aos="fade-up" data-aos-delay="200">
                {{ $date->translatedFormat('F') }} {{ $date->day }}, {{ $date->year }} • {{ $date->format('H:i') }}
                • {{ $comments->count() }} Комментариев</p>
            <section class="blog-post-featured-img" data-aos="fade-up" data-aos-delay="300">
                <img src="{{ asset('storage/' . $post->main_image) }}" alt="featured image" class="w-100">
            </section>
            <section class="post-content">
                <div class="row">
                    <div class="col-lg-9 mx-auto" data-aos="fade-up">
                        {!! $post->content !!}
                    </div>
                </div>
            </section>
            <section>
                <div class="row col-lg-9 mx-auto mt-4">
                    {{ $post->likes()->count() }}
                    @auth()
                        <form action="{{ route('post.like.store', $post->id) }}" method="POST">
                            @csrf
                            @if(auth()->user()->likedPosts->contains($post->id))
                                <button type="submit" class="border-0 bg-transparent text-danger">
                                    <i class="fas fa-heart"></i>
                                </button>
                            @else
                                <button type="submit" class="border-0 bg-transparent">
                                    <i class="far fa-heart"></i>
                                </button>
                            @endif
                        </form>
                    @endauth
                    @guest()
                        <div>
                            {{ $post->likes()->count() }}
                            <i class="far fa-heart"></i>
                        </div>
                    @endguest
                </div>
            </section>
            <div class="row">
                <div class="col-lg-9 mx-auto">
                    @if($relatedPosts->count() > 0)
                    <section class="related-posts">
                        <h2 class="section-title mb-4" data-aos="fade-up">Похожие посты</h2>
                        <div class="row">
                            @foreach($relatedPosts as $relatedPost)
                                <div class="col-md-4" data-aos="fade-right" data-aos-delay="100">
                                    <a href="{{ route('post.show', $relatedPost->id) }}">
                                        <img src="{{ asset('storage/' . $relatedPost->main_image) }}" alt="related post"
                                             class="post-thumbnail">
                                        <p class="post-category">{{ $relatedPost->category->title }}</p>
                                        <h5 class="post-title">{{ $relatedPost->title }}</h5>
                                    </a>
                                </div>
                            @endforeach
                        </div>
                    </section>
                    @endif
                    <section class="mb-5">
                        <h2 class="mb-3">Комментарии({{ $comments->count() }})</h2>
                        @foreach($comments as $comment)
                            <div class="comment-text mb-4">
                    <span class="username">
                        <div class="mb-3">
                      {{ $comment->user->name }}
                        </div>
                      <span class="text-muted float-right">{{ $comment->getFormattedData()->diffForHumans() }}</span>
                    </span><!-- /.username -->
                                {{ $comment->message }}
                            </div>
                        @endforeach
                    </section>
                    @auth()
                        <section class="comment-section">
                            <h2 class="section-title mb-5" data-aos="fade-up">Комментировать</h2>
                            <form action="{{ route('post.comment.store', $post->id) }}" method="post">
                                @csrf
                                <div class="row">
                                    <div class="form-group col-12" data-aos="fade-up">
                                        <label for="comment" class="sr-only">Comment</label>
                                        <textarea name="message" id="comment" class="form-control"
                                                  placeholder="Написать комментарий"
                                                  rows="10"></textarea>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-12" data-aos="fade-up">
                                        <input type="submit" value="Отправить" class="btn btn-warning">
                                    </div>
                                </div>
                            </form>
                        </section>
                    @endauth
                </div>
            </div>
        </div>
    </main>
@endsection
