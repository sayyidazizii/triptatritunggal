@inject('APLR', 'App\Http\Controllers\AcctProfitLossReportController')

@extends('adminlte::page')


@section('title', 'PBF | Koperasi Menjangan Enam')
<link rel="shortcut icon" href="{{ asset('resources/assets/logo_pbf.ico') }}" />

@section('js')
    <script>
           function reset_add(){
		$.ajax({
				type: "GET",
				url : "{{route('reset-filter-profit-loss-report')}}",
				success: function(msg){
                    location.reload();
			}

		});
	}

        $(document).ready(function(){

            var journal_voucher_id = {!! json_encode(session('journal_voucher_id')) !!} 
            if (journal_voucher_id == null) {
                $('#journal_voucher_id').select2('val', ' ');
            }
        });
    </script>
@endsection
@section('content_header')

    <nav aria-label="breadcrumb">
        <ol class="breadcrumb">
            <li class="breadcrumb-item"><a href="{{ url('home') }}">Beranda</a></li>
            <li class="breadcrumb-item active" aria-current="page">Laporan Rugi / Laba Tahunan </li>
        </ol>
    </nav>

@stop

@section('content')
<h3 class="page-title">
    <b>Laporan Perhitungan Rugi / Laba</b>
</h3>
<br/>
<div id="accordion">
    <form action="{{ route('filter-profit-loss-report') }}" method="post">
        @csrf
        <div class="card border border-dark">
            <div class="card-header bg-dark" id="headingOne" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                <h5 class="mb-0">
                    Filter
                </h5>
            </div>
            <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
                <div class="card-body">
                    <div class="row">
                        <div class = "col-md-6">
                            <div class="form-group form-md-line-input">
                                <section class="control-label">Tanggal Awal
                                    <span class="required text-danger">
                                        *
                                    </span>
                                </section>
                                <input style="width: 50%" class="form-control input-bb" name="start_date" id="start_date" type="date" data-date-format="dd-mm-yyyy" autocomplete="off" value="{{ $start_date }}"/>
                            </div>
                        </div>

                        <div class = "col-md-6">
                            <div class="form-group form-md-line-input">
                                <section class="control-label">Tanggal Akhir
                                    <span class="required text-danger">
                                        *
                                    </span>
                                </section>
                                <input style="width: 50%" class="form-control input-bb" name="end_date" id="end_date" type="date" data-date-format="dd-mm-yyyy" autocomplete="off" value="{{ $end_date }}"/>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card-footer text-muted">
                    <div class="form-actions float-right">
                        <a href="{{ route('reset-filter-profit-loss-report') }}" type="reset" name="Reset" class="btn btn-danger"><i class="fa fa-times"></i> Batal</a>
                        <button type="submit" name="Find" class="btn btn-primary" title="Search Data"><i class="fa fa-search"></i> Cari</button>
                    </div>
                </div>
            </div>
        </div>

    </form>
