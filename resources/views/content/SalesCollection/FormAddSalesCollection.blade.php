@inject('SalesCollection', 'App\Http\Controllers\SalesCollectionController')
@extends('adminlte::page')

@section('title', 'Tripta Tri Tunggal')
<link rel="shortcut icon" href="{{ asset('resources/assets/logo_pbf.ico') }}" />

@section('js')
<script>
    
	$(document).ready(function(){
        $("#account_id").select2("val", "0");

        var payment_type = $("#payment_type").val();
               if(payment_type == 0){
                $('#payment_total_cash_amount').attr('readonly', false);
                $('#tranfer-bank').hide();
               }else{
                $('#payment_total_cash_amount').attr('readonly', true);
                $('#tranfer-bank').show();
               }

        var elements = {!! json_encode($salescollectionelements) !!};

        if(!elements || elements==''){
            elements = [];
        }

        if(!elements['cash_account_id']){
            $("#cash_account_id").select2("val", "0");
        }

        if(!elements['transfer_account_id']){
            $("#transfer_account_id").select2("val", "0");
        }

        if(!elements['collection_total_cash_amount']){
            $("#collection_total_cash_amount").val(0);
        }

          //payment type
          $("#payment_type").change(function(){
            var payment_type = $("#payment_type").val();
               if(payment_type == 0){
                $('#payment_total_cash_amount').attr('readonly', false);
                $('#tranfer-bank').hide();
               }else{
                $('#payment_total_cash_amount').attr('readonly', true);
                $('#tranfer-bank').show();
               }
        });

        calculateTotal();
    });

    function elements_add(name, value){
        $.ajax({
            type: "POST",
            url : "{{route('elements-add-sales-collection')}}",
            dataType: "html",
            data: {
                'name'      : name,
                'value'	    : value,
                '_token'    : '{{csrf_token()}}',
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

    $("#collection_total_cash_amount").change(function(){
        calculateTotal();
    });

    function calculateTotal(){
        var collection_total_cash_amount 	    = $("#collection_total_cash_amount").val();
        var collection_total_transfer_amount   = $("#collection_total_transfer_amount").val();
        if(isNaN(collection_total_cash_amount)){
            collection_total_cash_amount = 0;
        }
        if(isNaN(collection_total_transfer_amount)){
            collection_total_transfer_amount = 0;
        }

        var total = parseFloat(collection_total_cash_amount) + parseFloat(collection_total_transfer_amount);

        $("#collection_amount_view").val(toRp(total));
        $("#collection_amount").val(total);
    }

    function calculateAllocation(){
        var collection_amount  = $("#collection_amount").val();
        var item_total      = $("#item_total").val();
        var allocationtotal = 0;
        var shortovertotal  = 0;


        for(i=0; i<item_total; i++){
            var lastbalance     = 0;
            var owing_amount 	= $("#"+i+"_owing_amount").val();
            var allocation 	    = $("#"+i+"_allocation").val();
            var shortover 	    = $("#"+i+"_shortover").val();
            
            if(isNaN(allocation)){
                allocation = 0;
            }
            if(isNaN(shortover)){
                shortover = 0;
            }

            allocationtotal += parseFloat(allocation);
            shortovertotal  += parseFloat(shortover);

            lastbalance = parseFloat(owing_amount) - parseFloat(allocation) - parseFloat(shortover);
            $("#"+i+"_last_balance_view").val(toRp(lastbalance));
            $("#"+i+"_last_balance").val(lastbalance);
        }

        $("#allocation_total").val(allocationtotal);
        $("#shortover_total").val(shortovertotal);
        $("#allocation_total_view").val(toRp(allocationtotal));
        $("#shortover_total_view").val(toRp(shortovertotal));
        $("#collection_allocated_move_view").val(toRp(parseFloat(collection_amount) - parseFloat(allocationtotal) - parseFloat(shortovertotal)));
        $("#collection_allocated_move").val(parseFloat(collection_amount) - parseFloat(allocationtotal) - parseFloat(shortovertotal));
    }

	function toRp(number) {
		var number = number.toString(), 
		rupiah = number.split('.')[0], 
		cents = (number.split('.')[1] || '') +'00';
		rupiah = rupiah.split('').reverse().join('')
			.replace(/(\d{3}(?!$))/g, '$1.')
			.split('').reverse().join('');
		return rupiah + ',' + cents.slice(0, 2);
	}
    
    
    function processAddArraySalesCollectionTransfer(){
        var transfer_account_id	                    = document.getElementById("transfer_account_id").value;
        var collection_transfer_bank_name	        = document.getElementById("collection_transfer_bank_name").value;
        var collection_transfer_account_name	    = document.getElementById("collection_transfer_account_name").value;
        var collection_transfer_account_no	        = document.getElementById("collection_transfer_account_no").value;
        var collection_transfer_amount	            = document.getElementById("collection_transfer_amount").value;

        $.ajax({
            type: "POST",
            url : "{{route('add-transfer-array-sales-collection')}}",
            data: {
                'transfer_account_id'	            : transfer_account_id,
                'collection_transfer_bank_name'	    : collection_transfer_bank_name,
                'collection_transfer_account_name'	: collection_transfer_account_name,
                'collection_transfer_account_no'	: collection_transfer_account_no,
                'collection_transfer_amount'	    : collection_transfer_amount,
                '_token'                            : '{{csrf_token()}}'
            },
            success: function(msg){
                location.reload();
            }
        });
    }



</script>
@stop
@section('content_header')
    
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ url('home') }}">Beranda</a></li>
        <li class="breadcrumb-item"><a href="{{ url('sales-collection') }}">Daftar Pelunasan Piutang</a></li>
        <li class="breadcrumb-item"><a href="{{ url('sales-collection/search') }}">Daftar Pelanggan</a></li>
        <li class="breadcrumb-item active" aria-current="page">Tambah Pelunasan Piutang</li>
    </ol>
  </nav>

@stop

@section('content')

<h3 class="page-title">
    Form Tambah Pelunasan Piutang
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
            <button onclick="location.href='{{ url('sales-collection/search') }}'" name="Find" class="btn btn-sm btn-info" title="Back"><i class="fa fa-angle-left"></i>  Kembali</button>
        </div>
    </div>

    <form method="post" action="{{route('process-add-sales-collection')}}" enctype="multipart/form-data">
        @csrf
        <div class="card-body">
            <div class="row form-group">
                <div class="col-md-6">
                    <section class="control-label">Tanggal Pelunasan
                        <span class="required text-danger">
                            *
                        </span>
                    </section>
                    <input type ="date" class="form-control form-control-inline input-medium date-picker input-date" data-date-format="dd-mm-yyyy" type="text" name="collection_date" id="collection_date" onChange="elements_add(this.name, this.value);" value="{{$salescollectionelements == null ? '' : $salescollectionelements['collection_date']}}" style="width: 15rem;"/>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Nama Pelanggan</a>
                        <input class="form-control input-bb" type="text" name="customer_name" id="customer_name" value="{{$SalesCollection->getCoreCustomerName($sales_invoice_id['customer_id'])}}" readonly/>
                        <input class="form-control input-bb" type="text" name="customer_id" id="customer_id" value="{{$sales_invoice_id['customer_id']}}" hidden/>
                        <input class="form-control input-bb" type="text" name="amount_debt" id="amount_debt" value="{{$customer['amount_debt']}}" hidden/>


                    </div>
                </div>
                <div class="form-group">
                    <a class="text-dark">No. Invoice</a>
                    <input class="form-control input-bb" type="text" name="sales_invoice_no" id="sales_invoice_no" value="{{$sales_invoice_id == null ? '' : $sales_invoice_id['sales_invoice_no']}}" onChange="elements_add(this.name, this.value);" style='text-align:left' readonly/>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-12 ">
                    <a class="text-dark">Keterangan</a>
                    <div class="">
                        <textarea rows="3" type="text" class="form-control input-bb" name="collection_remark" onChange="elements_add(this.name, this.value);" id="collection_remark" autocomplete='off'>{{$salescollectionelements == null ? '' : $salescollectionelements['collection_remark']}}</textarea>
                    </div>
                </div>
            </div>

            <br/>
        </div>
    </div>
</div>

<br/>
@if (session('msg'))
<div class="alert alert-info" role="alert">
    {{ session('msg') }}
</div>
@endif
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
                            <th style='text-align:center'>Tanggal</th>
                            <th style='text-align:center'>No. Invoice</th>
                            <th style='text-align:center'>Jumlah Invoice</th>
                            <th style='text-align:center'>Jumlah yang telah Dibayar</th>
                            <th style='text-align:center'>Jumlah Sisa Piutang</th>
                            <th style='text-align:center'>Alokasi</th>
                            {{-- <th style='text-align:center'>Pembulatan</th> --}}
                            <th style='text-align:center'>Saldo Akhir</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            if(count($salesinvoiceowing) == 0){
                                echo "<tr><th colspan='9' style='text-align  : center !important;'>Data Kosong</th></tr>";
                            } else {
                                $no =1;
                                $nos =0;
                                $allocation_total = 0;
                                $shortover_total  = 0;
                                foreach ($salesinvoiceowing AS $key => $val){?>
                                <tr>
                                    <td style='text-align  : center'>{{$val['sales_invoice_date']}}</td>
                                    <td style='text-align  : center'>{{$val['sales_invoice_no']}}</td>
                                    <td style='text-align  : center'>{{number_format($val['total_amount'], 2)}}</td>
                                    <td style='text-align  : center'>{{number_format($val['paid_amount'], 2)}}</td>
                                    <td style='text-align  : center'>{{number_format($val['owing_amount'], 2)}}</td>
                                    <td style='text-align  : center'>
                                        <input class="form-control" type="text" style='text-align:right' name="{{$no}}_allocation" id="{{$no}}_allocation" value="0" onChange="calculateAllocation()"/>
                                    </td>
                                    {{-- <td style='text-align  : center'>
                                        <input class="form-control" type="text" style='text-align:right' name="{{$no}}_shortover" id="{{$no}}_shortover" value="0" onChange="calculateAllocation()"/>
                                    </td> --}}
                                    <td style='text-align  : center'>
                                        <input class="form-control" type="text" style='text-align:right' name="{{$no}}_last_balance_view" id="{{$no}}_last_balance_view" value="{{number_format($val['owing_amount'])}}" readonly/>
                                        <input class="form-control" type="hidden" style='text-align:right' name="{{$no}}_last_balance" id="{{$no}}_last_balance" value="{{$val['owing_amount']}}" readonly/>

                                        
                                        <input class="form-control" type="hidden" style='text-align:right' name="{{$no}}_sales_invoice_id" id="{{$no}}_sales_invoice_id" value="{{$val['sales_invoice_id']}}" readonly/>
                                        <input class="form-control" type="hidden" style='text-align:right' name="{{$no}}_sales_invoice_amount" id="{{$no}}_sales_invoice_amount" value="{{$val['total_amount']}}" readonly/>
                                        <input class="form-control" type="hidden" style='text-align:right' name="{{$no}}_sales_invoice_date" id="{{$no}}_sales_invoice_date" value="{{$val['sales_invoice_date']}}" readonly/>
                                        <input class="form-control" type="hidden" style='text-align:right' name="{{$no}}_sales_invoice_no" id="{{$no}}_sales_invoice_no" value="{{$val['sales_invoice_no']}}" readonly/>
                                        <input class="form-control" type="hidden" style='text-align:right' name="{{$no}}_total_amount" id="{{$no}}_total_amount" value="{{$val['total_amount']}}" readonly/>
                                        <input class="form-control" type="hidden" style='text-align:right' name="{{$no}}_paid_amount" id="{{$no}}_paid_amount" value="{{$val['paid_amount']}}" readonly/>
                                        <input class="form-control" type="hidden" style='text-align:right' name="{{$no}}_owing_amount" id="{{$no}}_owing_amount" value="{{$val['owing_amount']}}" readonly/>
                                    </td>
    @csrf
    
                                </tr>
                                <?php
                                $no++;
                                $nos++;
                                }
                                    echo"
                                    <th style='text-align  : center' colspan='5'>Total</th>
                                    <th style='text-align  : right'>
                                        <input class='form-control' type='text' style='text-align:right' name='allocation_total_view' id='allocation_total_view' value='".$allocation_total."' readonly/>
                                        <input class='form-control' type='hidden' style='text-align:right' name='allocation_total' id='allocation_total' value='".$allocation_total."' readonly/>
                                    </th>
                                    <th>
                                        <input class='form-control input-bb' type='hidden' name='item_total' id='item_total' value='".$no."'/>
                                    </th>
                                    ";
                            }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    
    <div class="card-footer text-muted">
        <div class="form-actions float-right">
            <button type="reset" name="Reset" class="btn btn-danger" onClick="window.location.reload();"><i class="fa fa-times"></i> Batal</button>
            <button type="submit" name="Save" class="btn btn-primary" title="Save"><i class="fa fa-check"></i> Simpan</button>
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