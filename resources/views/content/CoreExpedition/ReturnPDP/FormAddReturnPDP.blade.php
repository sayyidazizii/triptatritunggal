@inject('ReturnPDP', 'App\Http\Controllers\ReturnPDP_Controller')
@extends('adminlte::page')

@section('title', 'PBF | Koperasi Menjangan Enam')
<link rel="shortcut icon" href="{{ asset('resources/assets/logo_pbf.ico') }}" />

@section('js')
<script>
	$(document).ready(function(){
        $("#warehouse_id").select2("val", "0");
	});
</script>
@stop

@section('content_header')
    
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ url('home') }}">Beranda</a></li>
        <li class="breadcrumb-item"><a href="{{ url('return-pdp') }}">Daftar Return PDP</a></li>
        <li class="breadcrumb-item"><a href="{{ url('return-pdp/search-sales-delivery-note') }}">Daftar Sales Delivery Note</a></li>
        <li class="breadcrumb-item active" aria-current="page">Tambah Return PDP</li>
    </ol>
</nav>

@stop

@section('content')

<h3 class="page-title">
    Form Tambah Return PDP
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
            <button onclick="location.href='{{ url('return-pdp/search-sales-delivery-note') }}'" name="Find" class="btn btn-sm btn-info" title="Back"><i class="fa fa-angle-left"></i>  Kembali</button>
        </div>
    </div>

    <form method="post" action="{{route('process-add-return-pdp')}}" enctype="multipart/form-data">
        @csrf
        <div class="card-body">
            <div class="row form-group">
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Gudang<a class='red'> *</a></a>
                        <br/>
                        {!! Form::select('warehouse_id',  $warehouse, 0, ['class' => 'selection-search-clear select-form', 'id' => 'warehouse_id']) !!}
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Tanggal Return<a class='red'> *</a></a>
                        <input type ="date" class="form-control form-control-inline input-medium date-picker input-date" data-date-format="dd-mm-yyyy" type="text" name="return_pdp_date" id="return_pdp_date" onChange="function_elements_add(this.name, this.value);" value=""/>
                        <input type ="hidden" class="form-control" name="sales_delivery_note_id" id="sales_delivery_note_id" onChange="function_elements_add(this.name, this.value);" value="{{$salesdeliverynote['sales_delivery_note_id']}}"/>
                        <input type ="hidden" class="form-control" name="sales_delivery_order_id" id="sales_delivery_order_id" onChange="function_elements_add(this.name, this.value);" value="{{$salesdeliverynote['sales_delivery_order_id']}}"/>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <a class="text-dark">Alasan Return<a class='red'> *</a></a>
                        <div class="">
                            <textarea rows="3" type="text" class="form-control input-bb" name="return_pdp_remark" id="return_pdp_remark" onChange="function_elements_add(this.name, this.value);" ></textarea>
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
                    <table class="table table-bordered table-advance table-hover" >
                        <thead class="thead-light" >
                            <tr>
                                <th width="2%" style='text-align:center'>No.</th>
                                <th width="10%" style='text-align:center'>Pelanggan</th>
                                <th width="2%" style='text-align:center'>No Sales Order</th>
                                <th width="2%" style='text-align:center'>Tanggal SO</th>
                                <th width="10%" style='text-align:center'>Barang</th>
                                <th width="3%" style='text-align:center'>Qty Kirim</th>
                                <th width="3%" style='text-align:center'>Qty Return</th>
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
                                                <td style='text-align  : left !important;'>".$ReturnPDP->getCustomerNameSalesOrderId($val['sales_order_id'])."</td>
                                                <td style='text-align  : left !important;'>".$ReturnPDP->getNomorSalesOrderId($val['sales_order_id'])."</td>
                                                <td style='text-align  : left !important;'>".$salesorder['sales_order_date']."</td>
                                                <td style='text-align  : left !important;'>".$ReturnPDP->getInvItemTypeName($val['item_type_id'])."</td>
                                                <td style='text-align  : right !important;'>".$val['quantity']."</td>
                                                <td style='text-align  : right !important;'>
                                                    <input class='form-control' text-align:right;' type='text' name='quantity_return_".$no."' id='quantity_return_".$no."' value=''/>  

                                                    <input class='form-control' style='text-align:right;'type='hidden' name='sales_order_id' id='sales_order_id' value='".$val['sales_order_id']."'/>  
                                                    <input class='form-control' style='text-align:right;'type='hidden' name='sales_order_item_id_".$no."' id='sales_order_item_id_".$no."' value='".$val['sales_order_item_id']."'/>  
                                                    <input class='form-control' style='text-align:right;'type='hidden' name='customer_id' id='customer_id' value='".$salesorder['customer_id']."'/>  
                                                    <input class='form-control' style='text-align:right;'type='hidden' name='item_id_".$no."' id='item_id_".$no."' value='".$val['item_id']."'/>
                                                    <input class='form-control' style='text-align:right;'type='hidden' name='item_stock_id_".$no."' id='item_stock_id_".$no."' value='".$val['item_stock_id']."'/>
                                                    <input class='form-control' style='text-align:right;'type='hidden' name='item_type_id_".$no."' id='item_type_id_".$no."' value='".$val['item_type_id']."'/>
                                                    <input class='form-control' style='text-align:right;'type='hidden' name='item_unit_id_".$no."' id='item_unit_id_".$no."' value='".$val['item_unit_id']."'/>
                                                    <input class='form-control' style='text-align:right;'type='hidden' name='item_unit_price_".$no."' id='item_unit_price_".$no."' value='".$val['item_unit_price']."'/>
                                                    <input class='form-control' style='text-align:right;'type='hidden' name='quantity_".$no."' id='quantity_".$no."' value='".$val['quantity']."'/>
                                                    <input class='form-control' style='text-align:right;'type='hidden' name='sales_delivery_note_id' id='sales_delivery_note_id' value='".$val['sales_delivery_note_id']."'/>
                                                    <input class='form-control' style='text-align:right;'type='hidden' name='sales_delivery_note_item_id' id='sales_delivery_note_item_id' value='".$val['sales_delivery_note_item_id']."'/>
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