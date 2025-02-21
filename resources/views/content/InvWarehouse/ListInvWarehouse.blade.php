@inject('InvWarehouse', 'App\Http\Controllers\InvWarehouseController')

@extends('adminlte::page')

@section('title', 'Tripta Tri Tunggal')
<link rel="shortcut icon" href="{{ asset('resources/assets/logo_tripta.ico') }}" />

@section('content_header')

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ url('home') }}">Beranda</a></li>
        <li class="breadcrumb-item active" aria-current="page">Daftar Gudang</li>
    </ol>
</nav>

@stop

@section('content')

<h3 class="page-title">
    <b>Daftar Gudang</b> <small>Mengelola Gudang</small>
</h3>
<br/>
@if(session('msg'))
<div class="alert alert-info" role="alert">
    {{session('msg')}}
</div>
@endif
<div class="card border border-dark">
    <div class="card-header bg-dark clearfix">
        <h5 class="mb-0 float-left">
            Daftar
        </h5>
        <div class="form-actions float-right">
            <button onclick="location.href='{{ url('warehouse/add') }}'" name="Find" class="btn btn-sm btn-info" title="Add Data"><i class="fa fa-plus"></i> Tambah Gudang Baru</button>
        </div>
    </div>

    <div class="card-body">
        <div class="table-responsive">
            <table id="example" style="width:100%" class="table table-striped table-bordered table-hover table-full-width">
                <thead>
                    <tr>
                        <th width="2%" style='text-align:center'>No.</th>
                        <th width="10%" style='text-align:center'>Kode Gudang</th>
                        <th width="13%" style='text-align:center'>Nama Gudang</th>
                        <th width="13%" style='text-align:center'>Jenis Gudang</th>
                        <th width="12%" style='text-align:center'>Lokasi</th>
                        <th width="15%" style='text-align:center'>Alamat</th>
                        <th width="13%" style='text-align:center'>No. Telp</th>
                        <th width="15%" style='text-align:center'>Keterangan</th>
                        <th width="10%" style='text-align:center'>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                        $no = 1;
                        $type = [
                                ''  => 'Select',
                                '1' => 'Pengeluaran',
                                '2' => 'Penambahan'
                        ];
                    ?>
                    @foreach($invwarehouse as $warehouse)
                    <tr>
                        <td style='text-align:center'>{{$no}}.</td>
                        <td>{{$warehouse['warehouse_code']}}</td>
                        <td>{{$warehouse['warehouse_name']}}</td>
                        <td>{{$type[$warehouse['warehouse_type']]}}</td>
                        <td>{{$InvWarehouse->getCityName($warehouse['warehouse_location_id'])}}</td>
                        <td>{{$warehouse['warehouse_address']}}</td>
                        <td>{{$warehouse['warehouse_phone']}}</td>
                        <td>{{$warehouse['warehouse_remark']}}</td>
                        <td class="" style='text-align:center'>
                            <a type="button" class="btn btn-outline-warning btn-sm" href="{{ url('/warehouse/edit/'.$warehouse['warehouse_id']) }}">Edit</a>
                            <a type="button" class="btn btn-outline-danger btn-sm" href="{{ url('/warehouse/delete-warehouse/'.$warehouse['warehouse_id']) }}">Hapus</a>
                        </td>
                    </tr>
                    <?php $no++; ?>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>
</div>
</div>
<br>
<br>

@include('footer')

@stop

@section('css')

@stop

@section('js')

@stop
