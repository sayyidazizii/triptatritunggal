<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Models\CoreCustomer;
use App\Models\SalesQuotation;
use App\Models\SalesQuotationItem;
use App\Models\InvWarehouse;
use App\Models\CoreSupplier;
use App\Models\InvItemCategory;
use App\Models\InvItemUnit;
use App\Models\InvItemType;
use Illuminate\Support\Facades\Session;

class SalesQuotationApprovalController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        Session::put('editarraystate', 0);
        Session::forget('salesquotationitem');

        $salesquotation = SalesQuotation::where('data_state','=',0)
        ->where('approved', 0)
        ->get();

        return view('content/SalesQuotation/ListApproveSalesQuotation',compact('salesquotation')); 
    }

    public function approveSalesQuotation($sales_quotation_id){
        $salesquotation= SalesQuotation::where('data_state',0)
        ->where('sales_quotation_id', $sales_quotation_id)
        ->first();

        $salesquotationitem= SalesQuotationItem::where('data_state',0)
        ->where('sales_quotation_id', $sales_quotation_id)
        ->get();

        return view('content/SalesQuotation/FormApproveSalesQuotation',compact('salesquotationitem', 'salesquotation', 'sales_quotation_id'));
    }


    public function processApproveSalesQuotation(Request $request){
        $sales_quotation_id = $request->sales_quotation_id;
        $salesquotation = SalesQuotation::findOrFail($sales_quotation_id);
        $salesquotation->approved = 1;
        $salesquotation->save();

        $msg = 'Approve Sales quotation Berhasil';
        return redirect('/sales-quotation-approval')->with('msg',$msg);
    }

    public function processDisapproveSalesQuotation(Request $request){
        $sales_quotation_id = $request->sales_quotation_id;
        $salesquotation     = SalesQuotation::findOrFail($sales_quotation_id);
        $salesquotation->approved = 2;
        $salesquotation->save();

        $msg = 'Disapprove Sales quotation Berhasil';
        return redirect('/sales-quotation-approval')->with('msg',$msg);
    }

    public function getDiscountNota($sales_quotation_id){
        $salesquotationitem = SalesQuotationItem::join('sales_quotation', 'sales_quotation.sales_quotation_id', '=', 'sales_quotation_item.sales_quotation_id')
        ->where('sales_quotation_item.data_state', 0)
        ->where('sales_quotation_item.sales_quotation_id', $sales_quotation_id)
        ->first();

        return $salesquotationitem['discount_amount']?? '0';
    }

    public function getDiscountNotaNominal($sales_quotation_id){
        $salesquotationitem = SalesQuotationItem::join('sales_quotation', 'sales_quotation.sales_quotation_id', '=', 'sales_quotation_item.sales_quotation_id')
        ->where('sales_quotation_item.data_state', 0)
        ->where('sales_quotation_item.sales_quotation_id', $sales_quotation_id)
        ->first();

        return $salesquotationitem['subtotal_after_discount'];
    }

    public function getPPNOut($sales_quotation_id){
        $salesquotationitem = SalesQuotationItem::join('sales_quotation', 'sales_quotation.sales_quotation_id', '=', 'sales_quotation_item.sales_quotation_id')
        ->where('sales_quotation_item.data_state', 0)
        ->where('sales_quotation_item.sales_quotation_id', $sales_quotation_id)
        ->first();

        return $salesquotationitem['ppn_out_amount'];
    }

    public function getAmountAfterPPN_Out($sales_quotation_id){
        $salesquotationitem = SalesQuotationItem::join('sales_quotation', 'sales_quotation.sales_quotation_id', '=', 'sales_quotation_item.sales_quotation_id')
        ->where('sales_quotation_item.data_state', 0)
        ->where('sales_quotation_item.sales_quotation_id', $sales_quotation_id)
        ->first();

        return $salesquotationitem['subtotal_after_ppn_out'];
    }

    public function getItemCategoryName($item_category_id){
        $itemcategory = InvItemCategory::where('data_state', 0)
        ->where('item_category_id', $item_category_id)
        ->first();

        return $itemcategory['item_category_name'];
    }

    public function getItemTypeName($item_type_id){
        $itemtype = InvItemType::where('data_state', 0)
        ->where('item_type_id', $item_type_id)
        ->first();

        return $itemtype['item_type_name'];
    }

    public function getItemUnitName($item_unit_id){
        $itemunit = InvItemUnit::where('data_state', 0)
        ->where('item_unit_id', $item_unit_id)
        ->first();

        return $itemunit['item_unit_name'];
    }

    public function getCoreSupplierName($supplier_id){
        $supplier = CoreSupplier::where('data_state', 0)
        ->where('supplier_id', $supplier_id)
        ->first();

        return $supplier['supplier_name'];
    }

    public function getInvWarehouseName($warehouse_id){
        $warehouse = InvWarehouse::where('data_state', 0)
        ->where('warehouse_id', $warehouse_id)
        ->first();

        return $warehouse['warehouse_name'];
    }

    public function getCoreCustomerName($customer_id){
        $customer = CoreCustomer::where('data_state', 0)
        ->where('customer_id', $customer_id)
        ->first();

        return $customer['customer_name'];
    }
}
