@extends('profile.layouts.main')

@section('content')
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Редактировать комментарий</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{ route('profile.main.index') }}">Личный кабинет</a>
                            </li>
                            <li class="breadcrumb-item"><a href="{{ route('profile.comment.index') }}">Комментарии пользователя</a></li>
                            <li class="breadcrumb-item active">Редактирование комментария</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->
        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <!-- Small boxes (Stat box) -->
                <div class="row">

                    <div class="col-12">
                        <form action="{{ route('profile.comment.update', $comment->id) }}" method="POST"
                              enctype="multipart/form-data" class="col-4">
                            @csrf
                            @method('PATCH')
                            <div class="form-group">
                                <textarea id="summernote" name="message">
                                    {{ $comment->message }}
                                </textarea>
                                @error('message')
                                <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <input type="submit" class="btn btn-default" value="Обновить">
                        </form>
                    </div>
                </div>
                <!-- /.row -->
            </div>
        </section>
    </div>

@endsection