</div>
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
  </div>

    <div class="card-body">
        <div class="table-responsive pt-5">
            <table id="" style="width:100%" class="table table-bordered table-full-width">
                <thead>
                    <tr>
                        <td colspan='2' style='text-align:center;'>
                            <div style='font-weight:bold'>Laporan Rugi / Laba
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan='2' style='text-align:center;'>
                            <div>
                                Period {{ date('d-m-Y', strtotime($start_date)) }} s.d. {{ date('d-m-Y', strtotime($end_date)) }}
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td colspan='2'></td>
                    </tr>
                </thead>
                <tbody>
                    <?php $no = 1; 
                       
                    ?>
                    @foreach ($profitloss as $val)
                        <?php
                            if($val['report_tab'] == 0){
																$report_tab = ' ';
															} else if($val['report_tab'] == 1){
																$report_tab = '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
															} else if($val['report_tab'] == 2){
																$report_tab = '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
															} else if($val['report_tab'] == 3){
																$report_tab = '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
															} else if($val['report_tab'] == 4){
																$report_tab = '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
															} else if($val['report_tab'] == 5){
																$report_tab = '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
															} else if($val['report_tab'] == 6){
																$report_tab = '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
															} else if($val['report_tab'] == 7){
																$report_tab = '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
															} else if($val['report_tab'] == 8){
																$report_tab = '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';
															}

															if($val['report_bold'] == 1){
																$report_bold = 'bold';
															} else {
																$report_bold = 'normal';
															}

															echo "
																<tr>";

																if($val['report_type'] == 1){
																	echo "
																		<td colspan='2'><div style='font-weight:".$report_bold."'>".$report_tab."".$val['account_name']."</div></td>
																	";
																}
																
															echo "
																</tr>";
															echo "
																<tr>";

																if($val['report_type']	== 2){
																	echo "
																		<td style='width: 75%'><div style='font-weight:".$report_bold."'>".$report_tab."".$val['account_name']."</div></td>
																		<td style='width: 25%'><div style='font-weight:".$report_bold."'></div></td>
																	";
																}
																	
															echo "
																</tr>";
															echo "
																<tr>";

																if($val['report_type']	== 3){
																	$account_subtotal 	= $APLR->getAmountAccount($val['account_id']);

																	echo "
																		<td><div style='font-weight:".$report_bold."'>".$report_tab."(".$val['account_code'].") ".$val['account_name']."</div> </td>
																		<td style='text-align:right'><div style='font-weight:".$report_bold."'>".number_format($account_subtotal, 2)."</div></td>
																	";
																	// print_r($account_subtotal);
																	$account_amount[$val['report_no']] = $account_subtotal;
																}

															echo "
																</tr>";

																echo "
																<tr>";

																if($val['report_type'] == 4){
																	if(!empty($val['report_formula']) && !empty($val['report_operator'])){
																		$report_formula 	= explode('#', $val['report_formula']);
																		$report_operator 	= explode('#', $val['report_operator']);

																		$total_account_amount	= 0;
																		for($i = 0; $i < count($report_formula); $i++){
																			if($report_operator[$i] == '-'){
																				if($total_account_amount == 0 ){
																					$total_account_amount = $total_account_amount + $account_amount[$report_formula[$i]];
																				} else {
																					$total_account_amount = $total_account_amount - $account_amount[$report_formula[$i]];
																				}
																			} else if($report_operator[$i] == '+'){
																				if($total_account_amount == 0){
																					$total_account_amount = $total_account_amount + $account_amount[$report_formula[$i]];
																				} else {
																					$total_account_amount = $total_account_amount + $account_amount[$report_formula[$i]];
																				}
																			}
																		}

																		echo "
																			<td><div style='font-weight:".$report_bold."'>".$report_tab."".$val['account_name']."</div></td>
																			<td style='text-align:right'><div style='font-weight:".$report_bold."'>".number_format($total_account_amount, 2)."</div></td>
																		";
																}
															}

															echo "			
																</tr>";
															

															echo "
																<tr>";

																if($val['report_type'] == 5){
																	if(!empty($val['report_formula']) && !empty($val['report_operator'])){
																		$report_formula 	= explode('#', $val['report_formula']);
																		$report_operator 	= explode('#', $val['report_operator']);

																		$total_account_amount	= 0;
																		for($i = 0; $i < count($report_formula); $i++){
																			if($report_operator[$i] == '-'){
																				if($total_account_amount == 0 ){
																					$total_account_amount = $total_account_amount + $account_amount[$report_formula[$i]];
																				} else {
																					$total_account_amount = $total_account_amount - $account_amount[$report_formula[$i]];
																				}
																			} else if($report_operator[$i] == '+'){
																				if($total_account_amount == 0){
																					$total_account_amount = $total_account_amount + $account_amount[$report_formula[$i]];
																				} else {
																					$total_account_amount = $total_account_amount + $account_amount[$report_formula[$i]];
																				}
																			}
																		}
																	// print_r($report_formula);


																		echo "
																			<td><div style='font-weight:".$report_bold."'>".$report_tab."".$val['account_name']."</div></td>
																			<td style='text-align:right'><div style='font-weight:".$report_bold."'>".number_format($total_account_amount, 2)."</div></td>
																		";
																}
															}

															echo "			
																</tr>";
			
															if($val['report_type'] == 6){
																if(!empty($val['report_formula']) && !empty($val['report_operator'])){
																	$report_formula 	= explode('#', $val['report_formula']);
																	$report_operator 	= explode('#', $val['report_operator']);

																	$grand_total_account_amount1	= 0;
																	for($i = 0; $i < count($report_formula); $i++){
																		if($report_operator[$i] == '-'){
																			if($grand_total_account_amount1 == 0 ){
																				$grand_total_account_amount1 = $grand_total_account_amount1 + $account_amount[$report_formula[$i]];
																			} else {
																				$grand_total_account_amount1 = $grand_total_account_amount1 - $account_amount[$report_formula[$i]];
																			}
																		} else if($report_operator[$i] == '+'){
																			if($grand_total_account_amount1 == 0){
																				$grand_total_account_amount1 = $grand_total_account_amount1 + $account_amount[$report_formula[$i]];
																			} else {
																				$grand_total_account_amount1 = $grand_total_account_amount1 + $account_amount[$report_formula[$i]];
																			}
																		}
																	}
																	
																	// if($val['category_type'] == 1){
																	// 	$grand_total_all += $grand_total_account_amount1;
																	// }

																	echo "
																		<td><div style='font-weight:".$report_bold."'>".$report_tab."".$val['account_name']."</div></td>
																		<td style='text-align:right'><div style='font-weight:".$report_bold."'>".number_format($grand_total_account_amount1, 2)."</div></td>
																	";
																}
															}

															if($val['report_type'] == 7){
																	$shu_sebelum_lain_lain = $total_account_amount - $grand_total_account_amount1;
																	echo "
																		<td><div style='font-weight:".$report_bold."'>".$report_tab."".$val['account_name']."</div></td>
																		<td style='text-align:right'><div style='font-weight:".$report_bold."'>".number_format($shu_sebelum_lain_lain , 2)."</div></td>
																	";
															}

															echo "
																<tr>";

																if($val['report_type'] == 8){
																	if(!empty($val['report_formula']) && !empty($val['report_operator'])){
																		$report_formula 	= explode('#', $val['report_formula']);
																		$report_operator 	= explode('#', $val['report_operator']);

																		$pendapatan_biaya_lain	= 0;
																		for($i = 0; $i < count($report_formula); $i++){
																			if($report_operator[$i] == '-'){
																				if($pendapatan_biaya_lain == 0 ){
																					$pendapatan_biaya_lain = $pendapatan_biaya_lain + $account_amount[$report_formula[$i]];
																				} else {
																					$pendapatan_biaya_lain = $pendapatan_biaya_lain - $account_amount[$report_formula[$i]];
																				}
																			} else if($report_operator[$i] == '+'){
																				if($pendapatan_biaya_lain == 0){
																					$pendapatan_biaya_lain = $pendapatan_biaya_lain + $account_amount[$report_formula[$i]];
																				} else {
																					$pendapatan_biaya_lain = $pendapatan_biaya_lain + $account_amount[$report_formula[$i]];
																				}
																			}
																		}

																		echo "
																			<td><div style='font-weight:".$report_bold."'>".$report_tab."".$val['account_name']."</div></td>
																			<td style='text-align:right'><div style='font-weight:".$report_bold."'>".number_format($pendapatan_biaya_lain, 2)."</div></td>
																		";
																}
															}

															echo "			
																</tr>";


                         ?>
                    @endforeach
                   
                    <tr>
						<td style="width: 70%">
							<div style='font-weight:bold; font-size:16px'>
								SHU TAHUN BERJALAN
							</div>
						</td >
						<td style="width: 25%; text-align:right" >
							<div style='font-weight:bold; font-size:16px'>
								<?php
									$shu = $shu_sebelum_lain_lain + $pendapatan_biaya_lain;
									echo number_format($shu, 2);
								?>	
							</div>
						</td>
					</tr>
                </tbody>
            </table>

        </div>
        <div class="text-muted mt-3">
            <div class="form-actions float-right">
                <a class="btn btn-secondary" href="{{ url('profit-loss-report/print') }}"><i class="fa fa-file-pdf"></i> Pdf</a>
                <a class="btn btn-dark" href="{{ url('profit-loss-report/export') }}"><i class="fa fa-download"></i> Export Data</a>
            </div>
        </div>
  </div>
</div>
</div>

@stop

@section('footer')

@stop

@section('css')

@stop

@section('js')

@stop
