@inject('PurchaseOrderReturn', 'App\Http\Controllers\PurchaseOrderReturnController')

@extends('adminlte::page')

@section('title', 'PBF | Koperasi Menjangan Enam')
<link rel="shortcut icon" href="{{ asset('resources/assets/logo_pbf.ico') }}" />

@section('content_header')
    
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ url('home') }}">Beranda</a></li>
        <li class="breadcrumb-item active" aria-current="page">Daftar Return Pembelian</li>
    </ol>
</nav>

@stop

@section('content')

<h3 class="page-title">
    <b>Daftar Return Pembelian</b> <small>Mengelola Return Pembelian</small>
</h3>
<br/>
<div id="accordion">
    <form  method="post" action="{{route('filter-purchase-order-return')}}" enctype="multipart/form-data">
    @csrf
        <div class="card border border-dark">
        <div class="card-header bg-dark" id="headingOne" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
            <h5 class="mb-0">
                Filter
            </h5>
        </div>
    
        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
            <div class="card-body">
                <div class = "row">
                    <div class = "col-md-4">
                        <div class="form-group form-md-line-input">
                            <section class="control-label">Tanggal Mulai
                                <span class="required text-danger">
                                    *
                                </span>
                            </section>
                            <input type ="date" class="form-control form-control-inline input-medium date-picker input-date" data-date-format="dd-mm-yyyy" type="text" name="start_date" id="start_date" onChange="function_elements_add(this.name, this.value);" value="{{$start_date}}" style="width: 15rem;"/>
                        </div>
                    </div>

                    <div class = "col-md-4">
                        <div class="form-group form-md-line-input">
                            <section class="control-label">Tanggal Akhir
                                <span class="required text-danger">
                                    *
                                </span>
                            </section>
                            <input type ="date" class="form-control form-control-inline input-medium date-picker input-date" data-date-format="dd-mm-yyyy" type="text" name="end_date" id="end_date" onChange="function_elements_add(this.name, this.value);" value="{{$end_date}}" style="width: 15rem;"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-footer text-muted">
                <div class="form-actions float-right">
                    <a type="reset" name="Reset" class="btn btn-danger btn-sm" href="{{route('filter-reset-purchase-order-return')}}" onClick="window.location.reload();"><i class="fa fa-times"></i> Batal</a>
                    <button type="submit" name="Find" class="btn btn-primary btn-sm" title="Search Data"><i class="fa fa-search"></i> Cari</button>
                </div>
            </div>
        </div>
        </div>
    </form>
</div>
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
        <button onclick="location.href='{{ url('purchase-order-return/search-purchase-invoice') }}'" name="Find" class="btn btn-sm btn-info" title="Add Data"><i class="fa fa-plus"></i> Tambah Return Pembelian Baru</button>
    </div>
</div>

    <div class="card-body">
        <div class="table-responsive">
            <table id="example" style="width:100%" class="table table-striped table-bordered table-hover table-full-width">
                <thead>
                    <tr>
                        <th width="2%" style='text-align:center'>No.</th>
                        <th width="15%" style='text-align:center'>No Return Pembelian</th>
                        <th width="13%" style='text-align:center'>Tanggal Return Pembelian</th>
                        <th width="15%" style='text-align:center'>Nama Gudang</th>
                        <th width="15%" style='text-align:center'>Nama Supplier</th>
                        <th width="15%" style='text-align:center'>No PO</th>
                        <th width="15%" style='text-align:center'>Tanggal PO</th>
                        <th width="10%" style='text-align:center'>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $no = 1; ?>
                    @foreach($purchaseordereturn as $item)
                    <tr>
                        <td style='text-align:center'>{{$no}}.</td>
                        <td>{{$item['purchase_order_return_no']}}</td>
                        <td>{{date('d/m/Y', strtotime($item['purchase_order_return_date']))}}</td>
                        <td>{{$PurchaseOrderReturn->getInvWarehouseName($item['warehouse_id'])}}</td>
                        <td>{{$PurchaseOrderReturn->getCoreSupplierName($item['supplier_id'])}}</td>
                        <td>{{$PurchaseOrderReturn->getPurchaseOrderNo($item['purchase_order_id'])}}</td>
                        <td>{{$PurchaseOrderReturn->getPurchaseOrderDate($item['purchase_order_id'])}}</td>
                        <td class="" style='text-align:center'>
                            <a type="button" class="btn btn-outline-secondary btn-sm" href="{{ url('/purchase-order-return/cetak/'.$item['purchase_order_return_id']) }}">Cetak</a>
                            <a type="button" class="btn btn-outline-info btn-sm" href="{{ url('/purchase-order-return/nota/'.$item['purchase_order_return_id']) }}">Nota</a>
                            <a type="button" class="btn btn-outline-success btn-sm" href="{{ url('/purchase-order-return/detail/'.$item['purchase_order_return_id']) }}">Detail</a>
                            <a type="button" class="btn btn-outline-danger btn-sm" href="{{ url('/purchase-order-return/delete-purchase-order-return/'.$item['purchase_order_return_id']) }}">Hapus</a>
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