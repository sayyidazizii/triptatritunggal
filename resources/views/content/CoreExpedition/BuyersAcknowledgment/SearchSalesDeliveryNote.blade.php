@inject('BuyersAcknowledgment', 'App\Http\Controllers\BuyersAcknowledgmentController')

@extends('adminlte::page')

@section('title', 'Tripta Tri Tunggal')
<link rel="shortcut icon" href="{{ asset('resources/assets/logo_tripta.ico') }}" />

@section('js')
<script>
function checkboxSalesOrderChange (sales_order_item_id) {
    $.ajax({
        type: "POST",
        url : "{{route('add-checkbox-sales-delivery-order')}}",
        dataType: "html",
        data: {
            'sales_order_item_id'   : sales_order_item_id,
            '_token'                : '{{csrf_token()}}',
        },
        success: function(return_data){
            console.log(return_data);
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
        <li class="breadcrumb-item"><a href="{{ url('buyers-acknowledgment') }}">Daftar Penerimaan Pihak Pembeli</a></li>
        <li class="breadcrumb-item active" aria-current="page">Daftar Sales Delivery Note</li>
    </ol>
</nav>

@stop

@section('content')

<h3 class="page-title">
    <b>Daftar Sales Delivery Note</b>
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
            <button onclick="location.href='{{ url('buyers-acknowledgment') }}'" name="Find" class="btn btn-sm btn-info" title="Back"><i class="fa fa-angle-left"></i>  Kembali</button>
        </div>
    </div>

<form method="post" action="/sales-delivery-order/add" enctype="multipart/form-data">
    @csrf
    <div class="card-body">
        <div class="table-responsive">
            <table id="example" style="width:100%" class="table table-striped table-bordered table-hover table-full-width">
                <thead>
                    <tr>
                        <th width="3%" style='text-align:center'>No</th>
                        <th width="13%" style='text-align:center'>Pelanggan</th>
                        <th width="15%" style='text-align:center'>No. Delivery Note</th>
 			            <th width="15%" style='text-align:center'>No. PO Customer</th>
                        <th width="10%" style='text-align:center'>Tanggal</th>
                        <th width="7%" style='text-align:center'>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $no = 1; ?>
                    @foreach($salesdeliverynote as $item)
                    <tr>
                        <td style='text-align:center'>{{$no}}</td>
                        <td>{{$item->customer->customer_name}}</td>
                        <td>{{$item->sales_delivery_note_no}}</td>
			            <td>{{ $item->salesQuotation->purchase_order_customer }}</td>
                        <td>{{date('d-m-Y', strtotime($item->sales_delivery_note_date))}}</td>
                        <td style='text-align:center'>
                            <a type="button" class="btn btn-outline-primary btn-sm" href="{{ url('/buyers-acknowledgment/add/'.$item['sales_delivery_note_id']) }}"><i class="fa fa-plus"></i></a>
                        </td>
                    </tr>
                    <?php $no++; ?>
                    @endforeach
                </tbody>
            </table>
        </div>
    </div>

    {{-- <div class="card-footer text-muted">
        <div class="form-actions float-right">
            <button type="submit" name="Save" class="btn btn-primary" title="Save">Tambah</button>
        </div>
    </div> --}}
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
