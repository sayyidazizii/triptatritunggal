@extends('adminlte::page')

@section('title', 'Tripta Tri Tunggal')
<link rel="shortcut icon" href="{{ asset('resources/assets/logo_tripta.ico') }}" />
@section('js')
<script>
    // Tambahkan JavaScript tambahan jika diperlukan
</script>
@stop

@section('content_header')

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ url('home') }}">Beranda</a></li>
        <li class="breadcrumb-item active" aria-current="page">Daftar Migrasi</li>
    </ol>
</nav>

@stop

@section('content')

<h3 class="page-title">
    <b>Daftar Migrasi</b> <small>Mengelola Migrasi</small>
</h3>
<br/>

@if(session('msg'))
<div class="alert alert-info" role="alert">
    {{ session('msg') }}
</div>
@endif

<div class="card border border-dark">
    <div class="card-header bg-dark clearfix">
        <h5 class="mb-0 float-left">
            Daftar Migrasi
        </h5>
    </div>

    <div class="card-body">
        <div class="row">
            <!-- Card 1: Migrasi Akun -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header bg-primary text-white">
                        <h5 class="card-title mb-0">Migrasi Akun</h5>
                    </div>
                    <div class="card-body">
                        <p>Kelola dan migrasikan data akun dengan mudah.</p>
                        <button onclick="location.href='{{ url('/migration/account') }}'" class="btn btn-primary btn-sm"><i class="fa fa-arrow-right"></i> Pergi ke Migrasi Akun</button>
                        <a href="{{ route('migration.download-template', 'account') }}" class="btn btn-secondary btn-sm"><i class="fa fa-download"></i> Download Template</a>
                    </div>
                </div>
            </div>

            <!-- Card 2: Migrasi Laba Rugi -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header bg-success text-white">
                        <h5 class="card-title mb-0">Migrasi Laba Rugi</h5>
                    </div>
                    <div class="card-body">
                        <p>Migrasikan laporan laba rugi untuk pencatatan keuangan.</p>
                        <button onclick="location.href='{{ url('/migration/profit-loss') }}'" class="btn btn-success btn-sm"><i class="fa fa-arrow-right"></i> Pergi ke Migrasi Laba Rugi</button>
                        <a href="{{ route('migration.download-template', 'profit-loss') }}" class="btn btn-secondary btn-sm"><i class="fa fa-download"></i> Download Template</a>
                    </div>
                </div>
            </div>

            <!-- Card 3: Migrasi Neraca -->
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header bg-warning text-white">
                        <h5 class="card-title mb-0">Migrasi Neraca</h5>
                    </div>
                    <div class="card-body">
                        <p>Kelola migrasi neraca untuk laporan posisi keuangan.</p>
                        <button onclick="location.href='{{ url('/migration/balance-sheet') }}'" class="btn btn-warning btn-sm"><i class="fa fa-arrow-right"></i> Pergi ke Migrasi Neraca</button>
                        <a href="{{ route('migration.download-template', 'balance-sheet') }}" class="btn btn-secondary btn-sm"><i class="fa fa-download"></i> Download Template</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<br>
<br>
<br>

@include('footer')

@stop

@section('css')

@stop

@section('js')

@stop
