@extends('admin.layouts.main')

@section('content')
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Редактировать пост</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{ route('admin.index') }}">Админ панель</a></li>
                            <li class="breadcrumb-item"><a href="{{ route('admin.post.index') }}">Посты</a></li>
                            <li class="breadcrumb-item active">Редактирование поста</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->
        <!-- Main content -->
        <div class="row">
            <div class="col-12">
                <form action="{{ route('admin.post.update', $post->id) }}" method="POST" enctype="multipart/form-data" class="col-4">
                    @csrf
                    @method('PATCH')
                    <div class="form-group">
                        <input type="text" class="form-control w-50" name="title" placeholder="Заголовок поста"
                               value="{{ $post->title }}">
                        @error('title')
                        <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <textarea id="summernote" name="content">
                            {{ $post->content }}
                        </textarea>
                        @error('content')
                        <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="input-group mb-3 w-50">
                        <div>
                            <img src="{{ asset('storage/' . $post->preview_image) }}" alt="preview_image" class="w-50 mb-2">
                        </div>
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" name="preview_image">
                            <label class="custom-file-label">Выбрать картинку для превью</label>
                        </div>
                        @error('preview_image')
                        <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="input-group mb-3 w-50">
                        <div>
                            <img src="{{ asset('storage/' . $post->main_image) }}" alt="main_image" class="w-50 mb-2">
                        </div>
                        <div class="custom-file">
                            <input type="file" class="custom-file-input" name="main_image">
                            <label class="custom-file-label">Выбрать картинку в пост</label>
                        </div>
                        @error('main_image')
                        <div class="text-danger">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="form-group w-25">
                        <label>Категория поста</label>
                        <select class="form-control" name="category_id">
                            @foreach($categories as $category)
                                <option value="{{ $category->id }}"
                                    {{ $category->id == $post->category_id ? ' selected' : '' }}
                                >{{ $category->title }}</option>
                            @endforeach
                        </select>
                        @error('category_id')
                        <div class="text-danger">Выберите категорию</div>
                        @enderror
                    </div>
                    <div class="form-group w-50">
                        <label>Тэги</label>
                        <select name="tag_ids[]" class="select2" multiple="multiple" data-placeholder="Выберите тэги" style="width: 100%">
                            @foreach($tags as $tag)
                                <option {{ is_array($post->tags->pluck('id')->toArray()) && in_array($tag->id, $post->tags->pluck('id')->toArray()) ? ' selected' : '' }} value="{{ $tag->id }}">{{ $tag->title }}</option>
                            @endforeach
                        </select>
                    </div>
                    <input type="submit" class="btn btn-default" value="Обновить">
                </form>
            </div>
        </div>
    </div>

@endsection
