@extends('adminlte::page')

@section('title', 'Tripta Tri Tunggal')
<link rel="shortcut icon" href="{{ asset('resources/assets/logo_tripta.ico') }}" />

@section('content_header')

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ url('home') }}">Beranda</a></li>
        <li class="breadcrumb-item active" aria-current="page">Daftar Setting Akun</li>
    </ol>
</nav>

@stop

@section('content')

<h3 class="page-title">
    Form Daftar Setting Akun
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
            Form Setting Akun
        </h5>
    </div>

    <form method="post" action="{{ route('process-add-acct-account-setting') }}" enctype="multipart/form-data">
    @csrf
        <div class="card-body">
            <ul class="nav nav-tabs" role="tablist">
                <li class="nav-item">
                  <a class="nav-link active" href="#pembelian" role="tab" data-toggle="tab">Pembelian</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#penjualan" role="tab" data-toggle="tab">Penjualan</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#pengeluaran" role="tab" data-toggle="tab">Pengeluaran</a>
                </li>
            </ul>

            <div class="tab-content">
                <div role="tabpanel" class="tab-pane fade show active" id="pembelian">
                   <table class="table table-borderless mt-3">
                    <tr>
                        <th colspan="3" style="text-align: center !important ;width: 100% !important">Pembelian Tunai</th>
                    </tr>
                    <tr>
                        <th style="text-align: left !important; width: 40% !important">Kas</th>
                        <td style="text-align: left !important; width: 30% !important">
                            {!! Form::select(0, $accountlist, $purchase_cash_account['account_id'], ['class' => 'selection-search-clear select-form','name'=>'account_cash_purchase_id','id'=>'account_cash_purchase_id']) !!}
                        </td>
                        <td style="text-align: left !important; width: 30% !important">
                            {!! Form::select(0, $status, $purchase_cash_account['account_setting_status'], ['class' => 'selection-search-clear select-form','name'=>'account_cash_purchase_status','id'=>'account_cash_purchase_status']) !!}
                        </td>
                    </tr>
                    <tr>
                        <th style="text-align: left !important; width: 40% !important">Pembelian</th>
                        <td style="text-align: left !important; width: 30% !important">
                            {!! Form::select(0, $accountlist, $purchase_account['account_id'],['class' => 'selection-search-clear select-form','name'=>'purchase_cash_account_id','id'=>'purchase_cash_account_id']) !!}
                        </td>
                        <td style="text-align: left !important; width: 30% !important">
                            {!! Form::select(0, $status, $purchase_account['account_setting_status'],['class' => 'selection-search-clear select-form','name'=>'purchase_cash_account_status','id'=>'purchase_cash_account_status']) !!}
                        </td>
                    </tr>

                    <tr>
                        <th colspan="3" style="text-align: center !important ;width: 100% !important">Pembelian Kredit</th>
                    </tr>
                    <tr>
                        <th style="text-align: left !important; width: 40% !important">Hutang</th>
                        <td style="text-align: left !important; width: 30% !important">
                            {!! Form::select(0, $accountlist, $purchase_cash_account['account_id'], ['class' => 'selection-search-clear select-form','name'=>'account_credit_purchase_id','id'=>'account_credit_purchase_id']) !!}
                        </td>
                        <td style="text-align: left !important; width: 30% !important">
                            {!! Form::select(0, $status, $purchase_cash_account['account_setting_status'], ['class' => 'selection-search-clear select-form','name'=>'account_credit_purchase_status','id'=>'account_credit_purchase_status']) !!}
                        </td>
                    </tr>
                    <tr>
                        <th style="text-align: left !important; width: 40% !important">Pembelian</th>
                        <td style="text-align: left !important; width: 30% !important">
                            {!! Form::select(0, $accountlist, $purchase_account['account_id'],['class' => 'selection-search-clear select-form','name'=>'purchase_credit_account_id','id'=>'purchase_credit_account_id']) !!}
                        </td>
                        <td style="text-align: left !important; width: 30% !important">
                            {!! Form::select(0, $status, $purchase_account['account_setting_status'],['class' => 'selection-search-clear select-form','name'=>'purchase_credit_account_status','id'=>'purchase_credit_account_status']) !!}
                        </td>
                    </tr>

                    <tr>
                        <th colspan="3" style="text-align: center !important ;width: 100% !important">Pajak</th>
                    </tr>
                    <tr>
                        <th style="text-align: left !important; width: 40% !important">Pajak</th>
                        <td style="text-align: left !important; width: 30% !important">
                            {!! Form::select(0, $accountlist, $sales_account['account_id'],['class' => 'selection-search-clear select-form','name'=>'purchase_tax_account_id','id'=>'purchase_tax_account_id']) !!}
                        </td>
                        <td style="text-align: left !important; width: 30% !important">
                            {!! Form::select(0, $status, $sales_account['account_setting_status'],['class' => 'selection-search-clear select-form','name'=>'purchase_tax_account_status','id'=>'purchase_tax_account_status']) !!}
                        </td>
                    </tr>

                    <tr>
                        <th colspan="3" style="text-align: center !important ;width: 100% !important">Retur Pembelian</th>
                    </tr>
                    <tr>
                        <th style="text-align: left !important; width: 40% !important">Kas</th>
                        <td style="text-align: left !important; width: 30% !important">
                            {!! Form::select(0, $accountlist, $purchase_return_cash_account['account_id'],['class' => 'selection-search-clear select-form','name'=>'account_payable_return_account_id','id'=>'account_payable_return_account_id']) !!}
                        </td>
                        <td style="text-align: left !important; width: 30% !important">
                            {!! Form::select(0, $status, $purchase_return_cash_account['account_setting_status'],['class' => 'selection-search-clear select-form','name'=>'account_payable_return_account_status','id'=>'account_payable_return_account_status']) !!}
                        </td>
                    </tr>
                    <tr>
                        <th style="text-align: left !important; width: 40% !important">Retur Pembelian</th>
                        <td style="text-align: left !important; width: 30% !important">
                            {!! Form::select(0, $accountlist, $purchase_return_account['account_id'],['class' => 'selection-search-clear select-form','name'=>'purchase_return_account_id','id'=>'purchase_return_account_id']) !!}
                        </td>
                        <td style="text-align: left !important; width: 30% !important">
                            {!! Form::select(0, $status, $purchase_return_account['account_setting_status'],['class' => 'selection-search-clear select-form','name'=>'purchase_return_account_status','id'=>'purchase_return_account_status']) !!}
                        </td>
                    </tr>
                   </table>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="penjualan">
                    <table class="table table-borderless mt-3">
                        <tr>
                            <th colspan="3" style="text-align: center !important ;width: 100% !important">Penjualan Tunai</th>
                        </tr>
                        <tr>
                            <th style="text-align: left !important; width: 40% !important">Kas</th>
                            <td style="text-align: left !important; width: 30% !important">
                                {!! Form::select(0, $accountlist, $sales_cash_account['account_id'],['class' => 'selection-search-clear select-form','name'=>'account_receivable_cash_account_id','id'=>'account_receivable_cash_account_id']) !!}
                            </td>
                            <td style="text-align: left !important; width: 30% !important">
                                {!! Form::select(0, $status, $sales_cash_account['account_setting_status'],['class' => 'selection-search-clear select-form','name'=>'account_receivable_cash_account_status','id'=>'account_receivable_cash_account_status']) !!}
                            </td>
                        </tr>
                        <tr>
                            <th style="text-align: left !important; width: 40% !important">Penjualan</th>
                            <td style="text-align: left !important; width: 30% !important">
                                {!! Form::select(0, $accountlist, $sales_account['account_id'],['class' => 'selection-search-clear select-form','name'=>'sales_cash_account_id','id'=>'sales_cash_account_id']) !!}
                            </td>
                            <td style="text-align: left !important; width: 30% !important">
                                {!! Form::select(0, $status, $sales_account['account_setting_status'],['class' => 'selection-search-clear select-form','name'=>'sales_cash_account_status','id'=>'sales_cash_account_status']) !!}
                            </td>
                        </tr>

                        <tr>
                            <th colspan="3" style="text-align: center !important ;width: 100% !important">Penjualan Kredit</th>
                        </tr>
                        <tr>
                            <th style="text-align: left !important; width: 40% !important">Piutang</th>
                            <td style="text-align: left !important; width: 30% !important">
                                {!! Form::select(0, $accountlist, $sales_cash_account['account_id'],['class' => 'selection-search-clear select-form','name'=>'account_receivable_credit_account_id','id'=>'account_receivable_credit_account_id']) !!}
                            </td>
                            <td style="text-align: left !important; width: 30% !important">
                                {!! Form::select(0, $status, $sales_cash_account['account_setting_status'],['class' => 'selection-search-clear select-form','name'=>'account_receivable_account_credit_status','id'=>'account_receivable_account_credit_status']) !!}
                            </td>
                        </tr>
                        <tr>
                            <th style="text-align: left !important; width: 40% !important">Penjualan</th>
                            <td style="text-align: left !important; width: 30% !important">
                                {!! Form::select(0, $accountlist, $sales_account['account_id'],['class' => 'selection-search-clear select-form','name'=>'sales_credit_account_id','id'=>'sales_credit_account_id']) !!}
                            </td>
                            <td style="text-align: left !important; width: 30% !important">
                                {!! Form::select(0, $status, $sales_account['account_setting_status'],['class' => 'selection-search-clear select-form','name'=>'sales_credit_account_status','id'=>'sales_credit_account_status']) !!}
                            </td>
                        </tr>
                        <tr>
                            <th colspan="3" style="text-align: center !important ;width: 100% !important">Pajak</th>
                        </tr>
                        <tr>
                            <th style="text-align: left !important; width: 40% !important">Pajak</th>
                            <td style="text-align: left !important; width: 30% !important">
                                {!! Form::select(0, $accountlist, $sales_account['account_id'],['class' => 'selection-search-clear select-form','name'=>'sales_tax_account_id','id'=>'sales_tax_account_id']) !!}
                            </td>
                            <td style="text-align: left !important; width: 30% !important">
                                {!! Form::select(0, $status, $sales_account['account_setting_status'],['class' => 'selection-search-clear select-form','name'=>'sales_tax_account_status','id'=>'sales_tax_account_status']) !!}
                            </td>
                        </tr>
                    </table>
                </div>
                <div role="tabpanel" class="tab-pane fade" id="pengeluaran">
                    <table class="table table-borderless">

                        <tr>
                            <th colspan="3" style="text-align: center !important ;width: 100% !important">Pengeluaran</th>
                        </tr>
                        <tr>
                            <th style="text-align: left !important; width: 40% !important">Kas</th>
                            <td style="text-align: left !important; width: 30% !important">
                                {!! Form::select(0, $accountlist, $expenditure_cash_account['account_id'],['class' => 'selection-search-clear select-form','name'=>'expenditure_cash_account_id','id'=>'expenditure_cash_account_id']) !!}
                            </td>
                            <td style="text-align: left !important; width: 30% !important">
                                {!! Form::select(0, $status, $expenditure_cash_account['account_setting_status'],['class' => 'selection-search-clear select-form','name'=>'expenditure_cash_account_status','id'=>'expenditure_cash_account_status']) !!}
                            </td>
                        </tr>
                        <tr>
                            <th style="text-align: left !important; width: 40% !important">Pengeluaran</th>
                            <td style="text-align: left !important; width: 30% !important">
                                {!! Form::select(0, $accountlist, $expenditure_account['account_id'],['class' => 'selection-search-clear select-form','name'=>'expenditure_account_id','id'=>'expenditure_account_id']) !!}
                            </td>
                            <td style="text-align: left !important; width: 30% !important">
                                {!! Form::select(0, $status, $expenditure_account['account_setting_status'],['class' => 'selection-search-clear select-form','name'=>'expenditure_account_status','id'=>'expenditure_account_status']) !!}
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <div class="card-footer text-muted">
            <div class="form-actions float-right">
                <button type="reset" name="Reset" class="btn btn-danger" onclick="location.reload();"><i class="fa fa-times"></i> Reset Data</button>
                <button type="submit" name="Save" class="btn btn-primary" title="Save"><i class="fa fa-check"></i> Simpan</button>
            </div>
        </div>
    </form>
</div>
</div>

@stop

@section('footer')

@stop

@section('css')

@stop
