@extends('admin.layouts.main')

@section('content')
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0">Добавить тэг</h1>
                    </div><!-- /.col -->
                    <div class="col-sm-6">
                        <ol class="breadcrumb float-sm-right">
                            <li class="breadcrumb-item"><a href="{{ route('admin.index') }}">Админ панель</a></li>
                            <li class="breadcrumb-item"><a href="{{ route('admin.tag.index') }}">Тэги</a></li>
                            <li class="breadcrumb-item active">Создание тэга</li>
                        </ol>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->
        <!-- Main content -->
        <div class="row">
            <div class="col-12">
                <form action="{{ route('admin.tag.store') }}" method="POST" class="col-4">
                    @csrf
                    <div class="form-group">
                        <input type="text" class="form-control" name="title" placeholder="Название тэга">
                        @error('title')
                        <div class="text-danger">Поле обязательно к заполнению</div>
                        @enderror
                    </div>
                    <input type="submit" class="btn btn-default" value="Добавить">
                </form>
            </div>
        </div>
    </div>

@endsection
