@inject('SalesDeliveryNote', 'App\Http\Controllers\SalesDeliveryNoteController')

@extends('adminlte::page')

@section('title', 'PBF | Koperasi Menjangan Enam')
<link rel="shortcut icon" href="{{ asset('resources/assets/logo_pbf.ico') }}" />

@section('content_header')
    
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="{{ url('home') }}">Beranda</a></li>
      <li class="breadcrumb-item active" aria-current="page">Daftar Sales Delivery Note</li>
    </ol>
  </nav>

@stop

@section('content')

<h3 class="page-title">
    <b>Daftar Sales Delivery Note</b> <small>Mengelola Sales Delivery Note </small>
</h3>
<br/>

<div id="accordion">
    <form  method="post" action="{{route('filter-sales-delivery-note')}}" enctype="multipart/form-data">
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
                    <a href="{{ url('sales-delivery-note/export') }}"name="Find" class="btn btn-sm btn-info" title="Export Excel"><i class="fa fa-print"></i>Export</a>
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
            <button onclick="location.href='{{ url('/sales-delivery-note/search-sales-delivery-order') }}'" name="Find" class="btn btn-sm btn-info" title="Add Data"><i class="fa fa-plus"></i> Tambah Sales Delivery Note</button>
        </div>
    </div>

    <div class="card-body">
        <div class="table-responsive">
            <table id="example" style="width:100%" class="table table-striped table-bordered table-hover table-full-width">
                <thead>
                    <tr>
                        <th width="2%" style='text-align:center'>No</th>
                        <th width="10%" style='text-align:center'>Tanggal</th>
                        <th width="15%" style='text-align:center'>No. Delivery Note</th>
                        <th width="10%" style='text-align:center'>Gudang</th>
                        {{-- <th width="10%" style='text-align:center'>Pelanggan</th> --}}
                        <th width="10%" style='text-align:center'>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $no = 1;
                    
                    // print_r($salesdeliverynote);
                    ?>
                    @foreach($salesdeliverynote as $item)
                    <tr>
                        <td style='text-align:center'>{{$no}}</td>
                        <td>{{$item['sales_delivery_note_date']}}</td>
                        <td>{{$item['sales_delivery_note_no']}}</td>
                        <td>{{$SalesDeliveryNote->getInvWarehouseName($item['warehouse_id'])}}</td>
                        {{-- <td>{{$item['customer_id']}}</td> --}}
                        <td style='text-align:center'>
                            <?php if($item['sales_invoice_status']==1) { ?>
                            <a type="button" class="btn btn-outline-warning btn-sm" href="{{ url('/sales-delivery-note/edit/'.$item['sales_delivery_note_id']) }}">Edit</a>
                            <?php } ?>
                            <a type="button" class="btn btn-outline-primary btn-sm" href="{{ url('/sales-delivery-note/detail/'.$item['sales_delivery_note_id']) }}">Detail</a>
                            <a type="button" class="btn btn-outline-dark btn-sm" href="{{ url('/sales-delivery-note/printing/'.$item['sales_delivery_note_id']) }}"  target='_blank'>Print</a>
                            <a type="button" class="btn btn-outline-danger btn-sm" href="{{ url('/sales-delivery-note/void/'.$item['sales_delivery_note_id']) }}">Void</a>
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