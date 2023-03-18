@extends('admin.layouts.main')

@section('content')
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Создать пост</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="#">Home</a></li>
                            <li class="breadcrumb-item active">Dashboard v1</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->
        <!-- Main content -->
        <div class="row">
            <div class="col-9 ml-3">
                <form action="{{ route('admin.post.store') }}" method="POST">
                    @csrf
                    <div class="form-group">
                        <input type="text" class="form-control w-50" name="title" placeholder="Заголовок поста" value="{{ old('title') }}">
                        @error('title')
                        <div class="text-danger">Поле обязательно к заполнению</div>
                        @enderror
                    </div>
                    <div class="form-group">
                        <textarea id="summernote" name="content">
                            {{ old('content') }}
                        </textarea>
                        @error('content')
                        <div class="text-danger">Поле обязательно к заполнению</div>
                        @enderror
                    </div>
                    <input type="submit" class="btn btn-default" value="Создать">
                </form>
            </div>
        </div>
    </div>

@endsection
