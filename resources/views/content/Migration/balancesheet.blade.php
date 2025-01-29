@extends('adminlte::page')

@section('title', 'Tripta Tri Tunggal')
<link rel="shortcut icon" href="{{ asset('resources/assets/logo_tripta.ico') }}" />

@section('content_header')
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ url('home') }}">Beranda</a></li>
        <li class="breadcrumb-item active"><a href="{{ url('migration') }}">Daftar Migrasi</a></li>
        <li class="breadcrumb-item active" aria-current="page">Daftar Migrasi Neraca</li>
    </ol>
</nav>
@stop

@section('content')

<h3 class="page-title">
    <b>Daftar Migrasi Neraca</b> <small>Mengelola Migrasi</small>
</h3>
<br/>

@if(session('msg'))
<div class="alert alert-info" role="alert">
    {{ session('msg') }}
</div>
@endif

@if(session('success'))
<div class="alert alert-success" role="alert">
    {{ session('success') }}
</div>
@endif

@if(session('error'))
<div class="alert alert-danger" role="alert">
    {{ session('error') }}
</div>
@endif

<div class="card border border-dark">
    <div class="card-header bg-dark clearfix">
        <h5 class="mb-0 float-left">
            Daftar Migrasi Neraca
        </h5>
    </div>

    <div class="card-body">
        <!-- Form Import Excel -->
        <form action="{{ route('migration.balance-sheet-import') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="form-group">
                <label for="file">Pilih File Excel</label>
                <input type="file" class="form-control" name="file" id="file" accept=".xlsx, .xls" required>
            </div>
            <button type="submit" class="btn btn-primary">Import</button>
        </form>

        <br>

        <!-- Insert Button -->
        <form action="{{ route('migration.balance-sheet-insert') }}" method="POST">
            @csrf
            <button type="submit" class="btn btn-success">Insert</button>
        </form>
    </div>
</div>

<br><br><br>

@include('footer')

@stop

@section('css')

@stop

@section('js')

@stop
