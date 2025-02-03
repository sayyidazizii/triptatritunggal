@inject('SalesOrder', 'App\Http\Controllers\SalesOrderController')
@extends('adminlte::page')

@section('title', 'Tripta Tri Tunggal')
<link rel="shortcut icon" href="{{ asset('resources/assets/logo_tripta.ico') }}" />
@section('js')
<script>
    function elements_add(name, value){
        $.ajax({
            type: "POST",
            url : "{{route('elements-add-sales-quotation')}}",
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

	function toRp(number) {
		var number = number.toString(),
		rupiah = number.split('.')[0],
		cents = (number.split('.')[1] || '') +'00';
		rupiah = rupiah.split('').reverse().join('')
			.replace(/(\d{3}(?!$))/g, '$1.')
			.split('').reverse().join('');
		return rupiah + ',' + cents.slice(0, 2);
	}

	$(document).ready(function(){
        var elements = {!! json_encode($salesquotationelements) !!};
        if(!elements || elements==''){
            elements = [];
        }
        if(!elements['warehouse_id']){
            $("#warehouse_id").select2("val", "0");
        }
        if(!elements['customer_id']){
            $("#customer_id").select2("val", "0");
        }

        $("#item_category_id").change(function(){
			var item_category_id 	= $("#item_category_id").val();
                $.ajax({
                    type: "POST",
                    url : "{{route('sales-quotation-type')}}",
                    dataType: "html",
                    data: {
                        'item_category_id'			    : item_category_id,
                        '_token'                        : '{{csrf_token()}}',
                    },
                    success: function(return_data){
					$('#item_stock_id').html(return_data);
                    },
                    error: function(data)
                    {
                        console.log(data);
                    }
                });
		});
        $("#item_category_id").select2("val", "0");
        $("#item_unit_id").select2("val", "0");
        $("#sales_order_type_id").change(function(){
			var sales_order_type_id 	    = $("#sales_order_type_id").val();
            if(sales_order_type_id==1){
                document.getElementById("receipt-image").style.visibility = "visible";
            }else{
                document.getElementById("receipt-image").style.visibility = "hidden";
            }
		});
        $("#price").change(function(){
			var price 	    = $("#price").val();
			var quantity 	= $("#quantity").val();
            var total_price = price*quantity;
            $("#total_price").val(total_price);
            $("#total_price_view").val(toRp(total_price));
            var discount_percentage_item 	                = $("#discount_percentage_item").val();
			var total_price 	                            = $("#total_price").val();
            var discount_percentage_item 	                = $("#discount_percentage_item").val();
            var ppn_out_percentage 	                        = $("#ppn_out_percentage").val();
            var discount_item                               = discount_percentage_item * 1/100;
            var ppn_item                                    = ppn_out_percentage * 1/100;
            var discount_amount_item                        = discount_item * total_price;
            var total_price_after_discount_item_a 	        = total_price - discount_amount_item;
            var ppn_amount_item                             = ppn_item * total_price_after_discount_item_a;
            var total_price_after_ppn_amount                = ppn_amount_item + total_price_after_discount_item_a ;
            $("#discount_amount_item").val(discount_amount_item);
            $("#discount_amount_item_view").val(toRp(discount_amount_item));
            $("#subtotal_after_discount_item_a").val(total_price_after_discount_item_a);
            $("#subtotal_after_discount_item_view_a").val(toRp(total_price_after_discount_item_a));
            $("#total_price_after_ppn_amount_view").val(toRp(total_price_after_ppn_amount));
            $("#total_price_after_ppn_amount").val(total_price_after_ppn_amount);
            $("#ppn_amount_item").val(ppn_amount_item);
		});

        $(document).ready(function(){
            var price 	        = 0;
			var quantity 	    = $("#quantity").val();
            var total_price     = price*quantity;
            var ppn_amount_item = 0;
            $("#total_price").val(total_price);
            $("#total_price_view").val(toRp(total_price));

        $("#quantity").change(function(){
			var price 	                                    = $("#price").val();
			var quantity 	                                = $("#quantity").val();
            var total_price                                 = price*quantity;
            $("#total_price").val(total_price);
            $("#total_price_view").val(toRp(total_price));
            var price 	                                    = $("#price").val();
			var quantity 	                                = $("#quantity").val();
            var total_price                                 = price*quantity;
            $("#total_price").val(total_price);
            $("#total_price_view").val(toRp(total_price));
            var discount_percentage_item 	                = $("#discount_percentage_item").val();
			var total_price 	                            = $("#total_price").val();
            var discount_percentage_item 	                = $("#discount_percentage_item").val();
            var ppn_out_percentage 	                        = $("#ppn_out_percentage").val();
            var discount_item                               = discount_percentage_item * 1/100;
            var ppn_item                                    = ppn_out_percentage * 1/100;
            var discount_amount_item                        = discount_item * total_price;
            var total_price_after_discount_item_a 	        = total_price - discount_amount_item;
            var ppn_amount_item                             = ppn_item * total_price_after_discount_item_a;
            var total_price_after_ppn_amount                = ppn_amount_item + total_price_after_discount_item_a;
            $("#discount_amount_item").val(discount_amount_item);
            $("#discount_amount_item_view").val(toRp(discount_amount_item));
            $("#subtotal_after_discount_item_a").val(total_price_after_discount_item_a);
            $("#subtotal_after_discount_item_view_a").val(toRp(total_price_after_discount_item_a));
            $("#total_price_after_ppn_amount_view").val(toRp(total_price_after_ppn_amount));
            $("#total_price_after_ppn_amount").val(total_price_after_ppn_amount);
            $("#ppn_amount_item").val(ppn_amount_item);
		});
    });
        $("#province_id").change(function(){
			var province_id 	= $("#province_id").val();
                $.ajax({
                    type: "POST",
                    url : "{{route('purchase-order-city')}}",
                    dataType: "html",
                    data: {
                        'province_id'	: province_id,
                        '_token'        : '{{csrf_token()}}',
                    },
                    success: function(return_data){
					$('#city_id').html(return_data);
                    },
                    error: function(data)
                    {
                        console.log(data);

                    }
                });

		});

        $("#item_stock_id").change(function(){
			var item_stock_id 	= $("#item_stock_id").val();
                $.ajax({
                    type: "POST",
                    url : "{{route('select-quotation-id-stock')}}",
                    dataType: "html",
                    data: {
                        'item_stock_id'	: item_stock_id,
                        '_token'        : '{{csrf_token()}}',
                    },
                    success: function(return_data){
					$('#item_type_id').val(return_data);
                    },
                    error: function(data)
                    {
                        console.log(data);

                    }
                });
		});

        $("#item_stock_id").change(function(){
			var item_stock_id 	= $("#item_stock_id").val();
                $.ajax({
                    type: "POST",
                    url : "{{route('available-stock-sales-quotation')}}",
                    dataType: "html",
                    data: {
                        'item_stock_id'	: item_stock_id,
                        '_token'    : '{{csrf_token()}}',
                    },
                    success: function(return_data){
					$('#available_stock').val(return_data);
                    },
                    error: function(data)
                    {
                        console.log(data);
                    }
                });
		});

        $("#item_stock_id").change(function(){
			var item_stock_id 	= $("#item_stock_id").val();
                $.ajax({
                    type: "POST",
                    url : "{{route('item-unit-price-sales-order')}}",
                    dataType: "html",
                    data: {
                        'item_stock_id'	: item_stock_id,
                        '_token'    : '{{csrf_token()}}',
                    },
                    success: function(return_data){
					$('#price').val(return_data);
                    },
                    error: function(data)
                    {
                        console.log(data);
                    }
                });
		});

        $("#item_stock_id").change(function(){
			var item_stock_id 	= $("#item_stock_id").val();
                $.ajax({
                    type: "POST",
                    url : "{{route('select-data-unit-quotation')}}",
                    dataType: "html",
                    data: {
                        'item_stock_id'	: item_stock_id,
                        '_token'        : '{{csrf_token()}}',
                    },
                    success: function(return_data){
					$('#item_unit_id').html(return_data);
                    },
                    error: function(data)
                    {
                        console.log(data);

                    }
                });
		});

	});

    $(document).ready(function(){
            var price 	    = $("#price").val();
			var quantity 	= $("#quantity").val();
            var total_price = price*quantity;
            $("#total_price").val(total_price);
            $("#total_price_view").val(toRp(total_price));
            var discount_percentage_item 	                = $("#discount_percentage_item").val();
			var total_price 	                            = $("#total_price").val();
            var discount_percentage_item 	                = $("#discount_percentage_item").val();
            var ppn_out_percentage 	                        = $("#ppn_out_percentage").val();
            var discount_item                               = discount_percentage_item * 1/100;
            var ppn_item                                    = ppn_out_percentage * 1/100;
            var discount_amount_item                        = discount_item * total_price;
            var total_price_after_discount_item_a 	        = total_price - discount_amount_item;
            var ppn_amount_item                             = ppn_item * total_price_after_discount_item_a;
            var total_price_after_ppn_amount                = ppn_amount_item + total_price_after_discount_item_a;
            $("#discount_amount_item").val(discount_amount_item);
            $("#discount_amount_item_view").val(toRp(discount_amount_item));
            $("#subtotal_after_discount_item_a").val(total_price_after_discount_item_a);
            $("#subtotal_after_discount_item_view_a").val(toRp(total_price_after_discount_item_a));
            $("#total_price_after_ppn_amount_view").val(toRp(total_price_after_ppn_amount));
            $("#total_price_after_ppn_amount").val(total_price_after_ppn_amount);
            $("#ppn_amount_item").val(ppn_amount_item);

        $("#discount_percentage_item").change(function(){
            var price 	                                    = $("#price").val();
			var quantity 	                                = $("#quantity").val();
            var total_price                                 = price*quantity;
            $("#total_price").val(total_price);
            $("#total_price_view").val(toRp(total_price));
            var discount_percentage_item 	                = $("#discount_percentage_item").val();
			var total_price 	                            = $("#total_price").val();
            var discount_percentage_item 	                = $("#discount_percentage_item").val();
            var ppn_out_percentage 	                        = $("#ppn_out_percentage").val();
            var discount_item                               = discount_percentage_item * 1/100;
            var ppn_item                                    = ppn_out_percentage * 1/100;
            var discount_amount_item                        = discount_item * total_price;
            var total_price_after_discount_item_a 	        = total_price - discount_amount_item;
            var ppn_amount_item                             = ppn_item * total_price_after_discount_item_a;
            var total_price_after_ppn_amount                = ppn_amount_item + total_price_after_discount_item_a;
            $("#discount_amount_item").val(discount_amount_item);
            $("#discount_amount_item_view").val(toRp(discount_amount_item));
            $("#subtotal_after_discount_item_a").val(total_price_after_discount_item_a);
            $("#subtotal_after_discount_item_view_a").val(toRp(total_price_after_discount_item_a));
            $("#total_price_after_ppn_amount_view").val(toRp(total_price_after_ppn_amount));
            $("#total_price_after_ppn_amount").val(total_price_after_ppn_amount);
            $("#ppn_amount_item").val(ppn_amount_item);
		});

        $("#discount_amount_item").change(function(){
            var price 	    = $("#price").val();
			var quantity 	= $("#quantity").val();
            var total_price = price*quantity;
            $("#total_price").val(total_price);
            $("#total_price_view").val(toRp(total_price));
            var discount_percentage_item 	                = $("#discount_percentage_item").val();
			var total_price 	                            = $("#total_price").val();
            var discount_percentage_item 	                = $("#discount_percentage_item").val();
            var ppn_out_percentage 	                        = $("#ppn_out_percentage").val();
            var discount_item                               = discount_percentage_item * 1/100;
            var ppn_item                                    = ppn_out_percentage * 1/100;
            var discount_amount_item                        = discount_item * total_price;
            var total_price_after_discount_item_a 	        = total_price - discount_amount_item;
            var ppn_amount_item                             = ppn_item * total_price_after_discount_item_a;
            var total_price_after_ppn_amount                = ppn_amount_item + total_price_after_discount_item_a;
            $("#discount_amount_item").val(discount_amount_item);
            $("#discount_amount_item_view").val(toRp(discount_amount_item));
            $("#subtotal_after_discount_item_a").val(total_price_after_discount_item_a);
            $("#subtotal_after_discount_item_view_a").val(toRp(total_price_after_discount_item_a));
            $("#total_price_after_ppn_amount_view").val(toRp(total_price_after_ppn_amount));
            $("#total_price_after_ppn_amount").val(total_price_after_ppn_amount);
            $("#ppn_amount_item").val(ppn_amount_item);
		});
    });

    //discount nota
    $(document).ready(function(){
            var discount_percentage 	            = $("#discount_percentage").val();
			var total_price_all 	                = $("#total_price_all").val();
            var ppn_out_percentage 	                = $("#ppn_out_percentage").val();
            var discount                            = discount_percentage * 1/100;
            var discount_amount                     = discount * total_price_all;
            var total_price_after_discount	        = total_price_all - discount_amount;
            var ppn_out_amount                      = 0;
            var total_price_after_ppn_out           = Number(total_price_after_discount) + ppn_out_amount;
            $("#discount_amount").val(discount_amount);
            $("#discount_amount_view").val(toRp(discount_amount));
            $("#subtotal_after_discount").val(total_price_after_discount);
            $("#subtotal_after_discount_view").val(toRp(total_price_after_discount));
            $("#ppn_out_amount").val(ppn_out_amount);
            $("#ppn_out_amount_view").val(toRp(ppn_out_amount));
            $("#subtotal_after_ppn_out").val(total_price_after_ppn_out);
            $("#subtotal_after_ppn_out_view").val(toRp(total_price_after_ppn_out));

        $("#discount_percentage").change(function(){
			var discount_percentage 	            = $("#discount_percentage").val();
			var total_price_all 	                = $("#total_price_all").val();
            var ppn_out_percentage 	                = $("#ppn_out_percentage").val();
            var discount                            = discount_percentage * 1/100;
            var discount_amount                     = discount * total_price_all;
            var total_price_after_discount	        = total_price_all - discount_amount;
            var ppn_out_amount                      = 0;
            var total_price_after_ppn_out           = Number(total_price_after_discount) + ppn_out_amount;
            $("#discount_amount").val(discount_amount);
            $("#discount_amount_view").val(toRp(discount_amount));
            $("#subtotal_after_discount").val(total_price_after_discount);
            $("#subtotal_after_discount_view").val(toRp(total_price_after_discount));
            $("#ppn_out_amount").val(ppn_out_amount);
            $("#ppn_out_amount_view").val(toRp(ppn_out_amount));
            $("#subtotal_after_ppn_out").val(total_price_after_ppn_out);
            $("#subtotal_after_ppn_out_view").val(toRp(total_price_after_ppn_out));

		});

    });

    $(document).ready(function(){
            var discount_percentage 	            = $("#discount_percentage").val();
			var total_price_all 	                = $("#total_price_all").val();
            var discount                            = discount_percentage * 1/100;
            var discount_amount                     = discount * total_price_all;
            var total_price_after_discount	        = total_price_all - discount_amount;
            var ppn_out_percentage 	                = $("#ppn_out_percentage").val();
            var ppn_out_amount                      = total_price_after_discount  * ppn_out_percentage/100;
            var total_price_after_ppn_out           = Number(total_price_after_discount) + ppn_out_amount;
            $("#discount_amount").val(discount_amount);
            $("#discount_amount_view").val(toRp(discount_amount));
            $("#subtotal_after_discount").val(total_price_after_discount);
            $("#subtotal_after_discount_view").val(toRp(total_price_after_discount));
            $("#ppn_out_amount").val(ppn_out_amount);
            $("#ppn_out_amount_view").val(toRp(ppn_out_amount));
            $("#subtotal_after_ppn_out").val(total_price_after_ppn_out);
            $("#subtotal_after_ppn_out_view").val(toRp(total_price_after_ppn_out));

        $("#ppn_out_percentage").change(function(){
			var discount_percentage 	            = $("#discount_percentage").val();
			var total_price_all 	                = $("#total_price_all").val();
            var discount                            = discount_percentage * 1/100;
            var discount_amount                     = discount * total_price_all;
            var total_price_after_discount	        = total_price_all - discount_amount;
            var ppn_out_percentage 	                = $("#ppn_out_percentage").val();
            var ppn_out_amount                      = total_price_after_discount  * ppn_out_percentage/100;
            var total_price_after_ppn_out           = Number(total_price_after_discount) + ppn_out_amount;
            $("#discount_amount").val(discount_amount);
            $("#discount_amount_view").val(toRp(discount_amount));
            $("#subtotal_after_discount").val(total_price_after_discount);
            $("#subtotal_after_discount_view").val(toRp(total_price_after_discount));
            $("#ppn_out_amount").val(ppn_out_amount);
            $("#ppn_out_amount_view").val(toRp(ppn_out_amount));
            $("#subtotal_after_ppn_out").val(total_price_after_ppn_out);
            $("#subtotal_after_ppn_out_view").val(toRp(total_price_after_ppn_out));
		});
    });


    function processAddArraySalesQuotationItem(){
        var item_category_id		            = document.getElementById("item_category_id").value;
        var item_type_id		                = document.getElementById("item_type_id").value;
        var item_unit_id	                    = document.getElementById("item_unit_id").value;
        var item_stock_id	                    = document.getElementById("item_stock_id").value;
        var quantity			                = document.getElementById("quantity").value;
        var price			                    = document.getElementById("price").value;
        var total_price			                = document.getElementById("total_price").value;
        var discount_percentage_item            = document.getElementById("discount_percentage_item").value;
        var discount_amount_item		        = document.getElementById("discount_amount_item").value;
        var subtotal_after_discount_item_a	    = document.getElementById("subtotal_after_discount_item_a").value;
        var ppn_amount_item	                    = document.getElementById("ppn_amount_item").value;
        var total_price_after_ppn_amount	    = document.getElementById("total_price_after_ppn_amount").value;

        $.ajax({
            type: "POST",
            url : "{{route('sales-quotation-add-array')}}",
            data: {
                'item_category_id'              : item_category_id,
                'item_type_id'                  : item_type_id,
                'item_unit_id'                  : item_unit_id,
                'item_stock_id' 		        : item_stock_id,
                'quantity' 			            : quantity,
                'price' 			            : price,
                'total_price' 		            : total_price,
                'discount_percentage_item' 	    : discount_percentage_item,
                'discount_amount_item' 		    : discount_amount_item,
                'subtotal_after_discount_item_a': subtotal_after_discount_item_a,
                'ppn_amount_item'               : ppn_amount_item,
                'total_price_after_ppn_amount'  : total_price_after_ppn_amount,
                '_token'                        : '{{csrf_token()}}'
            },
            success: function(msg){
                location.reload();
            }
        });
    }

    function addCustomer(){
        var customer_name 	        = $("#customer_name").val();
        var province_id 	        = $("#province_id").val();
        var city_id 	            = $("#city_id").val();
        var customer_address 	    = $("#customer_address").val();
        var customer_home_phone 	= $("#customer_home_phone").val();
        var customer_mobile_phone1 	= $("#customer_mobile_phone1").val();
        var customer_mobile_phone2 	= $("#customer_mobile_phone2").val();
        var customer_fax_number 	= $("#customer_fax_number").val();
        var customer_email 	        = $("#customer_email").val();
        var customer_contact_person = $("#customer_contact_person").val();
        var customer_id_number 	    = $("#customer_id_number").val();
        var customer_tax_no 	    = $("#customer_tax_no").val();
        var customer_payment_terms 	= $("#customer_payment_terms").val();
        var customer_remark 	    = $("#customer_remark").val();
        $.ajax({
            type: "POST",
            url : "{{route('add-customer-sales-quotation')}}",
            dataType: "html",
            data: {
                'customer_name'	            : customer_name,
                'province_id'	            : province_id,
                'city_id'	                : city_id,
                'customer_address'	        : customer_address,
                'customer_home_phone'	    : customer_home_phone,
                'customer_mobile_phone1'    : customer_mobile_phone1,
                'customer_mobile_phone2'	: customer_mobile_phone2,
                'customer_fax_number'	    : customer_fax_number,
                'customer_email'	        : customer_email,
                'customer_contact_person'	: customer_contact_person,
                'customer_id_number'	    : customer_id_number,
                'customer_tax_no'	        : customer_tax_no,
                'customer_payment_terms'	: customer_payment_terms,
                'customer_remark'	        : customer_remark,
                '_token'                    : '{{csrf_token()}}',
            },
            success: function(return_data){
                $('#customer_id').html(return_data);
                $('#cancel_btn_customer').click();
            },
            error: function(data)
            {
                console.log(data);

            }
        });
    }

    function addInvType(){
        $('#btn_save').prop('disabled', false);
        $('#btn_save').text('Menyimpan...');

        var item_category_id_modal      = $("#item_category_id_modal").val();
        console.log({item_category_id_modal}); // Debugging purposes
        var item_unit_id_modal          = $("#item_unit_id_modal").val();
        var item_type_name              = $("#item_type_name").val();
        console.log({item_type_name}); // Debugging purposes
        var csrfToken = $('meta[name="csrf-token"]').attr('content');
        $.ajax({
            type: "POST",
            url : "{{route('add-type-sales-quotation')}}",
            dataType: "html",
            data: {
                'item_category_id_modal'	    : item_category_id_modal,
                'item_unit_id_modal'	        : item_unit_id_modal,
                'item_type_name'	            : item_type_name,
                '_token'                        : csrfToken
            },
            success: function(return_data){
                alert('Data berhasil disimpan');
                location.reload(); // Refresh the page to reflect changes

                setTimeout(function(){
                    $('#btn_save').prop('disabled', true);
                    $('#btn_save').text('Simpan');
                }, 1000);
            },
            error: function(data)
            {
                console.log(data);
                alert('Terjadi kesalahan saat menyimpan data');
            
                // Re-enable button and restore text on error
                $('#btn_save').prop('disabled', false);
                $('#btn_save').text('Simpan');
            }
        });
    }
</script>
@stop

@section('content_header')
<nav aria-label="breadcrumb">
    <ol class="breadcrumb">
        <li class="breadcrumb-item"><a href="{{ url('home') }}">Beranda</a></li>
        <li class="breadcrumb-item"><a href="{{ url('sales-quotation') }}">Daftar Sales Quotation</a></li>
        <li class="breadcrumb-item active" aria-current="page">Tambah Sales Quotation</li>
    </ol>
</nav>
@stop

@section('content')

<h3 class="page-title">
    Form Tambah Sales Quotation
</h3>
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
<div class="card border border-dark"  style="margin-top: 1%">
    <div class="card-header border-dark bg-dark">
        <h5 class="mb-0 float-left">
            Form Tambah
        </h5>
        <div class="float-right">
            <button onclick="location.href='{{ url('sales-order') }}'" name="Find" class="btn btn-sm btn-info" title="Back"><i class="fa fa-angle-left"></i>  Kembali</button>
        </div>
    </div>

    <form method="post" action="{{route('process-add-sales-quotation')}}" enctype="multipart/form-data">
        @csrf
        <div class="card-body">
            <div class="row form-group">
                <div class="col-md-6">
                    <section class="control-label">Tanggal QO
                        <span class="required text-danger">
                            *
                        </span>
                    </section>
                    <input type ="date" class="form-control form-control-inline input-medium date-picker input-date" data-date-format="dd-mm-yyyy" type="text" name="sales_quotation_date" id="sales_quotation_date" onChange="elements_add(this.name, this.value);" value="{{$salesquotationelements == null ? '' : $salesquotationelements['sales_quotation_date']}}" style="width: 15rem;"/>
                </div>
                <div class="col-md-6">
                    <section class="control-label">Tanggal Kadaluarsa QO
                    </section>
                    <input type ="date" class="form-control form-control-inline input-medium date-picker input-date" data-date-format="dd-mm-yyyy" type="text" name="sales_quotation_due_date" id="sales_quotation_due_date" onChange="elements_add(this.name, this.value);" value="{{$salesquotationelements == null ? '' : $salesquotationelements['sales_quotation_due_date']}}" style="width: 15rem;"/>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-5">
                    <a class="text-dark">Nama Pelanggan<a class='red'> *</a></a>
                    {!! Form::select('customer_id',  $customer, $salesquotationelements == null ? '' : $salesquotationelements['customer_id'], ['class' => 'selection-search-clear select-form', 'id' => 'customer_id', 'onchange' => 'elements_add(this.name , this.value);']) !!}
                </div>
                <div class="col-md-1 mt-1">
                    <a class="text-dark"></a>
                    <a href='#addcustomer' data-toggle='modal' name="Find" class="btn btn-success add-btn btn-sm" title="Add Data">Tambah</a>
                </div>
            </div>
            <div class="row form-group">
                <div class="col-md-12 ">
                    <a class="text-dark">Keterangan</a>
                    <div class="">
                        <textarea rows="3" type="text" class="form-control input-bb" name="sales_quotation_remark" onChange="elements_add(this.name, this.value);" id="sales_quotation_remark" >{{$salesquotationelements == null ? '' : $salesquotationelements['sales_quotation_remark']}}</textarea>
                    </div>
                </div>
            </div>
            <h4 class="text-dark" style="margin-top: 3%;"><b>Daftar Barang</b></h4>
            <hr/>
            <div class="row form-group">
                <div class="col-md-4">
                    <a class="text-dark">Kategori Barang<a class='red'> *</a></a>
                    {!! Form::select('item_category_id',  $itemcategory, 0, ['class' => 'selection-search-clear select-form', 'id' => 'item_category_id']) !!}
                </div>
                <div class="col-md-2 mt-1">
                    <a href='#addkategorybarang' data-toggle='modal' name="Find" class="btn btn-success add-btn btn-sm" title="Add Data">Tambah Kategori</a>
                </div>
                <div class="col-md-4">
                    <a class="text-dark">Nama Barang<a class='red'> *</a></a>
                    {!! Form::select('item_stock_id',  $itemtype, 0, ['class' => 'selection-search-clear select-form', 'id' => 'item_stock_id']) !!}
                    <input class="form-control input-bb" type="hidden" name="item_type_id" id="item_type_id" value="0" readonly/>
                </div>
                <div class="col-md-2 mt-1">
                    <a href='#addNamaBarang' data-toggle='modal' name="Find" class="btn btn-success add-btn btn-sm" title="Add Data">Tambah Barang</a>              
                </div>
            </div>
            <div class="row form-group">
                
                <div class="col-md-6">
                    <div class="form-group">
                        <a class="text-dark">Stock Tersedia</a>
                        <input class="form-control input-bb" type="text" name="available_stock" id="available_stock" value="" readonly/>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <a class="text-dark">Satuan<a class='red'> *</a></a>
                        <select class="selection-search-clear" name="item_unit_id" id="item_unit_id" style="width: 100% !important">
                        </select>
                    </div>
                </div>
                <div class="col-md-2 mt-1">
                    <a class="text-dark"></a>
                    <a href='#addbarang' data-toggle='modal' name="Find" class="btn btn-success add-btn btn-sm" title="Add Data">Tambah Satuan</a>       
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <a class="text-dark">Quantity</a>
                        <a class='red'> *</a>
                        <input class="form-control input-bb" type="text" name="quantity" id="quantity" value=""/>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <a class="text-dark">Harga Satuan<a class='red'> *</a></a>
                        <input class="form-control input-bb" type="text" name="price" id="price" value=""/>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <a class="text-dark">Total Harga</a>
                        <input class="form-control input-bb" type="text" name="total_price_view" id="total_price_view" value="" readonly/>
                        <input class="form-control input-bb" type="hidden" name="total_price" id="total_price" value=""/>
                    </div>
                </div>
            </div>
            <div class="row form-group">
            </div>
            <div class="row form-group">
                <div class="col-md-4">
                    <div class="form-group">
                        <a class="text-dark">Discount /Barang (%)</a>
                         <a class="text-dark">Satuan<a class='red'> *</a></a>
                        <input class="form-control input-bb" type="text" name="discount_percentage_item" id="discount_percentage_item" value=""/>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <a class="text-dark">Nominal Discount </a>
                        <input class="form-control input-bb" type="text" name="discount_amount_item" id="discount_amount_item" value="" />
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <a class="text-dark">Total Harga Setelah Discount </a>
                        <input class="form-control input-bb" type="text" name="subtotal_after_discount_item_view_a" id="subtotal_after_discount_item_view_a" value="" readonly/>
                        <input class="form-control input-bb" type="hidden" name="subtotal_after_discount_item_a" id="subtotal_after_discount_item_a" value=""/>
                    </div>
                </div>
            </div>
            <div class="row form-group"hidden>
                <div class="col-md-4">
                    <div class="form-group">
                        <a class="text-dark">PPN %</a>
                        <input class="form-control input-bb" type="text"name="ppn_out_percentage_item" id="ppn_out_percentage_item" value="0"  placeholder="isi 0 jika kosong"></td>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <a class="text-dark">PPN Item Amount</a>
                        <input class="form-control input-bb" type="text" name="ppn_amount_item" id="ppn_amount_item" readonly/>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <a class="text-dark">Total After PPN Item </a>
                        <input class="form-control input-bb" type="text" name="total_price_after_ppn_amount_view" id="total_price_after_ppn_amount_view" readonly placeholder="isi 0 jika kosong"></td>
                        <input class="form-control input-bb" type="text" name="total_price_after_ppn_amount" id="total_price_after_ppn_amount" hidden/>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-footer text-muted">
            <div class="form-actions float-right">
                <a type="submit" name="Save" class="btn btn-primary btn-sm" title="Save" onclick="processAddArraySalesQuotationItem()">Tambah</a>
            </div>
        </div>
    </div>

    <div class="card border border-dark" style="margin-top: 2%">
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
                                <th style='text-align:center'>Barang</th>
                                <th style='text-align:center'>Qty</th>
                                <th style='text-align:center'>Satuan</th>
                                <th style='text-align:center'>Harga Satuan</th>
                                <th style='text-align:center'>Discount /Barang</th>
                                <th style='text-align:center'>Total Harga</th>
                                <th style='text-align:center'>Aksi</th>
                            </tr>
                        </thead>
                        <tbody>

                                @if(!is_array($salesquotationitem ))
                                    <tr><th colspan='11' style='text-align  : center !important;'>Data Kosong</th></tr>
                                @else
                                @php
                                    $no =1;
                                    $total_price = 0;
                                    $total_price_after_discount_item = 0;
                                    $total_item = 0;
                                @endphp
                                    @foreach ($salesquotationitem  AS $key => $val)

                                            <tr>
                                                <td style='text-align  : center'>{{$no}}</td>
                                                <td style='text-align  : left !important;'>{{$SalesOrder->getItemTypeName($val['item_type_id'])}}</td>
                                                <td style='text-align  : right !important;'>{{$val['quantity']}}</td>
                                                <td style='text-align  : left !important;'>{{$SalesOrder->getItemUnitName($val['item_unit_id'])}}</td>
                                                <td style='text-align  : right !important;'>{{number_format($val['price'],2,',','.')}}</td>
                                                <td style='text-align  : right !important;'>{{number_format($val['discount_amount_item'],2,',','.')}}</td>
                                                <td style='text-align  : right !important;'>{{number_format($val['subtotal_after_discount_item_a'],2,',','.')}}</td>
                                                <td style='text-align  : center'>
                                                    <a href="{{route('sales-quotation-delete-array', ['record_id' => $key])}}" name='Reset' class='btn btn-danger btn-sm' onClick='javascript:return confirm(\"apakah yakin ingin dihapus ?\")'></i> Hapus</a>
                                                </td>
                                            </tr>

                                        @php
                                            $no++;
                                            $total_price_after_discount_item += $val['subtotal_after_discount_item_a'];
                                            $total_item+=$val['quantity'];
                                        @endphp

                                        @endforeach
                                        <th style='text-align  : center' colspan='2'>Total</th>
                                        <th style='text-align  : right' >{{$total_item}}</th>
                                        <th colspan='3'></th>
                                        <th style='text-align  : right'>{{number_format($total_price_after_discount_item,2,',','.')}}</th>
                                        <th>
                                            <input class='form-control input-bb' type='hidden' name='total_price_all' id='total_price_all' value='{{$total_price_after_discount_item}}'/>
                                            <input class='form-control input-bb' type='hidden' name='total_item_all' id='total_item_all' value='{{$total_item}}'/>
                                        </th>
                                        <tr>
                                            <td style='text-align  : center' colspan='2'><b>Discount Nota (%)</b></td>
                                            <td style='text-align  : center'><b>:</b></td>
                                            <td colspan='3'></td>
                                            <td>
                                                <input style='text-align  : right' type="text" class="form-control" name="discount_percentage" id="discount_percentage" value="0"  placeholder="isi 0 jika kosong"></td>
                                            <td>
                                                <input type="hidden" class="form-control" name="discount_amount" id="discount_amount" readonly>
                                                <input type="hidden" class="form-control" name="subtotal_after_discount" id="subtotal_after_discount" readonly>
                                                <input style='text-align  : right;  font-weight: bold;' type="text" class="form-control" name="discount_amount_view" id="discount_amount_view" readonly>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style='text-align  : center' colspan='2'><b>Harga Setelah Discount Nota </td>
                                            <td style='text-align  : center'><b>:</b></td>
                                            <td colspan='4'></td>
                                            <td style='text-align  : center'>
                                                <input style='text-align  : right;  font-weight: bold;' type="text" class="form-control" name="subtotal_after_discount_view" id="subtotal_after_discount_view" readonly>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td  style='text-align  : center' colspan='2'><b>PPN Keluar (%)</b></td>
                                            <td  style='text-align  : center'><b>:</b></td>
                                            <td  colspan='3'></td>
                                            <td>
                                                <input  style='text-align  : right' type="text" class="form-control" name="ppn_out_percentage" id="ppn_out_percentage" value="{{ $ppn_out_percentage['ppn_amount_out'] }}" placeholder="isi 0 jika kosong"></td>
                                            <td>
                                                <input  type="hidden" class="form-control" name="ppn_out_amount" id="ppn_out_amount" value="{{ $ppn_out_percentage['ppn_amount_out'] }}" readonly>
                                                <input  style='text-align  : right;  font-weight: bold;' type="text" class="form-control" name="ppn_out_amount_view" id="ppn_out_amount_view" readonly>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style='text-align  : center' colspan='2'><b>Total Harga Akhir </td>
                                            <td style='text-align  : center'><b>:</b></td>
                                            <td colspan='4'></td>
                                            <td style='text-align  : center'>
                                                <input type="hidden" class="form-control" name="subtotal_after_ppn_out" id="subtotal_after_ppn_out" readonly>
                                                <input style='text-align  : right;  font-weight: bold;' type="text" class="form-control" name="subtotal_after_ppn_out_view" id="subtotal_after_ppn_out_view" readonly>
                                            </td>
                                        </tr>
                            @endif
                        </tbody>
                    </table>
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
</form>
<br/>

{{-- Modal Tambahan untuk menambahkan data customer --}}
    @include('content.SalesQuotation.Modal.ModalAddCustomer')
{{-- end --}}

{{-- Modal Tambahan untuk menambahkan data barang --}}
    @include('content.SalesQuotation.Modal.ModalAddInvType')
{{-- end --}}

<br>
<br>

@include('footer')

@stop

@section('css')

@stop
