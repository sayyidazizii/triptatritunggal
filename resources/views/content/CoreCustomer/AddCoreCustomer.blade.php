@extends('adminlte::page')

@section('title', 'MOZAIC Yudistira')
@section('js')
<script>
    function function_elements_add(name, value){
        console.log("name " + name);
        console.log("value " + value);
		$.ajax({
				type: "POST",
				url : "{{route('add-elements-core-customer')}}",
				data : {
                    'name'      : name, 
                    'value'     : value,
                    '_token'    : '{{csrf_token()}}'
                },
				success: function(msg){
			}
		});
	}

    function reset_add(){
		$.ajax({
				type: "GET",
				url : "{{route('reset-elements-core-customer')}}",
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
        <li class="breadcrumb-item"><a href="{{ url('/core-customer') }}">Daftar Pelanggan</a></li>
        <li class="breadcrumb-item active" aria-current="page">Tambah Pelanggan</li>
    </ol>
  </nav>

@stop

@section('content')

<h3 class="page-title">
    Form Tambah Pelanggan
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
            <button onclick="location.href='{{ url('core-customer') }}'" name="Find" class="btn btn-sm btn-info" title="Back"><i class="fa fa-angle-left"></i>  Kembali</button>
        </div>
    </div>

    <?php 
            // if (empty($coresection)){
            //     $coresection['section_name'] = '';
            // }
        ?>

    <form method="post" action="{{ route('process-add-core-customer') }}" enctype="multipart/form-data">
        @csrf
        <div class="card-body">
            <div class="row form-group">
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Nama Pelanggan<a class='red'> *</a></a>
                        <input class="form-control input-bb" name="customer_name" id="customer_name" type="text" autocomplete="off" onchange="function_elements_add(this.name, this.value)" value="{{ $customer['customer_name'] ?? '' }}"/>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Nomor HP Pelanggan</a>
                        <input class="form-control input-bb" name="customer_contact_person" id="customer_contact_person" type="text" autocomplete="off" onchange="function_elements_add(this.name, this.value)" value="{{ $customer['customer_contact_person']  ?? '' }}"/>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="form-group">
                        <a class="text-dark">Alamat Pelanggan</a>
                        <input class="form-control input-bb" name="customer_address" id="customer_address" type="text" autocomplete="off" onchange="function_elements_add(this.name, this.value)" value="{{ $customer['customer_address']  ?? '' }}" />
                    </div>
                </div>
            </div>
        </div>
        <div class="card-footer text-muted">
            <div class="form-actions float-right">
                <button type="reset" name="Reset" class="btn btn-danger" onclick="reset_add();"><i class="fa fa-times"></i> Batal</button>
                <button type="button" onclick="$(this).addClass('disabled');$('form').submit();" name="Save" class="btn btn-success" title="Save"><i class="fa fa-check"></i> Simpan</button>
            </div>
        </div>
    </div>
    </div>
</form>

@stop

@section('footer')
    
@stop

@section('css')
    
@stop