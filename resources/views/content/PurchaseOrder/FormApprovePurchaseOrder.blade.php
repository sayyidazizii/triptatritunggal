@inject('PurchaseOrder', 'App\Http\Controllers\PurchaseOrderController')
@extends('adminlte::page')

@section('title', 'Tripta Tri Tunggal')
<link rel="shortcut icon" href="{{ asset('resources/assets/logo_tripta.ico') }}" />
@section('js')
<script>
	function toRp(number) {
		var number = number.toString(),
		rupiah = number.split('.')[0],
		cents = (number.split('.')[1] || '') +'00';
		rupiah = rupiah.split('').reverse().join('')
			.replace(/(\d{3}(?!$))/g, '$1.')
			.split('').reverse().join('');
		return rupiah + ',' + cents.slice(0, 2);
	}

    function disapprove(){
        var purchase_order_id 	= $("#purchase_order_id").val();
        $.ajax({
            type: "POST",
            url : "{{route('process-disapprove-purchase-order')}}",
            dataType: "html",
            data: {
                'purchase_order_id'	: purchase_order_id,
                '_token'            : '{{csrf_token()}}',
            },
            success: function(return_data){
                window.location.href = "{{route('purchase-order-approval')}}"
            },
            error: function(data)
            {
                console.log(data);
            }
        });
    }
</script>
@stop
@section('content_header')

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ url('home') }}">Beranda</a></li>
        <li class="breadcrumb-item"><a href="{{ url('purchase-order-approval') }}">Daftar Persetujuan Purchase Order</a></li>
        <li class="breadcrumb-item active" aria-current="page">Detail Purchase Order</li>
    </ol>
</nav>

@stop

@section('content')

<h3 class="page-title">
    <b>Form Detail Purchase Order</b>
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
            <button onclick="location.href='{{ url('purchase-order-approval') }}'" name="Find" class="btn btn-sm btn-info" title="Back"><i class="fa fa-angle-left"></i>  Kembali</button>
        </div>
    </div>

    <form method="post" action="{{route('process-approve-purchase-order')}}" enctype="multipart/form-data">
        @csrf
        <div class="card-body">
            <div class="row form-group">
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Tanggal PO</a>
                        <input class="form-control input-bb" type="text" name="purchase_order_date" id="purchase_order_date" value="{{date('d/m/Y', strtotime($purchaseorder['purchase_order_date']))}}" readonly/>
                        <input class="form-control input-bb" type="hidden" name="purchase_order_id" id="purchase_order_id" value="{{$purchase_order_id}}" readonly/>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Tanggal Pengiriman</a>
                        <input class="form-control input-bb" type="text" name="purchase_order_shipment_date" id="purchase_order_shipment_date" value="{{date('d/m/Y', strtotime($purchaseorder['purchase_order_shipment_date']))}}" readonly/>
                    </div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Gudang</a>
                        <input class="form-control input-bb" type="text" name="warehouse_id" id="warehouse_id" value="{{$PurchaseOrder->getInvWarehouseName($purchaseorder['warehouse_id'])}}" readonly/>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Pemasok</a>
                        <input class="form-control input-bb" type="text" name="supplier_id" id="supplier_id" value="{{$PurchaseOrder->getCoreSupplierName($purchaseorder['supplier_id'])}}" readonly/>
                    </div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-12 ">
                    <a class="text-dark">Keterangan</a>
                    <div class="">
                        <textarea rows="3" type="text" class="form-control input-bb" name="purchase_order_remark" onChange="function_elements_add(this.name, this.value);" id="purchase_order_remark" readonly>{{$purchaseorder['purchase_order_remark']}}</textarea>
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
                                <th style='text-align:center'>Kategori Barang</th>
                                <th style='text-align:center'>Nama Barang</th>
                                <th style='text-align:center'>Satuan</th>
                                <th style='text-align:center'>Quantity</th>
                                <th style='text-align:center'>Harga Satuan</th>
                                <th style='text-align:center'>Total Harga</th>
                            </tr>
                        </thead>
                        <tbody>
                            @if(count($purchaseorderitem)<1)
                                <tr><th colspan='7' style='text-align  : center !important;'>Data Kosong</th></tr>"
                            @else
                                @php
                                    $no =1;
                                    $total_price = 0;
                                    $total_item = 0;
                                @endphp
                                @foreach ($purchaseorderitem AS $key => $val)
                                    <tr>
                                        <td style='text-align  : center'>{{$no}}</td>
                                        <td style='text-align  : left !important;'>{{$PurchaseOrder->getItemCategoryName($val['item_category_id'])}}</td>
                                        <td style='text-align  : left !important;'>{{$PurchaseOrder->getItemTypeName($val['item_type_id'])}}</td>
                                        <td style='text-align  : left !important;'>{{$PurchaseOrder->getItemUnitName($val['item_unit_id'])}}</td>
                                        <td style='text-align  : right !important;'>{{$val['quantity']}}</td>
                                        <td style='text-align  : right !important;'>{{number_format($val['item_unit_cost'],2,',','.')}}</td>
                                        <td style='text-align  : right !important;'>{{number_format($val['subtotal_amount'],2,',','.')}}</td>
                                    </tr>
                                    @php
                                        $no++;
                                        $total_price+=$val['subtotal_amount'];
                                        $total_item+=$val['quantity'];
                                    @endphp
                                @endforeach
                                <th style='text-align  : center' colspan='2'>Total</th>
                                <th style='text-align  : center' colspan='2'></th>
                                <th style='text-align  : right'>{{$total_item}}</th>
                                <th style='text-align  : right'></th>
                                <th style='text-align  : right'>{{number_format($total_price,2,',','.')}}</th>
                                <tr>
                                    <td style='text-align  : center' colspan='2'><b>PPN Masuk (%)</b></td>
                                    <td style='text-align  : center'><b>:</b></td>
                                    <td colspan='2'></td>
                                    <td>
                                        <input style='text-align  : right' type="text" class="form-control" name="ppn_in_percentage" id="ppn_in_percentage" value="{{$purchaseorder->ppn_in_percentage}}" readonly>
                                    </td>
                                    <td>
                                        <input type="text" style='text-align  : right' class="form-control" name="ppn_in_amount" id="ppn_in_amount" value="{{number_format($purchaseorder->ppn_in_amount,2,',','.')}}" readonly>
                                    </td>
                                </tr>
                                <tr>
                                    <td style='text-align  : center' colspan='2'><b>Total Harga Akhir </td>
                                    <td style='text-align  : center'><b>:</b></td>
                                    <td colspan='3'></td>
                                    <td style='text-align  : center'>
                                        <input type="text" style='text-align  : right' class="form-control" name="subtotal_after_ppn_in" id="subtotal_after_ppn_in" value="{{number_format($purchaseorder->subtotal_after_ppn_in,2,',','.')}}" readonly>
                                    </td>
                                </tr>
                            @endif
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="card-footer text-muted">
            <div class="form-actions float-right">
                <a name="Dissaprove" class="btn btn-danger btn-sm" onClick="disapprove()"><i class="fa fa-times"></i> Disapprove</a>
                <button type="submit" name="Save" class="btn btn-primary btn-sm" title="Approve"><i class="fa fa-check"></i> Approve</button>
            </div>
        </div>
    </div>
</form>
<br/>
<br/>
<br/>

@include('footer')
@stop

@section('css')

@stop
