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
        <li class="breadcrumb-item active" aria-current="page">Detail Invoice Penjualan</li>
    </ol>
</nav>

@stop

@section('content')

<h3 class="page-title">
    Form Detail Invoice Penjualan
</h3>
<br/>
@if(session('msg'))
<div class="alert alert-info" role="alert">
    {{session('msg')}}
</div>
@endif
    <div class="card border border-dark">
    <div class="card-header border-dark bg-dark">
        <h5 class="mb-0 float-left">
            Form Detail
        </h5>
        <div class="float-right">
            <button onclick="location.href='{{ url('sales-invoice') }}'" name="Find" class="btn btn-sm btn-info" title="Back"><i class="fa fa-angle-left"></i>  Kembali</button>
        </div>
    </div>

    <form method="post" action="{{route('process-edit-sales-invoice')}}" enctype="multipart/form-data">
        @csrf
        <div class="card-body">
            <div class="row form-group">
                <div class="col-md-6">
                    <a class="text-dark">Delivery Note No</a>
                    <input class="form-control input-bb" type="text" name="sales_delivery_note_no" id="sales_delivery_note_no" value="{{$salesinvoice->SalesDeliveryNote->sales_delivery_note_no}}" readonly/>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Pembeli</a>
                        <input class="form-control input-bb" type="text" name="customer_name" id="customer_name" value="{{$SalesInvoice->getCustomername($salesinvoice['customer_id'])}}" readonly/>
                    </div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">No Sales Quotation</a>
                        <input class="form-control input-bb" type="text" name="sales_quotation_no" id="sales_quotation_no" value="{{$salesinvoice->SalesQuotation->sales_quotation_no}}" readonly/>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Tanggal Sales Quotation</a>
                        <input class="form-control input-bb" type="text" name="sales_quotation_date" id="sales_quotation_date" value="{{$salesinvoice->SalesQuotation->sales_quotation_date}}" readonly/>
                    </div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Nama Ekspedisi</a>
                        <input class="form-control input-bb" type="text" name="expedition_id" id="expedition_id" value="{{$SalesInvoice->getExpeditionName($salesinvoice->SalesDeliveryNote->expedition_id) }}" readonly/>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Biaya Ekspedisi</a>
                        <input class="form-control input-bb" type="text" name="sales_delivery_note_cost" id="sales_delivery_note_cost" value="{{number_format($salesinvoice->SalesDeliveryNote->sales_delivery_note_cost,2,',','.')}}" readonly/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Nama Pengemudi</a>
                        <input class="form-control input-bb" type="text" name="driver_name" id="driver_name" value="{{$salesinvoice->SalesDeliveryNote->driver_name}}" readonly/>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Plat Nomor Kendaraan</a>
                        <input class="form-control input-bb" type="text" name="fleet_police_number" id="fleet_police_number" value="{{$salesinvoice->SalesDeliveryNote->fleet_police_number}}" readonly/>
                    </div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Tanggal Delivery Note</a>
                        <input class="form-control input-bb" type="text" name="sales_delivery_note_date" id="sales_delivery_note_date" value="{{$salesinvoice->SalesDeliveryNote->sales_delivery_note_date}}" readonly/>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Jatuh Tempo</a>
                        <input class="form-control input-bb" type="text" name="sales_invoice_due_date" id="sales_invoice_due_date" value="{{$salesinvoice->SalesDeliveryNote->sales_invoice_due_date}}" readonly/>
                    </div>
                </div>
                <div class="col-md-6">
                    <section class="control-label">No Faktur Pajak
                    </section>
                    <input class="form-control input-bb" name="faktur_tax_no"  id="faktur_tax_no"  type="text"  value="{{$salesinvoice['faktur_tax_no']}}" />
                </div>
                <div class="col-md-6">
                    <section class="control-label">Gudang
                    </section>
                    <input class="form-control input-bb" type="text"  value="{{$salesinvoice['warehouse_name']}}" readonly/>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-12">
                    <a class="text-dark">Keterangan</a>
                    <div class="">
                        <textarea rows="3" type="text" class="form-control input-bb" name="sales_invoice_remark" onChange="elements_add(this.name, this.value);" id="sales_invoice_remark" readonly>{{$salesinvoice['sales_invoice_remark']}}</textarea>
                    </div>
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
                                <th style='text-align:center'>Barang</th>
                                <th style='text-align:center'>Quantity</th>
                                <th style='text-align:center'>Satuan</th>
                                <th style='text-align:center'>Harga</th>
                                <th style='text-align:center'>Diskon</th>
                                <th style='text-align:center'>Total</th>
                            </tr>
                        </thead>
                        <tbody id='tablebody'>
                            <?php
                            $no             = 1;
                            $total_price    = 0;
                            $total_item     = 0;
                            $total = 0;
                            $totalBayar = 0;
                            $ppn = 0;
                            $DPP = 0;
                            if(count($salesinvoiceitem)>0){
                                foreach($salesinvoiceitem as $val){
                                    echo"
                                    <tr>
                                            <td style='text-align  : center'>".$no."</td>
                                            <td style='text-align  : left !important;'>
                                                ".$SalesInvoice->getItemtypeName($val['item_type_id'])."
                                            </td>
                                            <td style='text-align  : right !important;'>
                                                ".$val['quantity']."
                                            </td>
                                            <td style='text-align  : left !important;'>
                                                ".$SalesInvoice->getItemUnitName($val['item_unit_id'])."
                                            </td>
                                            <td style='text-align  : right !important;'>
                                                ".number_format($val['item_unit_price'],2,',','.')."
                                            </td>
                                            <td style='text-align  : right !important;'>
                                                ".number_format(($val['discount_A']))."
                                            </td>
                                            <td style='text-align  : right !important;'>
                                               ".number_format($val['subtotal_price_A'])."
                                            </td>";
                                            echo"
                                        </tr>
                                    ";
                                    $no++;
                                    $total_price    += ($val['subtotal_price_A']);
                                    $total_item     += $val['quantity'];
                                }
                            }else{
                                echo"
                                <tr>
                                    <td style='text-align  : center; font-weight: bold;' colspan='6'>Data Kosong</td>
                                </tr>
                                ";
                            }
                                echo"
                                <th style='text-align  : left' colspan='6'></th>
                                <th style='text-align  : right' colspan='2'>
                                     <div class='row mt-2'>
                                        <div class='col'>
                                            <label style='text-align  : left !important;'>Total</label>
                                        </div>
                                        <div class='col'>
                                            ".number_format($total_price)."
                                        </div>
                                    </div>
                                    <div class='row mt-2'>
                                        <div class='col'>
                                            <label style='text-align  : left !important;'>Discount</label>
                                        </div>
                                        <div class='col'>
                                            ".number_format($discount_amount)."
                                        </div>
                                    </div>
                                    <div class='row mt-2'>
                                        <div class='col'>
                                            <label style='text-align  : left !important;'>PPN</label>
                                        </div>
                                        <div class='col'>
                                            ".number_format($ppn_amount)."
                                        </div>
                                    </div>
                                    <div class='row mt-2'>
                                        <div class='col'>
                                            <label style='text-align  : left !important;'>Total Due</label>
                                        </div>
                                        <div class='col'>
                                            ".number_format($total_due)."
                                        </div>
                                    </div>
                                </th>
                                ";
                            ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    </form>
<br/>

@stop

@section('footer')

@stop

@section('css')

@stop
