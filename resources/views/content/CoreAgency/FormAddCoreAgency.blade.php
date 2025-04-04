@extends('adminlte::page')

@section('title', 'Tripta Tri Tunggal')
<link rel="shortcut icon" href="{{ asset('resources/assets/logo_tripta.ico') }}" />
@section('js')
@stop
@section('content_header')

<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ url('home') }}">Beranda</a></li>
        <li class="breadcrumb-item"><a href="{{ url('agency') }}">Daftar Agensi</a></li>
        <li class="breadcrumb-item active" aria-current="page">Tambah Agensi</li>
    </ol>
</nav>

@stop

@section('content')

<h3 class="page-title">
    <b>Form Tambah Agensi</b>
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
            <button onclick="location.href='{{ url('agency') }}'" name="Find" class="btn btn-sm btn-info" title="Back"><i class="fa fa-angle-left"></i>  Kembali</button>
        </div>
    </div>

    <form method="post" action="{{route('process-add-agency')}}" enctype="multipart/form-data">
        @csrf
        <div class="card-body">
            <div class="row form-group">
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Kode Agensi</a>
                        <input class="form-control input-bb" type="text" name="agency_code" id="agency_code" value=""/>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Nama Agensi<a class='red'> *</a></a>
                        <input class="form-control input-bb" type="text" name="agency_name" id="agency_name" value=""/>
                    </div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-12">
                    <div class="form-group">
                        <a class="text-dark">Alamat Agensi</a>
                        <textarea rows="3" type="text" class="form-control input-bb" name="agency_address" onChange="function_elements_add(this.name, this.value);" id="agency_address" ></textarea>
                    </div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Email</a>
                        <input class="form-control input-bb" type="text" name="agency_email" id="agency_email" value=""/>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Telp. Rumah</a>
                        <input class="form-control input-bb" type="text" name="agency_phone_number" id="agency_phone_number" value=""/>
                    </div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Contact Person</a>
                        <input class="form-control input-bb" type="text" name="agency_contact_person" id="agency_contact_person" value=""/>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Presentase Bagi Hasil</a>
                        <input class="form-control input-bb" type="text" name="agency_profit_sharing_percentage" id="agency_profit_sharing_percentage" value=""/>
                    </div>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-12">
                    <div class="form-group">
                        <a class="text-dark">Keterangan</a>
                        <textarea rows="3" type="text" class="form-control input-bb" name="agency_remark" onChange="function_elements_add(this.name, this.value);" id="agency_remark" ></textarea>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-footer text-muted">
            <div class="form-actions float-right">
                <button type="reset" name="Reset" class="btn btn-danger btn-sm" onClick="window.location.reload();"><i class="fa fa-times"></i> Batal</button>
                <button type="submit" name="Save" class="btn btn-primary btn-sm" title="Save"><i class="fa fa-check"></i> Simpan</button>
            </div>
        </div>
    </div>
    </div>
</form>
<br>
<br/>
<br/>
<br/>

@include('footer')

@stop

@section('css')

@stop
