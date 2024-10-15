@inject('SalesDeliveryOrder', 'App\Http\Controllers\SalesDeliveryOrderController')

@extends('adminlte::page')

@section('title', 'PBF | Koperasi Menjangan Enam')
<link rel="shortcut icon" href="{{ asset('resources/assets/logo_pbf.ico') }}" />

@section('content_header')
    
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ url('home') }}">Beranda</a></li>
        <li class="breadcrumb-item active" aria-current="page">Daftar Sales Delivery Order</li>
    </ol>
</nav>

@stop

@section('content')

<h3 class="page-title">
    <b>Daftar Sales Delivery Order</b> <small>Mengelola Sales Delivery Order </small>
</h3>
<br/>

<div id="accordion">
    <form  method="post" action="{{route('filter-sales-delivery-order')}}" enctype="multipart/form-data">
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
                    <div class = "col-md-6">
                        <div class="form-group form-md-line-input">
                            <section class="control-label">Tanggal Mulai
                                <span class="required text-danger">
                                    *
                                </span>
                            </section>
                            <input type ="date" class="form-control form-control-inline input-medium date-picker input-date" data-date-format="dd-mm-yyyy" type="text" name="start_date" id="start_date" onChange="function_elements_add(this.name, this.value);" value="{{$start_date}}" style="width: 15rem;"/>
                        </div>
                    </div>

                    <div class = "col-md-6">
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
                    <button type="reset" name="Reset" class="btn btn-danger btn-sm" onClick="window.location.reload();"><i class="fa fa-times"></i> Batal</button>
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
            <button onclick="location.href='{{ url('/sales-delivery-order/search-sales-order') }}'" name="Find" class="btn btn-sm btn-info" title="Add Data"><i class="fa fa-plus"></i> Tambah Sales Delivery Order</button>
        </div>
    </div>

    <div class="card-body">
        <div class="table-responsive">
            <table id="example" style="width:100%" class="table table-striped table-bordered table-hover table-full-width">
                <thead>
                    <tr>
                        <th style='text-align:center'>No.</th>
                        <th style='text-align:center'>Pelanggan</th>
                        <th style='text-align:center'>Gudang</th>
                        <th style='text-align:center'>No. Delivery Order</th>
                        <th style='text-align:center'>Tanggal SDO</th>
                        {{-- <th style='text-align:center'>No. Sales Order</th>
                        <th style='text-align:center'>Tanggal SO</th> --}}
                        <th width="15%" style='text-align:center'>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $no = 1;?>
                    @foreach($salesdeliveryorder as $item)
                    <tr>
                        <td style='text-align:center'>{{$no}}.</td>
                        <td>{{$SalesDeliveryOrder->getCustomerNameSalesOrderId($item['sales_order_id'])}}</td>
                        <td>{{$SalesDeliveryOrder->getInvWarehouseName($item['warehouse_id'])}}</td>
                        <td>{{$item['sales_delivery_order_no']}}</td>
                        <td>{{date('d/m/Y', strtotime($item['sales_delivery_order_date']))}}</td>
                        {{-- <td>{{$SalesDeliveryOrder->getSalesOrderNo($item['sales_order_id'])}}</td>
                        <td>{{$SalesDeliveryOrder->getSalesOrderDate($item['sales_order_id'])}}</td> --}}
                        <td style='text-align:center'>
                            <a type="button" class="btn btn-outline-primary btn-sm" href="{{ url('/sales-delivery-order/detail/'.$item['sales_delivery_order_id']) }}">Detail</a>
                            <?php if($item['sales_delivery_note_status'] == 0) { ?>
                            <a type="button" class="btn btn-outline-warning btn-sm" href="{{ url('/sales-delivery-order/edit/'.$item['sales_delivery_order_id']) }}">Edit</a>
                            <a type="button" class="btn btn-outline-danger btn-sm" href="{{ url('/sales-delivery-order/void/'.$item['sales_delivery_order_id']) }}">Void</a>
                            <?php  
                            }
                            ?>
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