@inject('SalesQuotation', 'App\Http\Controllers\SalesQuotationController')
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
</script>
@stop
@section('content_header')

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ url('home') }}">Beranda</a></li>
        <li class="breadcrumb-item"><a href="{{ url('sales-order') }}">Daftar Sales Quotation</a></li>
        <li class="breadcrumb-item active" aria-current="page">Detail Sales Quotation</li>
    </ol>
</nav>

@stop

@section('content')

<h3 class="page-title">
    <b>Detail Sales Quotation</b>
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
            <button onclick="location.href='{{ url('sales-order') }}'" name="Find" class="btn btn-sm btn-info" title="Back"><i class="fa fa-angle-left"></i>  Kembali</button>
        </div>
    </div>

    <form method="post" action="{{route('process-add-sales-order')}}" enctype="multipart/form-data">
        @csrf
        <div class="card-body">
            <div class="row form-group">
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Tanggal QO</a>
                        <input class="form-control input-bb" type="text" name="sales_quotation_date" id="sales_quotation_date" value="{{date('d/m/Y', strtotime($salesquotation['sales_quotation_date']))}}" readonly/>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Pelanggan</a>
                        <input class="form-control input-bb" type="text" name="customer_id" id="customer_id" value="{{$SalesQuotation->getCoreCustomerName($salesquotation['customer_id'])}}" readonly/>
                    </div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-12">
                    <a class="text-dark">Keterangan</a>
                    <div class="">
                        <textarea rows="3" type="text" class="form-control input-bb" name="sales_quotation_remark" onChange="function_elements_add(this.name, this.value);" id="sales_quotation_remark" readonly>{{$salesquotation['sales_quotation_remark']}}</textarea>
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
                                <th style='text-align:center'>Qty</th>
                                <th style='text-align:center'>Satuan</th>
                                <th style='text-align:center'>Harga Satuan</th>
                                <th style='text-align:center'>Discount 1(%)</th>
                                <th style='text-align:center'> Discount 1</th>
                                <th style='text-align:center'>Total</th>

                            </tr>
                        </thead>
                        <tbody>
                            @if(count($salesQuotationItems)<1)
                                <tr><th colspan='7' style='text-align  : center !important;'>Data Kosong</th></tr>
                            @else
                                @php
                                    $total_discount_amount = 0;
                                    $total_price = 0;
                                    $total_item = 0;
                                    $total_price_after_discount_item = 0;
                                    $ppn_amount = 0 ;
                                    $no = 1;
                                @endphp
                                @foreach ($salesQuotationItems AS $key => $val)
                                    <tr>
                                        <td style='text-align  : center'>{{$no}}</td>
                                        <td style='text-align  : left !important;'>{{$val->itemType->item_type_name}}</td>
                                        <td style='text-align  : right !important;'>{{$val['quantity']}}</td>
                                        <td style='text-align  : left !important;'>{{$val->itemUnit->item_unit_id}}</td>
                                        <td style='text-align  : right !important;'>{{number_format($val['item_unit_price'],2,',','.')}}</td>
                                        <td style='text-align  : right !important;'>{{$val['discount_percentage_item']}}</td>
                                        <td style='text-align  : right !important;'>{{number_format($val['discount_amount_item'],2,',','.')}}</td>
                                        <td style='text-align  : right !important;'>{{number_format($val['subtotal_after_discount_item_a'],2,',','.')}}</td>
                                    </tr>
                                    @php
                                    $no++;
                                    $total_price_after_discount_item += $val['subtotal_after_discount_item_a'];
                                    $total_item+=$val['quantity'];
                                @endphp

                                @endforeach
                                <th style='text-align  : center' colspan='2'>Total</th>
                                <th style='text-align  : right' >{{$total_item}}</th>
                                <th colspan='4'></th>
                                <th style='text-align  : right'>{{number_format($total_price_after_discount_item,2,',','.')}}</th>
                                <th hidden>
                                    <input class='form-control input-bb' type='text' name='total_price_all' id='total_price_all' value='{{$total_price_after_discount_item}}'/>
                                    <input class='form-control input-bb' type='text' name='total_item_all' id='total_item_all' value='{{$total_item}}'/>
                                </th>
                                <tr hidden>
                                    <td style='text-align  : center' colspan='2'><b>Discount Nota (%)</b></td>
                                    <td style='text-align  : center'><b>:</b></td>
                                    <td colspan='3'></td>
                                    <td>
                                        <input style='text-align  : right' type="text" class="form-control" name="discount_percentage" id="discount_percentage" value="0"  placeholder="isi 0 jika kosong"></td>
                                    <td>
                                        <input type="hidden" class="form-control" name="discount_amount" id="discount_amount" readonly>
                                        <input type="hidden" class="form-control" name="subtotal_after_discount" id="subtotal_after_discount" readonly>
                                        <input style='text-align  : right;  font-weight: bold;' type="text"  value="{{$salesquotation['discount_amount']}}"  class="form-control" name="discount_amount_view" id="discount_amount_view" readonly>
                                    </td>
                                </tr>
                                <tr>
                                    <td style='text-align  : center' colspan='2'><b>Discount Nota</td>
                                    <td style='text-align  : center'><b>:</b></td>
                                    <td colspan='4'></td>
                                    <td style='text-align  : center'>
                                        <input style='text-align  : right;  font-weight: bold;' type="text" value="{{number_format($salesquotation->discount_amount,2,',','.')}}" class="form-control" name="subtotal_after_discount_view" id="subtotal_after_discount_view" readonly>
                                    </td>
                                </tr>
                                <tr>
                                    <td  style='text-align  : center' colspan='2'><b>PPN Keluar</b></td>
                                    <td  style='text-align  : center'><b>:</b></td>
                                    <td  colspan='3'></td>
                                    <td>
                                    <td>
                                        <input hidden type="text" class="form-control" name="ppn_out_amount" id="ppn_out_amount" value="{{ $salesquotation->ppn_out_amount }}" readonly>
                                        <input  style='text-align  : right;  font-weight: bold;' type="text" class="form-control" value="{{ number_format($salesquotation->ppn_out_amount,2,',','.') }}" name="ppn_out_amount_view" id="ppn_out_amount_view" readonly>
                                    </td>
                                </tr>
                                <tr>
                                    <td style='text-align  : center' colspan='2'><b>Total Harga Akhir </td>
                                    <td style='text-align  : center'><b>:</b></td>
                                    <td colspan='4'></td>
                                    <td style='text-align  : center'>
                                        <input type="hidden" class="form-control" name="subtotal_after_ppn_out" id="subtotal_after_ppn_out" readonly>
                                        <input style='text-align  : right;  font-weight: bold;' type="text"  value="{{number_format($salesquotation->total_amount,2,',','.')}}"  class="form-control" name="subtotal_after_ppn_out_view" id="subtotal_after_ppn_out_view" readonly>
                                    </td>
                                </tr>
                    @endif
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <br/>
    <div class="card border border-dark">
        <div class="card-header border-dark bg-dark">
            <h5 class="mb-0 float-left">
                Foto Kwitansi
            </h5>
        </div>

        <div class="card-body">
            <div class="form-body form">
                <div class="table-responsive" style="text-align : center;">
                    <img src="{{asset('storage/receipt/'.$salesquotation['receipt_image'])}}" style='width:2500px; height:1000px;'>
                </div>
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
