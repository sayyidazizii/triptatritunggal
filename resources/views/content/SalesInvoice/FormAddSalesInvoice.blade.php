@inject('SalesInvoice', 'App\Http\Controllers\SalesInvoiceController')
@extends('adminlte::page')

@section('title', 'Tripta Tri Tunggal')
<link rel="shortcut icon" href="{{ asset('resources/assets/logo_tripta.ico') }}" />
@section('js')
<script>
	$(document).ready(function(){

        $("#sales_delivery_note_id").change(function(){
			var sales_delivery_note_id 	= $("#sales_delivery_note_id").val();
                $.ajax({
                    type: "POST",
                    url : "{{route('sales-invoice-change-delivery-note')}}",
                    dataType: "html",
                    data: {
                        'sales_delivery_note_id'	: sales_delivery_note_id,
                        '_token'                    : '{{csrf_token()}}',
                    },
                    success: function(return_data){
                        // var data = JSON.parse(return_data.slice(521));
                        data = JSON.parse(data);
                        $("#customer_id").val(data.customer.customer_name);
                        $("#sales_order_no").val(data.salesorder.sales_order_no);
                        $("#sales_order_date").val(data.salesorder.sales_order_date);
                        $("#expedition_id").val(data.expedition.expedition_name);
                        $("#sales_delivery_note_cost").val(data.salesdeliverynote.sales_delivery_note_cost);
                        $("#driver_name").val(data.salesdeliverynote.driver_name);
                        $("#fleet_police_number").val(data.salesdeliverynote.fleet_police_number);
                        $("#sales_delivery_note_date").val(data.salesdeliverynote.sales_delivery_note_date);
                        $("#tablebody").html(data.salesdeliverynoteitem);
                    },
                    error: function(data)
                    {
                        console.log(data);
                    }
                });

		});

    });

	function toRp(number) {
		var number = number.toString(),
		rupiah = number.split('.')[0],
		cents = (number.split('.')[1] || '') +'00';
		rupiah = rupiah.split('').reverse().join('')
			.replace(/(\d{3}(?!$))/g, '$1.')
			.split('').reverse().join('');
		return rupiah + ',' + cents.slice(0, 2);
	}
</script>
@stop
@section('content_header')

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ url('home') }}">Beranda</a></li>
        <li class="breadcrumb-item"><a href="{{ url('sales-invoice') }}">Daftar Invoice Penjualan</a></li>
        <li class="breadcrumb-item"><a href="{{ url('sales-invoice/search-buyers-acknowledgment') }}">Daftar Sales Invoice</a></li>
        <li class="breadcrumb-item active" aria-current="page">Tambah Invoice Penjualan</li>
    </ol>
</nav>

@stop

@section('content')

