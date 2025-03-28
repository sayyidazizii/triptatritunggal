@inject('InvWarehouseTransferType', 'App\Http\Controllers\InvWarehouseTransferTypeController')

@extends('adminlte::page')

@section('title', 'Tripta Tri Tunggal')
<link rel="shortcut icon" href="{{ asset('resources/assets/logo_tripta.ico') }}" />

@section('content_header')

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ url('home') }}">Beranda</a></li>
        <li class="breadcrumb-item active" aria-current="page">Daftar Tipe Pengeluaran Gudang</li>
    </ol>
</nav>

@stop

@section('content')

<h3 class="page-title">
    <b>Daftar Tipe Pengeluaran Gudang</b> <small>Mengelola Tipe Pengeluaran Gudang</small>
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
            <button onclick="location.href='{{ url('warehouse-out-type/add') }}'" name="Find" class="btn btn-sm btn-info" title="Add Data"><i class="fa fa-plus"></i> Tambah Tipe Pengeluaran Gudang Baru</button>
        </div>
    </div>

    <div class="card-body">
        <div class="table-responsive">
            <table id="example" style="width:100%" class="table table-striped table-bordered table-hover table-full-width">
                <thead>
                    <tr>
                        <th width="2%" style='text-align:center'>No.</th>
                        <th width="13%" style='text-align:center'>Nama Tipe Pengeluaran Gudang</th>
                        <th width="20%" style='text-align:center'>Keterangan</th>
                        <th width="10%" style='text-align:center'>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $no = 1; ?>
                    @foreach($invwarehouseouttype as $warehouse)
                    <tr>
                        <td style='text-align:center'>{{$no}}.</td>
                        <td>{{$warehouse['warehouse_out_type_name']}}</td>
                        <td>{{$warehouse['warehouse_out_type_remark']}}</td>
                        <td class="" style='text-align:center'>
                            <a type="button" class="btn btn-outline-warning btn-sm" href="{{ url('/warehouse-out-type/edit/'.$warehouse['warehouse_out_type_id']) }}">Edit</a>
                            <a type="button" class="btn btn-outline-danger btn-sm" href="{{ url('/warehouse-out-type/delete-warehouse-out-type/'.$warehouse['warehouse_out_type_id']) }}">Hapus</a>
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
