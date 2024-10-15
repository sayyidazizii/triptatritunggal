@inject('SystemUserGroup', 'App\Http\Controllers\SystemUserGroupController')

@extends('adminlte::page')

@section('title', 'PBF | Koperasi Menjangan Enam')
<link rel="shortcut icon" href="{{ asset('resources/assets/logo_pbf.ico') }}" />

@section('js')
<script>
    function check_all(){
        $(':checkbox').each(function() {
            this.checked = true;                        
        });
    }
    function uncheck_all(){
        $(':checkbox').each(function() {
            this.checked = false;                        
        });
    }
</script>
@stop

@section('content_header')
    
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ url('home') }}">Beranda</a></li>
        <li class="breadcrumb-item"><a href="{{ url('system-user-group') }}">Daftar System User Group</a></li>
        <li class="breadcrumb-item active" aria-current="page">Edit System User Group</li>
    </ol>
  </nav>

@stop

@section('content')

<h3 class="page-title">
    Form Edit System User Group
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
            <button onclick="location.href='{{ url('system-user-group') }}'" name="Find" class="btn btn-sm btn-info" title="Back"><i class="fa fa-angle-left"></i>  Kembali</button>
        </div>
    </div>

    <form method="post" action="{{route('process-edit-system-user-group')}}" enctype="multipart/form-data">
        @csrf
        <div class="card-body">
            <div class="row form-group">
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Nama Group<a class='red'> *</a></a>
                        <input class="form-control input-bb" type="text" name="user_group_name" id="user_group_name" value="{{$systemusergroup['user_group_name']}}"/>
                        <input class="form-control input-bb" type="hidden" name="user_group_id" id="user_group_id" value="{{$systemusergroup['user_group_id']}}"/>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">User Group Level<a class='red'> *</a></a>
                        <input class="form-control input-bb" type="text" name="user_group_level" id="user_group_level" value="{{$systemusergroup['user_group_level']}}"/>
                    </div>
                </div>
            </div>

            <br/>
            <div class="row">
                <div class="col-md-10">
                    <h5 class="form-section"><b>Privilage Menu<a class='red'> *</a></b></h5>
                </div>
                <div class="col-md-2" style="padding-left: 3%;">
                    <a onclick="check_all()" name="Find" class="btn btn-sm btn-info" title="Back"> Check All</a>
                    <a onclick="uncheck_all()" name="Find" class="btn btn-sm btn-info" title="Back"> UnCheck All</a>
                </div>
            </div>
            <hr style="margin:0;">
            <br/>
            <?php foreach($systemmenu as $key => $val) {
                    if($val['indent_level']==1 && $SystemUserGroup->getMenuMappingStatus($systemusergroup['user_group_level'], $val['id_menu'])!=0){
            ?>
                <div class="indent_first">
                    <input type='checkbox' class='checkboxes' name='checkbox_{{$val['id_menu']}}' id='checkbox_{{$val['id_menu']}}' value='1'  OnClick='checkboxSalesOrderChange({{$val['id_menu']}})'; checked/> {{$val['text']}}
                </div>
            <?php   }else if($val['indent_level']==1 && $SystemUserGroup->getMenuMappingStatus($systemusergroup['user_group_level'], $val['id_menu'])==0){ ?>
                <div class="indent_first">
                    <input type='checkbox' class='checkboxes' name='checkbox_{{$val['id_menu']}}' id='checkbox_{{$val['id_menu']}}' value='1'  OnClick='checkboxSalesOrderChange({{$val['id_menu']}})';/> {{$val['text']}}
                </div>
            <?php   }else if($val['indent_level']==2 && $SystemUserGroup->getMenuMappingStatus($systemusergroup['user_group_level'], $val['id_menu'])!=0){ ?>
                <div class="indent_second">
                    <input type='checkbox' class='checkboxes' name='checkbox_{{$val['id_menu']}}' id='checkbox_{{$val['id_menu']}}' value='1'  OnClick='checkboxSalesOrderChange({{$val['id_menu']}})'; checked/> {{$val['text']}}
                </div>
            <?php   }else if($val['indent_level']==2 && $SystemUserGroup->getMenuMappingStatus($systemusergroup['user_group_level'], $val['id_menu'])==0){ ?>
                <div class="indent_second">
                    <input type='checkbox' class='checkboxes' name='checkbox_{{$val['id_menu']}}' id='checkbox_{{$val['id_menu']}}' value='1'  OnClick='checkboxSalesOrderChange({{$val['id_menu']}})';/> {{$val['text']}}
                </div>
            <?php   }else if($val['indent_level']==3 && $SystemUserGroup->getMenuMappingStatus($systemusergroup['user_group_level'], $val['id_menu'])!=0){ ?>
                <div class="indent_third">
                    <input type='checkbox' class='checkboxes' name='checkbox_{{$val['id_menu']}}' id='checkbox_{{$val['id_menu']}}' value='1'  OnClick='checkboxSalesOrderChange({{$val['id_menu']}})'; checked/> {{$val['text']}}
                </div>
            <?php   }else if($val['indent_level']==3 && $SystemUserGroup->getMenuMappingStatus($systemusergroup['user_group_level'], $val['id_menu'])==0){ ?>
                <div class="indent_third">
                    <input type='checkbox' class='checkboxes' name='checkbox_{{$val['id_menu']}}' id='checkbox_{{$val['id_menu']}}' value='1'  OnClick='checkboxSalesOrderChange({{$val['id_menu']}})';/> {{$val['text']}}
                </div>
            <?php   } 
            } ?>
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
<br>

@include('footer')

@stop

@section('footer')
    
@stop

@section('css')
    
@stop