@inject('SalesDeliveryNote', 'App\Http\Controllers\SalesDeliveryNoteController')
@extends('adminlte::page')

@section('title', 'Tripta Tri Tunggal')
<link rel="shortcut icon" href="{{ asset('resources/assets/logo_tripta.ico') }}" />

@section('js')
<script>
	$(document).ready(function(){
        // $("#expedition_id").select2("val", "0");
	});
</script>
@stop

@section('content_header')

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ url('home') }}">Beranda</a></li>
        <li class="breadcrumb-item"><a href="{{ url('sales-delivery-note') }}">Daftar Sales Delivery Note</a></li>
        <li class="breadcrumb-item active" aria-current="page">Detail Sales Delivery Note</li>
    </ol>
</nav>

@stop

@section('content')

<h3 class="page-title">
    <b>Form Detail Sales Delivery Note</b>
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
            <button onclick="location.href='{{ url('sales-delivery-note') }}'" name="Find" class="btn btn-sm btn-info" title="Back"><i class="fa fa-angle-left"></i>  Kembali</button>
        </div>
    </div>

    <form method="post" action="{{route('process-edit-sales-delivery-note')}}" enctype="multipart/form-data">
        @csrf
        <div class="card-body">
            <div class="row">
                <h5 class="form-section"><b>Detail Sales Delivery Note</b></h5>
            </div>
            <hr style="margin:0;">
            <br/>
            <div class="row form-group">
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Delivery Note No</a>
                        <input class="form-control input-bb" type="text" name="sales_delivery_order_no" id="sales_delivery_order_no" onChange="function_elements_add(this.name, this.value);" value="{{$salesdeliverynote['sales_delivery_note_no']}}" readonly/>
                        <input class="form-control input-bb" type="hidden" name="sales_delivery_note_id" id="sales_delivery_note_id" onChange="function_elements_add(this.name, this.value);" value="{{$sales_delivery_note_id}}" readonly/>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Pelanggan</a>
                        <input class="form-control input-bb" type="text" name="customer_id" id="customer_id" onChange="function_elements_add(this.name, this.value);" value="{{$SalesDeliveryNote->getCustomerName($salesdeliverynote['customer_id'])}}" readonly/>
                    </div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Gudang</a>
                        <input class="form-control input-bb" type="text" name="warehouse_id" id="warehouse_id" onChange="function_elements_add(this.name, this.value);" value="{{$SalesDeliveryNote->getInvWarehouseName($salesdeliverynote['warehouse_id'])}}" readonly/>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Tanggal Delivery Note</a>
                        <input class="form-control input-bb" type="text" name="sales_delivery_order_date" id="sales_delivery_order_date" onChange="function_elements_add(this.name, this.value);" value="{{$salesdeliverynote['sales_delivery_note_date']}}" readonly/>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <a class="text-dark">Deskripsi</a>
                        <div class="">
                            <textarea rows="3" type="text" class="form-control input-bb" name="sales_delivery_order_remark" id="sales_delivery_order_remark" onChange="function_elements_add(this.name, this.value);" readonly>{{$salesdeliverynote['sales_delivery_order_remark']}}</textarea>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <h5 class="form-section"><b>Form Detail</b></h5>
            </div>
            <hr style="margin:0;">
            <br/>
            <div class="row form-group">
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Nama Ekspedisi</a>
                        <input class="form-control input-bb" type="text" name="expedition_id" id="expedition_id" onChange="function_elements_add(this.name, this.value);" value="{{$SalesDeliveryNote->getCoreExpeditionName($salesdeliverynote['expedition_id'])}}" readonly/>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Biaya Ekspedisi</a>
                        <input type ="text" class="form-control input-bb" name="sales_delivery_note_cost" id="sales_delivery_note_cost" onChange="" value="{{number_format($salesdeliverynote['sales_delivery_note_cost'],2,',','.')}}" readonly/>
                    </div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Nama Pengemudi</a>
                        <input class="form-control input-bb" type="text" name="driver_name" id="driver_name" onChange="function_elements_add(this.name, this.value);" value="{{$salesdeliverynote['driver_name']}}" readonly/>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Plat Nomor Kendaraan</a>
                        <input class="form-control input-bb" type="text" name="fleet_police_number" id="fleet_police_number" onChange="function_elements_add(this.name, this.value);" value="{{$salesdeliverynote['fleet_police_number']}}" readonly/>
                    </div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-12">
                    <div class="form-group">
                        <a class="text-dark">No Resi</a>
                        <div class="">
                            <input class="form-control input-bb" type="text" name="expedition_receipt_no" id="expedition_receipt_no" onChange="function_elements_add(this.name, this.value);" value="{{$salesdeliverynote['expedition_receipt_no']}}" readonly/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-12">
                    <div class="form-group">
                        <a class="text-dark">Remark</a>
                        <div class="">
                            <textarea rows="3" type="text" class="form-control input-bb" name="sales_delivery_note_remark" id="sales_delivery_note_remark" onChange="function_elements_add(this.name, this.value);" readonly>{{$salesdeliverynote['sales_delivery_note_remark']}}</textarea>
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
                                <th style='text-align:center'>Qty Proses</th>
                                <th style='text-align:center'>Qty Kirim</th>
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
                                                <td style='text-align  : center'>".$no.".</td>
                                                <td style='text-align  : left !important;'>".$SalesDeliveryNote->getInvItemTypeName($val['item_type_id'])."</td>
                                                <td style='text-align  : right !important;'>".$val['quantity']."</td>
                                                <td style='text-align  : right !important;'>".$val['quantity']."</td>
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
            </div>
        </div>
    </div>
    </form>
<br/>
<br>
<br>

@include('footer')

@stop

@section('css')

@stop

@section('js')

@stop
