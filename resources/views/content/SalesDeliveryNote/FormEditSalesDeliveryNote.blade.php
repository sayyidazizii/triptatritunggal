@inject('SalesDeliveryNote', 'App\Http\Controllers\SalesDeliveryNoteController')
@extends('adminlte::page')

@section('title', 'Tripta Tri Tunggal')
<link rel="shortcut icon" href="{{ asset('resources/assets/logo_tripta.ico') }}" />

@section('js')
<script>
	$(document).ready(function(){
        $("#sales_delivery_note_cost").change(function(){
			var cost 	    = $("#sales_delivery_note_cost").val();
            if(isNaN(cost)){
                alert('Biaya Ekspedisi Bukan Nomor!');
                $("#sales_delivery_note_cost").val(0);
            }

		});
	});

    function addExpedition(){
        var expedition_code             = $("#expedition_code").val();
        var expedition_name             = $("#expedition_name").val();
        var expedition_address          = $("#expedition_address").val();
        var expedition_route            = $("#expedition_route").val();
        var expedition_city             = $("#expedition_city").val();
        var expedition_home_phone       = $("#expedition_home_phone").val();
        var expedition_mobile_phone1    = $("#expedition_mobile_phone1").val();
        var expedition_mobile_phone2    = $("#expedition_mobile_phone2").val();
        var expedition_fax_number       = $("#expedition_fax_number").val();
        var expedition_email            = $("#expedition_email").val();
        var expedition_person_in_charge = $("#expedition_person_in_charge").val();
        var expedition_status           = $("#expedition_status").val();
        var expedition_receipt_no          = $("#expedition_receipt_no").val();
        var expedition_remark           = $("#expedition_remark").val();
        $.ajax({
            type: "POST",
            url : "{{route('add-expedition-sales-delivery-note')}}",
            dataType: "html",
            data: {
                'expedition_code'	            : expedition_code,
                'expedition_name'	            : expedition_name,
                'expedition_address'	        : expedition_address,
                'expedition_route'	            : expedition_route,
                'expedition_city'	            : expedition_city,
                'expedition_home_phone'	        : expedition_home_phone,
                'expedition_mobile_phone1'	    : expedition_mobile_phone1,
                'expedition_mobile_phone2'	    : expedition_mobile_phone2,
                'expedition_fax_number'	        : expedition_fax_number,
                'expedition_email'	            : expedition_email,
                'expedition_person_in_charge'	: expedition_person_in_charge,
                'expedition_status'	            : expedition_status,
                'expedition_receipt_no'         : expedition_receipt_no,
                'expedition_remark'	            : expedition_remark,
                '_token'                        : '{{csrf_token()}}',
            },
            success: function(return_data){
                $('#expedition_id').html(return_data);
                $('#cancel_btn_expedition').click();
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
        <li class="breadcrumb-item"><a href="{{ url('sales-delivery-note') }}">Daftar Sales Delivery Note</a></li>
        <li class="breadcrumb-item active" aria-current="page">Edit Sales Delivery Note</li>
    </ol>
</nav>

@stop

@section('content')

<h3 class="page-title">
    Form Edit Sales Delivery Note
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
            Form Edit
        </h5>
        <div class="float-right">
            <button onclick="location.href='{{ url('sales-delivery-note') }}'" name="Find" class="btn btn-sm btn-info" title="Back"><i class="fa fa-angle-left"></i>  Kembali</button>
        </div>
    </div>

    <form method="post" action="{{route('process-edit-sales-delivery-note')}}" enctype="multipart/form-data">
        @csrf
        <div class="card-body">
            <div class="row">
                <h5 class="form-section"><b>Detail Sales Delivery </b></h5>
            </div>
            <hr style="margin:0;">
            <br/>
            <div class="row form-group">
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Pelanggan</a>
                        <input class="form-control input-bb" type="text" name="customer_id" id="customer_id" onChange="function_elements_add(this.name, this.value);" value="{{$SalesDeliveryNote->getCustomerName($salesdeliverynote['customer_id'])}}" readonly/>
                        <input class="form-control input-bb" type="text" name="customer_id" id="customer_id" onChange="function_elements_add(this.name, this.value);" hidden value="{{$salesdeliverynote['customer_id']}}" readonly/>
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
                <h5 class="form-section"><b>Form Edit</b></h5>
            </div>
            <hr style="margin:0;">
            <br/>
            <div class="row form-group">
                <div class="col-md-3">
                    <div class="form-group">
                        <a class="text-dark">Nama Ekspedisi</a>
                        {!! Form::select('expedition_id',  $expedition, $salesdeliverynote['expedition_id'], ['class' => 'selection-search-clear select-form', 'id' => 'expedition_id']) !!}
                    </div>
                </div>
                <div class="col-md-1">
                    <a class="text-dark"></a>
                    <a href='#addexpedition' data-toggle='modal' name="Find" class="btn btn-success add-btn" title="Add Data">Tambah</a>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <a class="text-dark">Biaya Ekspedisi</a>
                        <input type ="text" class="form-control input-bb" name="sales_delivery_note_cost" id="sales_delivery_note_cost" onChange="" value="{{$salesdeliverynote['sales_delivery_note_cost']}}"/>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <a class="text-dark">Tanggal Delivery Note</a>
                        <input type ="date" class="form-control form-control-inline input-medium date-picker input-date" data-date-format="dd-mm-yyyy" type="text" name="sales_delivery_note_date" id="sales_delivery_note_date" onChange="function_elements_add(this.name, this.value);" value="{{$salesdeliverynote['sales_delivery_note_date']}}"/>
                    </div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Nama Pengemudi</a>
                        <input class="form-control input-bb" type="text" name="driver_name" id="driver_name" onChange="function_elements_add(this.name, this.value);" value="{{$salesdeliverynote['driver_name']}}"/>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Plat Nomor Kendaraan</a>
                        <input class="form-control input-bb" type="text" name="fleet_police_number" id="fleet_police_number" onChange="function_elements_add(this.name, this.value);" value="{{$salesdeliverynote['fleet_police_number']}}"/>
                    </div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-12">
                    <div class="form-group">
                        <a class="text-dark">No Resi</a>
                        <div class="">
                            <input class="form-control input-bb" type="text" name="expedition_receipt_no" id="expedition_receipt_no" onChange="function_elements_add(this.name, this.value);" value="{{$salesdeliverynote['expedition_receipt_no']}}"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-12">
                    <div class="form-group">
                        <a class="text-dark">Remark</a>
                        <div class="">
                            <textarea rows="3" type="text" class="form-control input-bb" name="sales_delivery_note_remark" id="sales_delivery_note_remark" onChange="function_elements_add(this.name, this.value);">{{$salesdeliverynote['sales_delivery_note_remark']}}</textarea>
                        </div>
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
                                                </td>";
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
                <a href="{{route('edit-sales-delivery-note', ['sales_delivery_note_id' => $sales_delivery_note_id])}}" name='Reset' class='btn btn-danger' onClick='javascript:return confirm(\"apakah yakin ingin dihapus ?\")'><i class="fa fa-times"></i> Reset</a>
                <button type="submit" name="Save" class="btn btn-primary" title="Save"><i class="fa fa-check"></i> Simpan</button>
            </div>
        </div>
    </div>
    </form>
<br/>


<div class="modal fade bs-modal-lg" id="addexpedition" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header"  style='text-align:left !important'>
                <h4>Form Tambah Ekspedisi</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">Kode Ekspedisi</a>
                            <input class="form-control input-bb" type="text" name="expedition_code" id="expedition_code" value=""/>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">Nama Ekspedisi</a>
                            <input class="form-control input-bb" type="text" name="expedition_name" id="expedition_name" value=""/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">Rute</a>
                            <input class="form-control input-bb" type="text" name="expedition_route" id="expedition_route" value=""/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <a class="text-dark">Alamat</a>
                            <input class="form-control input-bb" type="text" name="expedition_address" id="expedition_address" value=""/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">Nama Kota<a class='red'> *</a></a>
                            {!! Form::select('expedition_city',  $city, 0, ['class' => 'selection-search-clear select-form', 'id' => 'expedition_city']) !!}
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">Nomor Telepon</a>
                            <input class="form-control input-bb" type="text" name="expedition_home_phone" id="expedition_home_phone" value=""/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">Nomor handphone 1</a>
                            <input class="form-control input-bb" type="text" name="expedition_mobile_phone1" id="expedition_mobile_phone1" value=""/>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">Nomor handphone 2</a>
                            <input class="form-control input-bb" type="text" name="expedition_mobile_phone2" id="expedition_mobile_phone2" value=""/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">Nomor Fax</a>
                            <input class="form-control input-bb" type="text" name="expedition_fax_number" id="expedition_fax_number" value=""/>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">Email</a>
                            <input class="form-control input-bb" type="text" name="expedition_email" id="expedition_email" value=""/>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">Person in Charge</a>
                            <input class="form-control input-bb" type="text" name="expedition_person_in_charge" id="expedition_person_in_charge" value=""/>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <a class="text-dark">Status<a class='red'> *</a></a>
                            {!! Form::select('expedition_status',  $status, 0, ['class' => 'selection-search-clear select-form', 'id' => 'expedition_status']) !!}
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="form-group">
                            <a class="text-dark">Keterangan</a>
                            <input class="form-control input-bb" type="text" name="expedition_remark" id="expedition_remark" value=""/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal" id='cancel_btn_expedition'>Batal</button>
                <a class="btn btn-primary" onClick="addExpedition()">Simpan</a>
            </div>
        </div>
    </div>
</div>
@stop

@section('footer')

@stop

@section('css')

@stop
