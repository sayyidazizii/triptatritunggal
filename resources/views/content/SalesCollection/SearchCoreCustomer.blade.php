@inject('SalesCollection', 'App\Http\Controllers\SalesCollectionController')

@extends('adminlte::page')

@section('title', 'PBF | Koperasi Menjangan Enam')
<link rel="shortcut icon" href="{{ asset('resources/assets/logo_pbf.ico') }}" />

@section('content_header')
    
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ url('home') }}">Beranda</a></li>
        <li class="breadcrumb-item"><a href="{{ url('sales-collection') }}">Daftar Pelunasan Piutang</a></li>
      <li class="breadcrumb-item active" aria-current="page">Daftar Pelanggan</li>
    </ol>
  </nav>

@stop

@section('content')

<h3 class="page-title">
    <b>Daftar Pelanggan</b> <small>Mengelola Pelanggan</small>
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
    <div class="float-right">
        <button onclick="location.href='{{ url('sales-collection') }}'" name="Find" class="btn btn-sm btn-info" title="Back"><i class="fa fa-angle-left"></i>  Kembali</button>
    </div>
  </div>
    <div class="card-body">
        <div class="table-responsive">
            <table id="example" style="width:100%" class="table table-striped table-bordered table-hover table-full-width">
                <thead>
                    <tr>
                        <th width="2%" style='text-align:center'>No</th>
                        <th width="30%" style='text-align:center'>Nama Pelanggan</th>
                        <th width="40%" style='text-align:center'>Alamat Pelanggan</th>
                        <th width="20%" style='text-align:center'>Jumlah Piutang</th>
                        <th width="8%" style='text-align:center'>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $no = 1; ?>
                    @foreach($corecustomer as $item)
                    <tr>
                        <td style='text-align:center'>{{$no}}</td>
                        <td>{{$item['customer_name']}}</td>
                        <td>{{$item['customer_address']}}</td>
                        <td style='text-align:right'>{{number_format($item['total_owing_amount'],2,',','.')}}</td>
                        <td style='text-align:center'>
                            <a type="button" class="btn btn-outline-primary btn-sm" href="{{ url('/sales-collection/add/'.$item['customer_id']) }}">Pilih</a>
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

@stop

@section('footer')
    
@stop

@section('css')
    
@stop

@section('js')
    
@stop