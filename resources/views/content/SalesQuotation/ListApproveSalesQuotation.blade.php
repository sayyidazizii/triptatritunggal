@inject('SalesQuotationApproval', 'App\Http\Controllers\SalesQuotationApprovalController')

@extends('adminlte::page')

@section('title', 'Tripta Tri Tunggal')
<link rel="shortcut icon" href="{{ asset('resources/assets/logo_tripta.ico') }}" />

@section('content_header')

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ url('home') }}">Beranda</a></li>
        <li class="breadcrumb-item active" aria-current="page">Daftar Persetujuan Sales Quotation</li>
    </ol>
</nav>

@stop

@section('content')

<h3 class="page-title">
    <b>Daftar Persetujuan Sales Quotation</b> <small>Mengelola Persetujuan Sales Quotation</small>
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
    </div>
    <div class="card-body">
        <div class="table-responsive">
            <table id="example" style="width:100%" class="table table-striped table-bordered table-hover table-full-width">
                <thead>
                    <tr>
                        <th width="2%" style='text-align:center'>No.</th>
                        <th width="20%" style='text-align:center'>Nama Pelanggan</th>
                        <th width="20%" style='text-align:center'>No QO</th>
                        <th width="10%" style='text-align:center'>Tanggal QO</th>
                        <th width="15%" style='text-align:center'>Status</th>
                        <th width="15%" style='text-align:center'>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $no = 1; ?>
                    @foreach($salesquotation as $item)
                    <tr>
                        <td style='text-align:center'>{{$no}}.</td>
                        <td>{{$SalesQuotationApproval->getCoreCustomerName($item['customer_id'])}}</td>
                        <td>{{$item['sales_quotation_no']}}</td>
                        <td>{{date('d/m/Y', strtotime($item['sales_quotation_date']))}}</td>
                        <?php
                        if($item['sales_order_status']==0){
                            ?>
                            <td>Dalam Proses</td>
                        <?php
                        }else if($item['sales_order_status']==1) {
                            ?>
                            <td>Sebagian diterima</td>
                            <?php
                        }else if($item['sales_order_status']==2) {
                            ?>
                            <td>Sudah diterima</td>
                            <?php
                        }
                        ?>
                        <td style='text-align:center'>
                            <a type="button" class="btn btn-outline-primary btn-sm" href="{{ url('/sales-quotation-approval/approve/'.$item['sales_quotation_id']) }}">Approve</a>
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
<br>

@include('footer')

@stop

@section('css')

@stop

@section('js')

@stop
