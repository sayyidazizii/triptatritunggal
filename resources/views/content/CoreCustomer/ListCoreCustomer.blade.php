@extends('adminlte::page')

@section('title', 'MOZAIC Yudistira')
@section('js')
<script>
    // window.print();
    function delete_add(){
		$.ajax({
				type: "GET",
				url : "{{ route('delete-debt-core-customer') }}",
                
				success: function(msg){
                        confirm('Apakah Anda Yakin Ingin Menghapus Data Ini ?');
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
      <li class="breadcrumb-item active" aria-current="page">Daftar Pelanggan</li>
    </ol>
  </nav>

@stop

@section('content')

<h3 class="page-title">
    <b>Daftar Pelanggan</b> <small>Kelola Pelanggan </small>
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
        Daftar
    </h5>
    <div class="form-actions float-right">
        <a class="btn btn-sm btn-success" href="{{ url('/core-customer/delete-debt') }}" onclick="return confirm('Apakah Anda Yakin Ingin Melunasi Data Hutang Ini ?')"><i class="fa fa-address-card"></i> Pelunasan Hutang</a>
        <button onclick="location.href='{{ url('/core-customer/edit-limit') }}'" name="Find" class="btn btn-sm btn-warning" title="Add Data"><i class="fa fa-upload"></i> Update Limit Hutang </button>
        <button onclick="location.href='{{ url('/core-customer/add') }}'" name="Find" class="btn btn-sm btn-info" title="Add Data"><i class="fa fa-plus"></i> Tambah Pelanggan </button>
    </div>
  </div>

    <div class="card-body">
        <div class="table-responsive">
            <table id="example" style="width:100%" class="table table-striped table-bordered table-hover table-full-width">
                <thead>
                    <tr>
                        <th width="2%" style='text-align:center'>No</th>
                        <th width="15%" style='text-align:center'>Nama Pelanggan</th>
                        <th width="15%" style='text-align:center'>Alamat Pelanggan</th>
                        <th width="15%" style='text-align:center'>Nomor Pelanggan</th>
                        <th width="10%" style='text-align:center'> Hutang </th>
                        <th width="10%" style='text-align:center'>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @csrf
                    <?php $no = 1; ?>
                    @foreach($data as $row)
                    <tr>
                        <td style='text-align:center'>{{ $no++ }}.</td>
                        <td>{{ $row['customer_name'] }}</td>
                        <td>{{ $row['customer_address'] }}</td>
                        <td>{{ $row['customer_contact_person'] }}</td>
                        <td>{{ number_format($row['amount_debt'],2,'.',',') }}</td>
                        <input class='form-control' type='hidden' name='total_repayment' id='total_repayment' value= "{{ $row['amount_debt'] }}" />
                        <input class='form-control' type='hidden' name='debt_repayment_amount' id='debt_repayment_amount' value= "{{ $row['amount_debt'] }}" />
                        <input class='form-control' type='hidden' name='customer_id' id='customer_id' value= "{{ $row['customer_id'] }}" />
                        <td class="text-center">
                            <a type="button" class="btn btn-outline-warning btn-sm" href="{{ url('/core-customer/edit/'.$row['customer_id']) }}">Edit</a>
                            <a type="button" class="btn btn-outline-danger btn-sm" href="{{ url('/core-customer/delete/'.$row['customer_id']) }}">Hapus</a>
                        </td>
                    </tr>
                    @endforeach
                </tbody>
            </table>
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