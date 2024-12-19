@extends('adminlte::page')

@section('title', 'MOZAIC Yudistira')

@section('content_header')
    
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="{{ url('home') }}">Beranda</a></li>
      <li class="breadcrumb-item"><a href="{{ url('core-customer') }}">Daftar Pelanggan</a></li>
      <li class="breadcrumb-item active" aria-current="page">Edit Limit Hutang</li>
    </ol>
  </nav>

@stop

@section('content')

<h3 class="page-title">
    <b>Edit  Limit Hutang</b> <small>Kelola Limit Hutang </small>
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
        Ubah Limit Hutang 
    </h5>

  </div>

  <form method="post" action="{{ route('process-edit-limit-core-customer') }}" enctype="multipart/form-data">
    @csrf
    <div class="card-body">
        <div class="row form-group">
          <div class="col-md-6">
            <div class="form-group">
              <a class="text-dark">Limit</a>
              <input class="form-control input-bb" name="debt_limit" id="debt_limit" type="text" autocomplete="off"/>
            </div>
          </div>
        </div>
      </div>
      <div class="card-footer text-muted">
        <div class="form-actions float-right">
            <button type="reset" name="Reset" class="btn btn-danger" onclick="window.location.reload();"><i class="fa fa-times"></i> Batal</button>
            <button type="submit" name="Save" class="btn btn-success" title="Save"><i class="fa fa-check"></i> Simpan</button>

        </div>
    </div>
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

@section('js')
    
@stop