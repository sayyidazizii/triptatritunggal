@inject('AcctDisbursement', 'App\Http\Controllers\AcctCashDisbursementController')

@extends('adminlte::page')

@section('title', 'Tripta Tri Tunggal')
<link rel="shortcut icon" href="{{ asset('resources/assets/logo_tripta.ico') }}" />

@section('js')
<script>
    function changeDate(name, value){
        var cash_disbursement_date    =   document.getElementById("cash_disbursement_date").value;
        $('#cash_disbursement_date_table').html(cash_disbursement_date);
    }

	function processAddArrayAcctDisbursementItem(){
		var account_id_item					= document.getElementById("account_id_item").value;
		var cash_disbursement_item_amount		= document.getElementById("cash_disbursement_item_amount").value;
		var cash_disbursement_item_title			= document.getElementById("cash_disbursement_item_title").value;
        console.log(account_id_item);
        console.log(cash_disbursement_item_amount);
        console.log(cash_disbursement_item_title);


        $.ajax({
        type: "POST",
        url : "{{route('add-cash-disbursement-array')}}",
        data: {
            'account_id_item'					: account_id_item,
            'cash_disbursement_item_amount' 			: cash_disbursement_item_amount,
            'cash_disbursement_item_title' 			: cash_disbursement_item_title,
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
        <li class="breadcrumb-item"><a href="{{ url('cash-disbursement') }}">Daftar Pengeluaran Kas</a></li>
        <li class="breadcrumb-item active" aria-current="page">Detail Pengeluaran Kas</li>
    </ol>
</nav>

@stop

@section('content')
<?php
?>
<h3 class="page-title">
    Detail Pengeluaran Kas
</h3>
<br/>
@if(session('msg'))
<div class="alert alert-info" role="alert">
    {{session('msg')}}
</div>
@endif

<form method="post" action="{{route('process-void-cash-disbursement')}}" enctype="multipart/form-data">
    @csrf
    <div class="card border border-dark">
    <div class="card-header border-dark bg-dark">
        <h5 class="mb-0 float-left">
            Form Detail
        </h5>
        <div class="form-actions float-right">
            <a onclick="location.href='{{ url('cash-disbursement') }}'" name="Find" class="btn btn-sm btn-info" title="Back"><i class="fa fa-angle-left"></i>  Kembali</a>
        </div>
    </div>

        <div class="card-body">
            <div class="row form-group">
                <div class="col-md-6">
                    <div class="form-group form-md-line-input">
                        <section class="control-label">Tanggal Pengeluaran
                        </section>
                        <input class="form-control input-bb" type="text" name="cash_disbursement_date" id="cash_disbursement_date" value="{{$acctcashdisbursementdetail['cash_disbursement_date']}}" readonly/>
                    </div>
                </div>
                <div class="col-md-6">
                    <a class="text-dark">No Pengeluaran</a>
                    <input class="form-control input-bb" type="text" name="cash_disbursement_no" id="cash_disbursement_no" value="{{$acctcashdisbursementdetail['cash_disbursement_no']}}" readonly/>
                    <input class="form-control input-bb" type="hidden" name="cash_disbursement_id" id="cash_disbursement_id" value="{{$acctcashdisbursementdetail['cash_disbursement_id']}}" readonly/>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-6">
                    <a class="text-dark">No. Perkiraan</a>
                    <input class="form-control input-bb" type="text" name="account_code" id="account_code" value="{{$acctcashdisbursementdetail['account_code'].' - '. $acctcashdisbursementdetail['account_name']}}" readonly/>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Judul</a>
                        <input class="form-control input-bb" type="text" name="cash_disbursement_title" id="cash_disbursement_title" value="{{$acctcashdisbursementdetail['cash_disbursement_title']}}" readonly/>
                    </div>
                </div>
            </div>
            <div class = "row form-group">
                <div class="col-md-12 ">
                    <a class="text-dark">Deskripsi</a>
                    <div class="">
                        <textarea rows="3" type="text" class="form-control input-bb" name="cash_disbursement_description" onChange="function_elements_add(this.name, this.value);" id="cash_disbursement_description"  readonly>{{$acctcashdisbursementdetail['cash_disbursement_description']}}</textarea>
                    </div>
                </div>
            </div>
            <br/>
            <br/>
            <br/>
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
                            <th style='text-align:center'>No. Perkiraan</th>
                            <th style='text-align:center'>Deskripsi</th>
                            <th style='text-align:center'>Jumlah</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php
                            $cash_disbursement_amount_total = 0;
                            if(empty($acctcashdisbursementitem)){
                                echo "<tr><th colspan='5' style='text-align  : center !important;'>Data Kosong</th></tr>";
                            } else {
                                $no =1;
                                foreach ($acctcashdisbursementitem AS $key => $val){
                                    echo"
                                        <tr>
                                            <td style='text-align  : center'>".$no."</td>
                                            <td style='text-align  : left !important;'>".$val['account_name']."</td>
                                            <td style='text-align  : left !important;'>".$val['cash_disbursement_item_title']."</td>
                                            <td style='text-align  : right !important;'>".$val['cash_disbursement_item_amount']."</td>
                                            ";
                                            echo"
                                        </tr>
                                    ";
                                    $cash_disbursement_amount_total += $val['cash_disbursement_item_amount'];
                                    $no++;
                                }
                            }
                        ?>
                        <tr>
                                <td style='text-align  : center !important;' colspan='3'><b>Total</b>
                                </td>
                                <td class="span1" style='text-align  : right !important;' >
                                    <b><?php echo $cash_disbursement_amount_total;?></b>
                                </td>
                                <input type='hidden' name='cash_disbursement_amount_total' id='cash_disbursement_amount_total' value='<?php echo $cash_disbursement_amount_total; ?>'/>
                            </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <div class="card-footer text-muted">
        <div class="form-actions float-right">
            <button type="reset" name="Reset" class="btn btn-danger" href='#remark' data-toggle='modal' ><i class="fa fa-times"></i> Batal</button>
        </div>
    </div>

</div>

    <div class="modal fade bs-modal-lg" id="remark" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header"  style='text-align:left !important'>
                    <h4>Pembatalan Pengeluaran Kas</h4>
                </div>

                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <a class="text-dark">Keterangan</a>
                            <div class="">
                                <textarea rows="3" type="text" class="form-control input-bb" name="voided_remark" onChange="function_elements_add(this.name, this.value);" id="voided_remark"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Batal</button>
                    <button type="submit" class="btn btn-primary">Simpan</button>
                </div>
            </div>
        </div>
    </div>
</form>
<br>
<br>

@include('footer')

@stop


@section('css')

@stop