<h3 class="page-title">
    <b>Form Tambah Invoice Penjualan</b>
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
            <button onclick="location.href='{{ url('sales-invoice/search-buyers-acknowledgment') }}'" name="Find" class="btn btn-sm btn-info" title="Back"><i class="fa fa-angle-left"></i>  Kembali</button>
        </div>
    </div>

    <form method="post" action="{{route('process-add-sales-invoice')}}" enctype="multipart/form-data">
        @csrf
        <div class="card-body">
            <div class="row form-group">
                <div class="col-md-6">
                    <a class="text-dark">Delivery Note No</a>
                    <input class="form-control input-bb" type="text" name="sales_delivery_note_no" id="sales_delivery_note_no" value="{{$salesdeliverynote == null ? : $salesdeliverynote['sales_delivery_note_no']}}" readonly/>
                    <input class="form-control input-bb" type="hidden" name="sales_delivery_note_id" id="sales_delivery_note_id" value="{{$salesdeliverynote == null ? : $salesdeliverynote['sales_delivery_note_id']}}" readonly/>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Pembeli</a>
                        <input class="form-control input-bb" type="text" name="customer_name" id="customer_name" value="{{$SalesInvoice->getCustomerName($salesdeliverynote['customer_id'])}}" readonly/>
                        <input class="form-control input-bb" type="hidden" name="customer_id" id="customer_id" value="{{$salesdeliverynote['customer_id']}}" readonly/>
                    </div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Nama Ekspedisi</a>
                        <input class="form-control input-bb" type="text" name="expedition_id" id="expedition_id" value="{{$coreexpedition['expedition_name']}}" readonly/>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Biaya Ekspedisi</a>
                        <input class="form-control input-bb" type="text" name="sales_delivery_note_cost" id="sales_delivery_note_cost" value="{{number_format($salesdeliverynote['sales_delivery_note_cost'],2,',','.')}}" readonly/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Nama Pengemudi</a>
                        <input class="form-control input-bb" type="text" name="driver_name" id="driver_name" value="{{$salesdeliverynote == null ? : $salesdeliverynote['driver_name']}}" readonly/>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Plat Nomor Kendaraan</a>
                        <input class="form-control input-bb" type="text" name="fleet_police_number" id="fleet_police_number" value="{{$salesdeliverynote == null ? : $salesdeliverynote['fleet_police_number']}}" readonly/>
                    </div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Tanggal Delivery Note</a>
                        <input class="form-control input-bb" type="text" name="sales_delivery_note_date" id="sales_delivery_note_date" value="{{$salesdeliverynote == null ? : date('d/m/Y', strtotime($salesdeliverynote['sales_delivery_note_date']))}}" readonly/>
                    </div>
                </div>
                <div class="col-md-6">
                    <section class="control-label">Jatuh Tempo
                    </section>
                    <input type ="date" class="form-control form-control-inline input-medium date-picker input-date" data-date-format="dd-mm-yyyy" type="text" name="sales_invoice_due_date" id="sales_invoice_due_date" onChange="elements_add(this.name, this.value);" value=""/>
                </div>

                    <input class="form-control input-bb" type="hidden" name="warehouse_id" id="warehouse_id" value="{{$salesdeliverynote == null ? : $salesdeliverynote['warehouse_id']}}" />
                    <input class="form-control input-bb" type="hidden" name="payment_method" id="payment_method" value="{{$salesdeliverynote == null ? : $salesdeliverynote['payment_method']}}" />

                <div class="col-md-6">
                    <section class="control-label">No Faktur Pajak
                    </section>
                    <input class="form-control input-bb" name="faktur_tax_no"  id="faktur_tax_no" type="text" />
                </div>
                <div class="col-md-6">
                    <section class="control-label">No Penerimaan Pembeli
                    </section>
                    <input class="form-control input-bb" name="buyers_acknowledgment_no"  id="buyers_acknowledgment_no" value="{{$salesdeliverynote['buyers_acknowledgment_no']}}"  type="text"/>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-12">
                    <a class="text-dark">Keterangan</a>
                    <div class="">
                        <textarea rows="3" type="text" class="form-control input-bb" name="sales_invoice_remark" onChange="elements_add(this.name, this.value);" id="sales_invoice_remark" ></textarea>
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
                    <table class="table table-bordered table-advance table-hover">
                        <thead class="thead-light">
                            <tr>
                                <th style='text-align:center'>No.</th>
                                <th style='text-align:center'>Description</th>
                                <th style='text-align:center'>Qty</th>
                                <th style='text-align:center'>Harga</th>
                                <th style='text-align:center'>Diskon</th>
                                <th style='text-align:center'>Total Rupiah(Rp.)</th>
                            </tr>
                        </thead>
                        <tbody id='tablebody'>
                            @php
                                $no             = 1;
                            @endphp
                            @if(count($salesdeliverynoteitem)>0)
                                @foreach($salesdeliverynoteitem as $val)
                                        <tr>
                                            <td style='text-align  : center'>{{$no}}</td>
                                            <td style='text-align  : left !important;'>
                                                {{$SalesInvoice->getItemTypeName($val->item_type_id)}}
                                            </td>
                                            <td style='text-align  : right !important;'>
                                               {{$val['quantity']." ". $SalesInvoice->getItemUnitName($val->item_unit_id)}}
                                            </td>
                                            <td style='text-align  : right !important;'>
                                              {{number_format($val->item_unit_price,2,',','.')}}
                                            </td>
                                            <td style='text-align  : left !important;'>
                                                {{$val->quotationItem->discount_amount_item}}
                                            </td>
                                            <td  style='text-align  : right !important;'>
                                                {{number_format(($val->quotationItem->subtotal_after_discount_item_a), 2)}}
                                            </td>
                                        </tr>
                                        @php
                                            $no++;
                                        @endphp
                                @endforeach
                            @else
                                <tr>
                                    <td style='text-align  : center; font-weight: bold;' colspan='6'>Data Kosong</td>
                                </tr>
                            @endif
                                <th style='text-align  : center; font-weight: bold;' colspan='4'>
                                    
                                </th>
                                <th style='text-align  : left'>
                                    <div class="row mt-4">
                                        Sub Total
                                    </div>
                                    <div class="row mt-4">
                                        Discount
                                    </div>
                                    <div class="row mt-4">
                                        DPP
                                    </div>
                                    <div class="row mt-4">
                                        PPN
                                    </div>
                                    <div class="row mt-4">
                                        Total Due
                                    </div>
                                </th>
                                <th style='text-align  : right'>
                                    <div class="row mt-2">
                                            <input  class='form-control' style='text-align  : right !important;' type='text' name='subtotal_after_discount_view' id='subtotal_after_discount_view' value='' readonly/>
                                    </div>
                                    <div class="row mt-2">
                                            <input class='form-control' style='text-align:right;'type='text' name='ppn' id='ppn' value='' readonly/>
                                    </div>
                                    <div class="row mt-2">
                                            <input class='form-control' style='text-align:right;'type='text' name='subtotal_after_ppn_out' id='subtotal_after_ppn_out' value='' readonly/>
                                    </div>
                                    <div class="row mt-2">
                                        <input class='form-control' style='text-align:right;'type='text' name='ppn' id='ppn' value='' readonly/>
                                    </div>
                                    <div class="row mt-2">
                                            <input class='form-control' style='text-align:right;'type='text' name='subtotal_after_ppn_out' id='subtotal_after_ppn_out' value='' readonly/>
                                    </div>
                                </th>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="card-footer text-muted">
            <div class="form-actions float-right">
                <button type="reset" name="Reset" class="btn btn-danger btn-sm" onClick="window.location.reload();"><i class="fa fa-times"></i> Batal</button>
                <button type="submit" name="Save" class="btn btn-primary btn-sm" title="Save"><i class="fa fa-check"></i> Simpan</button>
            </div>
        </div>
    </div>
</form>
<br>
<br>
<br>

@include('footer')

@stop

@section('css')

@stop
