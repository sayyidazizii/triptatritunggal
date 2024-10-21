<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\Models\CoreProvince;
use App\Models\CoreCity;
use App\Models\SalesOrder;
use App\Models\SalesOrderItem;
use App\Models\SalesOrderType;
use App\Models\PreferenceCompany;
use App\Models\SalesOrderItemStock;
use App\Models\SalesOrderItemStockTemporary;
use App\Models\InvWarehouse;
use App\Models\CoreCustomer;
use App\Models\InvItemCategory;
use Illuminate\Validation\Rule;
use App\Models\InvItemUnit;
use App\Models\InvItemType;
use App\Models\InvItemStock;
use App\Models\SalesQuotation;
use App\Models\SalesQuotationItem;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;


class SalesQuotationController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $start_date = Session::get('start_date', date('Y-m-d'));
        $end_date = Session::get('end_date', date('Y-m-d'));

        Session::put('editarraystate', 0);
        Session::forget('salesquotationitem');
        Session::forget('salesquotationelements');

        $salesquotation = SalesQuotation::where('data_state','=',0)
        ->whereBetween('sales_quotation_date', [$start_date, $end_date])
        ->get();

        return view('content/SalesQuotation/ListSalesQuotation',compact('salesquotation', 'start_date', 'end_date'));
    }

    public function addSalesQuotation(){
        $salesquotationelements  = Session::get('salesquotationelements');
        $salesquotationitem      = Session::get('salesquotationitem');
        
        $invitemtype = InvItemType::where('inv_item_type.data_state','=',0)
        ->select('*')
        ->join('inv_item_category', 'inv_item_category.item_category_id', 'inv_item_type.item_category_id')
        ->join('inv_item_stock', 'inv_item_type.item_type_id', 'inv_item_stock.item_type_id')
        ->pluck('inv_item_type.item_type_name','inv_item_type.item_type_id');

        $warehouse          = InvWarehouse::where('data_state','=',0)->pluck('warehouse_name', 'warehouse_id');
        $customer           = CoreCustomer::where('data_state','=',0)->pluck('customer_name', 'customer_id');
        $itemcategory       = InvItemCategory::where('data_state','=',0)->pluck('item_category_name', 'item_category_id');
        $itemunit           = InvItemUnit::where('data_state','=',0)->pluck('item_unit_name', 'item_unit_id');
        $itemtype           = [];
        $coreprovince       = CoreProvince::where('data_state', 0)->pluck('province_name', 'province_id');
        $corecity           = CoreCity::where('data_state', 0)->pluck('city_name', 'city_id');

        $null_item_type_id = Session::get('item_type_id');
        $ppnOut            = PreferenceCompany::select('ppn_amount_out')->first();

        return view('content/SalesQuotation/FormAddSalesQuotation',compact('ppnOut','null_item_type_id', 'warehouse', 'customer', 'itemcategory', 'itemtype', 'salesquotationitem', 'itemunit', 'salesquotationelements', 'invitemtype', 'coreprovince', 'corecity'));
    }

    public function processAddSalesQuotation(Request $request){
        $validationRules = [
            'sales_quotation_date'           => 'required',
            'sales_quotation_delivery_date'  => 'required',
            'customer_id'                    => 'required',
            'sales_quotation_type_id'        => 'required',
            'total_item_all'                 => 'required',
            'total_price_all'                => 'required',
        ];

        
        $validatedData = $request->validate($validationRules);


        $salesquotation = array (
            'sales_quotation_date'           => $validatedData['sales_quotation_date'],
            'sales_quotation_delivery_date'  => $validatedData['sales_quotation_delivery_date'],
            'customer_id'                    => $validatedData['customer_id'],
            'sales_quotation_type_id'        => $validatedData['sales_quotation_type_id'],
            'total_item'                     => $validatedData['total_item_all'],
            'total_amount'                   => $validatedData['total_price_all'],
            'sales_quotation_remark'         => $request->sales_quotation_remark,
            'discount_percentage'            => $request->discount_percentage,
            'discount_amount'                => $request->discount_amount,
            'subtotal_after_discount'        => $request->subtotal_after_discount,
            'ppn_out_percentage'	         => $request['ppn_out_percentage'],
            'ppn_out_amount'	             => $request['ppn_out_amount'],
            'subtotal_after_ppn_out'	     => $request['subtotal_after_ppn_out'],
            'branch_id'                      => Auth::user()->branch_id,
            'sales_quotation_due_date'       => $request['sales_quotation_due_date'],
        );

        if(SalesQuotation::create($salesquotation)){
            $sales_quotation_id = SalesQuotation::orderBy('created_at','DESC')->first();
            $salesquotationitem = Session::get('salesquotationitem');
            foreach ($salesquotationitem AS $key => $val){
                $datasalesquotationitem = array (
                    'sales_quotation_id'            => $sales_quotation_id['sales_quotation_id'],
                    'item_category_id'              => $val['item_category_id'],
                    'item_type_id'                  => $val['item_type_id'],
                    'item_unit_id'                  => $val['item_unit_id'],
                    'quantity'                      => $val['quantity'],
                    'quantity_resulted'             => $val['quantity'],
                    'item_unit_price'               => $val['price'],
                    'subtotal_amount'               => $val['total_price'],
                    'discount_percentage_item'      => $val['discount_percentage_item'],
                    'discount_amount_item'          => $val['discount_amount_item'],
                    'subtotal_after_discount_item_a'=> $val['subtotal_after_discount_item_a'],
                    'ppn_amount_item'               => $val['ppn_amount_item'],
                    'total_price_after_ppn_amount'  => $val['total_price_after_ppn_amount'],

                );
                //dd($datasalesquotationitem);
                SalesQuotationItem::create($datasalesquotationitem);

            }
            $msg = 'Tambah Sales Quotation Berhasil';
            return redirect('/sales-quotation')->with('msg',$msg);
        }else{
            $msg = 'Tambah Sales Quotation Gagal';
            return redirect('/sales-quotation/add')->with('msg',$msg);
        }

    }

    public function processAddArraySalesQuotationItem(Request $request)
    {
        $fields = $request->validate([
            'item_category_id'              => 'required',
            'item_type_id'                  => 'required',
            'item_unit_id'                  => 'required',
            'quantity'                      => 'required',
            'price'                         => 'required',
            'total_price'                   => 'required',
        ]);

        $salesquotationitem = array(
            'item_category_id'	            => $request->item_category_id,
            'item_type_id'	                => $request->item_type_id,
            'item_unit_id'	                => $request->item_unit_id,
            'quantity'	                    => $request->quantity,
            'price'	                        => $request->price,
            'total_price'	                => $request->total_price,
            'discount_percentage_item'	    => $request->discount_percentage_item,
            'discount_amount_item'	        => $request->discount_amount_item,
            'subtotal_after_discount_item_a'=> $request->subtotal_after_discount_item_a,
            'ppn_amount_item'               => $request->ppn_amount_item,
            'total_price_after_ppn_amount'  => $request->total_price_after_ppn_amount,
        );

        // echo json_encode($salesquotationitem);exit;

        $lastsalesquotationitem= Session::get('salesquotationitem');
        if($lastsalesquotationitem!== null){
            array_push($lastsalesquotationitem, $salesquotationitem);
            Session::put('salesquotationitem', $lastsalesquotationitem);
        }else{
            $lastsalesquotationitem= [];
            array_push($lastsalesquotationitem, $salesquotationitem);
            Session::push('salesquotationitem', $salesquotationitem);
        }
        
        Session::put('editarraystate', 1);
        
        return redirect('/sales-quotation/add');
    }

    public function filterSalesQuotation(Request $request){
        $start_date     = $request->start_date;
        $end_date       = $request->end_date;

        Session::put('start_date', $start_date);
        Session::put('end_date', $end_date);

        return redirect('/sales-quotation');
    }

    public function resetFilterSalesQuotation(){
        Session::forget('start_date');
        Session::forget('end_date');

        return redirect('/sales-quotation');
    }

    public function elements_add(Request $request){
        $salesquotationelements= Session::get('salesquotationelements');
        if(!$salesquotationelements || $salesquotationelements == ''){
            $salesquotationelements['sales_order_date'] = '';
            $salesquotationelements['warehouse_id'] = '';
            $salesquotationelements['customer_id'] = '';
            $salesquotationelements['sales_order_type_id'] = '';
            $salesquotationelements['sales_order_remark'] = '';
            $salesquotationelements['sales_quotation_due_date'] = '';
        }
        $salesquotationelements[$request->name] = $request->value;
        Session::put('salesquotationelements', $salesquotationelements);
    }

    public function getInvItemTypeQuotation(Request $request)
    {
        $item_category_id = $request->item_category_id;
        $data = '';
        
        $type = InvItemType::select('*')
        ->where('inv_item_type.data_state','=',0)
        ->join('inv_item_category', 'inv_item_category.item_category_id', 'inv_item_type.item_category_id')
        ->join('inv_item_stock', 'inv_item_type.item_type_id', 'inv_item_stock.item_type_id')
        ->where('inv_item_stock.item_category_id', $item_category_id)
        ->where('inv_item_stock.warehouse_id', 6)
        ->get();

        $data .= "<option value=''>--Choose One--</option>";
        foreach ($type as $mp) {
            $data .= "<option value='$mp[item_stock_id]'>$mp[item_type_name]".'-'."$mp[item_batch_number]</option>\n";
        }

        return $data;
    }

    public function getInvItemTypeIdQuotation(Request $request)
    {
        $item_stock_id = $request->item_stock_id;
        // $data = '';
        
        $type = InvItemStock::select('*')
        ->where('inv_item_stock.data_state','=',0)
        ->where('inv_item_stock.item_stock_id', $item_stock_id)
        ->where('inv_item_stock.warehouse_id', 6)
        ->first();

        return $type['item_type_id'];
    }

}
