@inject('BuyersAcknowledgment', 'App\Http\Controllers\BuyersAcknowledgmentController')
@extends('adminlte::page')

@section('title', 'Tripta Tri Tunggal')
<link rel="shortcut icon" href="{{ asset('resources/assets/logo_tripta.ico') }}" />

@section('js')
<script>
	$(document).ready(function(){
        $("#warehouse_id").select2("val", "0");
        $("#account_id").select2("val", "0");
	});
</script>
@stop

@section('content_header')

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ url('home') }}">Beranda</a></li>
        <li class="breadcrumb-item"><a href="{{ url('buyers-acknowledgment') }}">Daftar Penerimaan Pihak Pembeli
        </a></li>
        <li class="breadcrumb-item"><a href="{{ url('buyers-acknowledgment/search-sales-delivery-note') }}">Daftar Sales Delivery Note</a></li>
        <li class="breadcrumb-item active" aria-current="page">Tambah Penerimaan Pihak Pembeli
        </li>
    </ol>
</nav>

@stop

@section('content')

<h3 class="page-title">
    Form Tambah Penerimaan Pihak Pembeli
</h3>
<br/>
@if(session('msg'))
<div class="alert alert-info" role="alert">
    {{session('msg')}}
</div>
@endif
@if(count($errors) > 0)
<div class="alert alert-danger" role="alert">
    @foreach ($errors->all() as $error)
        <li>{{ $error }}</li>
    @endforeach
</div>
@endif
    <div class="card border border-dark">
    <div class="card-header border-dark bg-dark">
        <h5 class="mb-0 float-left">
            Form Tambah
        </h5>
        <div class="float-right">
            <button onclick="location.href='{{ url('buyers-acknowledgment/search-sales-delivery-note') }}'" name="Find" class="btn btn-sm btn-info" title="Back"><i class="fa fa-angle-left"></i>  Kembali</button>
        </div>
    </div>

    <form method="post" action="{{route('process-add-buyers-acknowledgment')}}" enctype="multipart/form-data">
        @csrf
        <div class="card-body">
            <div class="row form-group">
                <!-- Kolom Kiri -->
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="text-dark">No. Sales Delivery Note<span class="red"> *</span></label>
                        <input type="text" class="form-control form-control-inline input-medium date-picker input-date" name="sales_delivery_note_no" id="sales_delivery_note_no" style="width: 100%;" value="{{ $salesdeliverynote->sales_delivery_note_no }}" readonly/>
                        <input type="hidden" class="form-control form-control-inline input-medium date-picker input-date" name="sales_delivery_note_id" id="sales_delivery_note_id" style="width: 100%;" value="{{ $salesdeliverynote->sales_delivery_note_id }}" readonly/>
                    </div>
                    <div class="form-group">
                        <label class="text-dark">Nama Pembeli<span class="red"> *</span></label>
                        <input type="text" class="form-control form-control-inline input-medium date-picker input-date" name="customer_name" id="customer_name" style="width: 100%;" value="{{$BuyersAcknowledgment->getCustomerName($salesdeliverynote['customer_id'])}}" readonly/>
                    </div>
                    <div class="form-group">
                        <label class="text-dark">Catatan</label>
                        <textarea rows="5" class="form-control form-control-inline input-medium date-picker input-date" name="buyers_acknowledgment_remark" id="buyers_acknowledgment_remark" onChange="function_elements_add(this.name, this.value);"></textarea>
                    </div>
                </div>
                <!-- Kolom Kanan -->
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="text-dark">No. BPB<span class="red"> *</span></label>
                        <input type="text" class="form-control form-control-inline input-medium date-picker input-date" name="buyers_acknowledgment_no" id="buyers_acknowledgment_no" style="width: 100%;" />
                    </div>
                    <div class="form-group">
                        <label class="text-dark">No. PO Customer<span class="red"> *</span></label>
                        <input type="text" class="form-control form-control-inline input-medium date-picker input-date" name="purchase_order_customer" id="purchase_order_customer" value="{{ $salesdeliverynote->salesQuotation->purchase_order_customer }}" style="width: 100%;" />
                    </div>
                    <div class="form-group">
                        <label class="text-dark">Tanggal Penerimaan<span class="red"> *</span></label>
                        <input type="date" class="form-control form-control-inline input-medium date-picker input-date" data-date-format="dd-mm-yyyy" name="buyers_acknowledgment_date" id="buyers_acknowledgment_date" onChange="function_elements_add(this.name, this.value);" />
                    </div>
                </div>
            </div>
        </div>
    </div>

    <br/>
    <div class="card border border-dark">
        <div class="card-header border-dark bg-dark">
            <h5 class="mb-0 float-left">
                Daftar
            </h5>
        </div>

        <div class="card-body">
            <div class="form-body form">
                <div class="table-responsive">
                    <table class="table table-bordered table-advance table-hover" >
                        <thead class="thead-light" >
                            <tr>
                                <th width="2%" style='text-align:center'>No.</th>
                                <th width="10%" style='text-align:center'>Barang</th>
                                <th width="3%" style='text-align:center'>Qty Kirim</th>
                                <th width="3%" style='text-align:center'>Qty Diterima</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php
                                if(count($salesdeliverynoteitem)==0){
                                    echo "<tr><th colspan='9' style='text-align  : center !important;'>Data Kosong</th></tr>";
                                } else {
                                    $no =1;
                                    foreach ($salesdeliverynoteitem AS $key => $val){
                                        echo"
                                            <tr>
                                                <td style='text-align  : center'>".$no."</td>
                                                <td style='text-align  : left !important;'>".$BuyersAcknowledgment->getItemTypeName($val->item_type_id)."</td>
                                                <td style='text-align  : right !important;'>".$val->quantity."</td>
                                                <td style='text-align  : right !important;'>
                                                    <input class='form-control' text-align:right;' type='text' name='quantity_received_".$no."' id='quantity_received".$no."' value=''/>
                                                </td>
                                                ";
                                                echo"
                                            </tr>
                                        ";
                                        $no++;
                                    }
                                }
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="card-footer text-muted">
            <div class="form-actions float-right">
                <a name='Reset'  class='btn btn-danger btn-sm' onClick='javascript:return confirm(\"apakah yakin ingin dihapus ?\")'><i class="fa fa-times"></i> Reset</a>
                <button type="submit" name="Save"  class="btn btn-primary btn-sm" title="Save"><i class="fa fa-check"></i> Simpan</button>
            </div>
        </div>
    </div>
    </form>
</div>
<br/>
<br/>
<br/>
@include('footer')

@stop

@section('css')

@stop

@section('js')

@stop
