<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\Models\InvItem;
use App\Models\CoreCity;
use App\Models\CoreExpedition;
use App\Models\CoreGrade;
use App\Models\CoreSupplier;
use App\Models\InvItemType;
use App\Models\InvItemCategory;
use App\Models\InvItemUnit;
use App\Models\InvItemStock;
use App\Models\InvWarehouse;
use App\Models\InvWarehouseLocation;
use App\Models\InvWarehouseTransfer;
use App\Models\InvWarehouseTransferItem;
use App\Models\InvWarehouseTransferType;
use App\Models\AcctAccount;
use App\Models\PurchaseInvoice;
use App\Models\PurchaseOrder;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\DB;
use stdClass;

class InvWarehouseTransferController extends Controller
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
        Session::forget('datawarehousetransferitem');
        Session::forget('warehousetransferelements');

        if(!Session::get('filterwarehousetransferstartdate')){
            $start_date     = date('Y-m-d');
        }else{
            $start_date     = Session::get('filterwarehousetransferstartdate');
        }

        if(!Session::get('filterwarehousetransferenddate')){
            $end_date       = date('Y-m-d');
        }else{
            $end_date       = Session::get('filterwarehousetransferenddate');
        }

        $warehousetransfer = InvWarehouseTransfer::where('warehouse_transfer_date', '>=', $start_date)
        ->where('data_state', 0)
        ->where('warehouse_transfer_date', '<=', $end_date)
        ->get();

        return view('content/InvWarehouseTransfer/ListInvWarehouseTransfer',compact('warehousetransfer','start_date', 'end_date'));
    }

    public function search(){
        $purchaseinvoice = PurchaseInvoice::where('data_state', 0)->get();

        return view('content/InvWarehouseTransfer/SearchPurchaseInvoice', compact('purchaseinvoice'));
    }

    public function addInvWarehouseTransfer(Request $request)
    {   
        $warehousetransferelements= Session::get('warehousetransferelements');
        $warehousetransferitem = Session::get('datawarehousetransferitem');     

        $invitemcategory = InvItemCategory::where('data_state','=',0)
        ->get()
        ->pluck('item_category_name','item_category_id');

        $invitemtype = [];
        
        $invitem = [];
        
        $invitemunit = InvItemUnit::where('data_state','=',0)
        ->get()
        ->pluck('item_unit_name', 'item_unit_id');

        $invwarehouse = InvWarehouse::where('data_state', 0)
        ->pluck('warehouse_name', 'warehouse_id');

        $expedition = CoreExpedition::where('data_state', 0)
        ->pluck('expedition_name', 'expedition_id');

        $warehousetransfertype = InvWarehouseTransferType::where('data_state', 0)
        ->pluck('warehouse_transfer_type_name', 'warehouse_transfer_type_id');

        $location = InvWarehouseLocation::where('inv_warehouse_location.data_state', 0 )
        ->join('core_city', 'core_city.city_id', 'inv_warehouse_location.city_id')
        ->pluck('city_name', 'warehouse_location_id');

        $city = CoreCity::where('data_state', 0)
        ->pluck('city_name', 'city_id');

        $status = array(
            1 => 'Active',
            2 => 'Non Active',
            3 => 'All',
        );

        return view('content/InvWarehouseTransfer/FormAddInvWarehouseTransfer', compact('invitemtype','invitemcategory', 'invitem', 'invitemunit', 'warehousetransferitem', 'invwarehouse', 'warehousetransfertype', 'warehousetransferelements', 'location', 'expedition', 'city', 'status'));
    }

    public function detailInvWarehouseTransfer($warehouse_transfer_id)
    {   
        $warehousetransferelements= Session::get('warehousetransferelements');

        $invitemcategory = InvItemCategory::where('data_state','=',0)
        ->get()
        ->pluck('item_category_name','item_category_id');

        $invitemtype = [];
        
        $invitem = [];
        
        $invitemunit = InvItemUnit::where('data_state','=',0)
        ->get()
        ->pluck('item_unit_name', 'item_unit_id');

        $invwarehouse = InvWarehouse::where('data_state', 0)
        ->pluck('warehouse_name', 'warehouse_id');

        $warehousetransfertype = InvWarehouseTransferType::where('data_state', 0)
        ->pluck('warehouse_transfer_type_name', 'warehouse_transfer_type_id');

        $warehousetransfer = InvWarehouseTransfer::findOrFail($warehouse_transfer_id);

        $warehousetransferitem = InvWarehouseTransferItem::where('data_state', 0)
        ->where('warehouse_transfer_id', $warehouse_transfer_id)
        ->get();

        return view('content/InvWarehouseTransfer/FormDetailInvWarehouseTransfer', compact('invitemtype','invitemcategory', 'invitem', 'invitemunit', 'warehousetransferitem', 'invwarehouse', 'warehousetransfertype', 'warehousetransferelements', 'warehousetransfer', 'warehouse_transfer_id'));
    }

    public function voidInvWarehouseTransfer($warehouse_transfer_id)
    {   
        $warehousetransferelements= Session::get('warehousetransferelements');

        $invitemcategory = InvItemCategory::where('data_state','=',0)
        ->get()
        ->pluck('item_category_name','item_category_id');

        $invitemtype = [];
        
        $invitem = [];
        
        $invitemunit = InvItemUnit::where('data_state','=',0)
        ->get()
        ->pluck('item_unit_name', 'item_unit_id');

        $invwarehouse = InvWarehouse::where('data_state', 0)
        ->pluck('warehouse_name', 'warehouse_id');

        $warehousetransfertype = InvWarehouseTransferType::where('data_state', 0)
        ->pluck('warehouse_transfer_type_name', 'warehouse_transfer_type_id');

        $warehousetransfer = InvWarehouseTransfer::findOrFail($warehouse_transfer_id);

        $warehousetransferitem = InvWarehouseTransferItem::where('data_state', 0)
        ->where('warehouse_transfer_id', $warehouse_transfer_id)
        ->get();

        return view('content/InvWarehouseTransfer/FormVoidInvWarehouseTransfer', compact('invitemtype','invitemcategory', 'invitem', 'invitemunit', 'warehousetransferitem', 'invwarehouse', 'warehousetransfertype', 'warehousetransferelements', 'warehousetransfer', 'warehouse_transfer_id'));
    }

    public function processVoidInvWarehouseTransfer(Request $request)
    {
        $warehousetransfer = InvWarehouseTransfer::findOrFail($request->warehouse_transfer_id);
        $warehousetransfer->data_state = 1;

        if($warehousetransfer->save()){
            $warehousetransferitem = InvWarehouseTransferItem::where('data_state', 0)
            ->where('warehouse_transfer_id', $request->warehouse_transfer_id)
            ->get();

            foreach($warehousetransferitem as $item){
                $itemstock = InvItemStock::where('data_state', 0)
                ->where('item_stock_id', $item['item_stock_id'])
                ->first();

                $itemunitfirst  = InvItemUnit::where('item_unit_id', $itemstock['item_unit_id'])->first();
                $itemunitsecond = InvItemUnit::where('item_unit_id', $item['item_unit_id'])->first();

                $item_total = $itemstock['item_total'] + ($item['quantity'] * $itemunitsecond['item_unit_default_quantity'] / $itemunitfirst['item_unit_default_quantity']);

                $itemstock->item_total   = $item_total;
                $itemstock->warehouse_id = $warehousetransfer['warehouse_transfer_from'];
                $itemstock->save();
            }
            $msg = 'Hapus Transfer Gudang Berhasil';
            return redirect('/warehouse-transfer')->with('msg',$msg);
        }else{
            $msg = 'Hapus Transfer Gudang Gagal';
            return redirect('/warehouse-transfer/void/'.$request->warehouse_transfer_id)->with('msg',$msg);
        }
    }

    public function processAddInvWarehouseTransfer(Request $request)
    {
        $fields = $request->validate([
            'warehouse_transfer_date'   => 'required',
            'warehouse_from_id'         => 'required',
            'warehouse_to_id'           => 'required',
        ]);

        $warehousetransfer = InvWarehouseTransfer::create([  
            'warehouse_transfer_date'       => $fields['warehouse_transfer_date'],
            'warehouse_transfer_from'       => $request->warehouse_from_id,
            'warehouse_transfer_to'         => $request->warehouse_to_id,
            'warehouse_transfer_remark'     => $request->warehouse_transfer_remark,
            'warehouse_transfer_type_id'    => $request->warehouse_transfer_type_id,
            'expedition_id'                 => $request->expedition_id,
            'created_id'                    => Auth::id()
        ]);

        $warehousetransferitem = Session::get('datawarehousetransferitem');
        $lastwarehousetransfer = InvWarehouseTransfer::orderBy('created_at', 'DESC')->first();

        foreach($warehousetransferitem as $val){
            $dataitem = InvWarehouseTransferItem::create([  
                'warehouse_transfer_id'             => $lastwarehousetransfer['warehouse_transfer_id'],
                'item_category_id'                  => $val['item_category_id'],
                'item_type_id'                      => $val['item_type_id'],
                'item_id'                           => $val['item_id'],
                'item_unit_id'                      => $val['item_unit_id'],
                'item_stock_id'                     => $val['item_batch_number'],
                'quantity'                          => $val['quantity'],
                'warehouse_transfer_item_remark'    => $val['warehouse_transfer_item_remark'],
                'created_id'                        => Auth::id()
            ]);

            $itemstock = InvItemStock::where('data_state', 0)
            ->where('item_stock_id', $val['item_batch_number'])
            ->first();

            $itemunitfirst  = InvItemUnit::where('item_unit_id', $itemstock['item_unit_id'])->first();
            $itemunitsecond = InvItemUnit::where('item_unit_id', $val['item_unit_id'])->first();

            $item_total = $itemstock['item_total'] - ($val['quantity'] * $itemunitsecond['item_unit_default_quantity'] / $itemunitfirst['item_unit_default_quantity']);

            $itemstock->item_total = $item_total;
            if($item_total <= 0){
                $itemstock->data_state = 1;
            }
            $itemstock->save();

        }

        $msg = 'Tambah Transfer Gudang Berhasil';
        return redirect('/warehouse-transfer')->with('msg',$msg);
    }
    
    public function processAddArrayWarehouseTransferItem(Request $request)
    {
        $quantity = $request->quantity;
        $unit = InvItemUnit::where('item_unit_id', $request->item_unit_id)->first();

        $warehousetransferitem = array(
            'item_category_id'                  => $request->item_category_id,
            'item_type_id'                      => $request->item_type_id,
            'item_id'                           => $request->item_id,
            'item_unit_id'                      => $request->item_unit_id,
            'quantity'                          => $request->quantity,
            'item_batch_number'                 => $request->item_batch_number,
            'warehouse_transfer_item_remark'    => $request->warehouse_transfer_item_remark,
        );

        $lastwarehousetransferitem = Session::get('datawarehousetransferitem');
        if($lastwarehousetransferitem !== null){
            array_push($lastwarehousetransferitem, $warehousetransferitem);
            Session::put('datawarehousetransferitem', $lastwarehousetransferitem);
        }else{
            $lastwarehousetransferitem = [];
            array_push($lastwarehousetransferitem, $warehousetransferitem);
            Session::push('datawarehousetransferitem', $warehousetransferitem);
        }
    }


    public function deleteArrayWarehouseTransferItem($record_id)
    {
        $arrayBaru			= array();
        $dataArrayHeader	= Session::get('datawarehousetransferitem');
        
        foreach($dataArrayHeader as $key=>$val){
            if($key != $record_id){
                $arrayBaru[$key] = $val;
            }
        }

        Session::forget('datawarehousetransferitem');
        Session::put('datawarehousetransferitem', $arrayBaru);

        return redirect('/warehouse-transfer/add/');
    }

    public function editInvItem($item_id)
    {
        $acctaccountcode            = AcctAccount::select('account_id', DB::raw('CONCAT(account_code, " - ", account_name) AS full_name'))
        ->where('acct_account.data_state','=','0')
        ->where('parent_account_status', 0)
        ->get()
        ->pluck('full_name','account_id');

        $invitem = InvItem::where('item_id',$item_id)
        ->first();

        $invgrade = CoreGrade::where('data_state','=',0)
        ->pluck('grade_name','grade_id');

        $invitemtype = InvItemType::where('data_state','=',0)
        ->where('item_category_id', $invitem['item_category_id'])
        ->pluck('item_type_name', 'item_type_id');

        $invitemcategory = InvItemCategory::where('data_state','=',0)->get()->pluck('item_category_name', 'item_category_id');

        return view('content/InvItem/FormEditInvItem',compact('invitem', 'item_id', 'invgrade', 'invitemtype', 'invitemcategory', 'acctaccountcode'));
    }

    public function processEditInvItem(Request $request)
    {
        $fields = $request->validate([
            'item_id'            => 'required',
            'grade_id'           => 'required',
            'item_type_id'       => 'required',
            'item_category_id'   => 'required',
        ]);

        $item = InvItem::findOrFail($fields['item_id']);
        $item->grade_id                         = $fields['grade_id'];
        $item->item_type_id                     = $fields['item_type_id'];
        $item->item_category_id                 = $fields['item_category_id'];
        $item->item_remark                      = $request->item_remark;
        $item->item_barcode                     = $request->item_barcode;
        $item->purchase_account_id              = $request->purchase_account_id;
        $item->purchase_return_account_id       = $request->purchase_return_account_id;
        $item->purchase_discount_account_id     = $request->purchase_discount_account_id;
        $item->sales_account_id                 = $request->sales_account_id;
        $item->sales_return_account_id          = $request->sales_return_account_id;
        $item->sales_discount_account_id        = $request->sales_discount_account_id;

        if($item->save()){
            $msg = 'Edit Transfer Gudang Berhasil';
            return redirect('/warehouse-transfer')->with('msg',$msg);
        }else{
            $msg = 'Edit Transfer Gudang Gagal';
            return redirect('/warehouse-transfer')->with('msg',$msg);
        }
    }

    public function filterInvWarehouseTransfer(Request $request){
        $start_date     = $request->start_date;
        $end_date       = $request->end_date;

        Session::put('filterwarehousetransferstartdate', $start_date);
        Session::put('filterwarehousetransferenddate', $end_date);

        return redirect('/warehouse-transfer');
    }

    public function resetFilterInvWarehouseTransfer(){
        Session::forget('filterwarehousetransferstartdate');
        Session::forget('filterwarehousetransferenddate');

        return redirect('/warehouse-transfer');
    }

    public function elements_add(Request $request){
        $warehousetransferelements= Session::get('warehousetransferelements');
        if(!$warehousetransferelements || $warehousetransferelements == ''){
            $warehousetransferelements['warehouse_transfer_date']     = '';
            $warehousetransferelements['warehouse_from_id']           = '';
            $warehousetransferelements['warehouse_to_id']             = '';
            $warehousetransferelements['warehouse_transfer_type_id']  = '';
            $warehousetransferelements['expedition_id']  = '';
            $warehousetransferelements['warehouse_transfer_remark']   = '';
        }
        $warehousetransferelements[$request->name] = $request->value;
        Session::put('warehousetransferelements', $warehousetransferelements);
    }

    public function deleteInvItem($item_id)
    {
        $item = InvItem::findOrFail($item_id);
        $item->data_state = 1;
        if($item->save())
        {
            $msg = 'Hapus Transfer Gudang Berhasil';
        }else{
            $msg = 'Hapus Transfer Gudang Gagal';
        }

        return redirect('/warehouse-transfer')->with('msg',$msg);
    }

    public function getProductCategoryName($item_category_id){
        $item = InvItemCategory::where('item_category_id',$item_category_id)->first();

        return $item['item_category_name'];
    }

    public function getProductTypeName($item_type_id){
        $item = InvItemType::where('item_type_id',$item_type_id)->first();

        return $item['item_type_name'];
    }

    public function getGradeName($grade_id){
        $item = CoreGrade::where('grade_id',$grade_id)->first();

        return $item['grade_name'];
    }

    public function getSupplierName($supplier_id){
        $item = CoreSupplier::where('supplier_id',$supplier_id)->first();

        return $item['supplier_name'];
    }

    public function getCoreExpeditionName($expedition_id){
        $item = CoreExpedition::where('expedition_id',$expedition_id)->first();

        return $item['expedition_name'];
    }

    public function getPurchaseOrderDate($purchase_order_id){
        $item = PurchaseOrder::where('purchase_order_id',$purchase_order_id)->first();

        return $item['purchase_order_date'];
    }

    public function getCoreType(Request $request){
        $item_category_id = $request->item_category_id;
        $data='';

        $type = InvItemType::where('item_category_id', $item_category_id)
        ->where('data_state','=',0)
        ->get();

        $data .= "<option value=''>--Choose One--</option>";
        foreach ($type as $mp){
            $data .= "<option value='$mp[item_type_id]'>$mp[item_type_name]</option>\n";	
        }

        return $data;
    }

    public function getCoreItem(Request $request){
        $item_category_id   = $request->item_category_id;
        $item_type_id       = $request->item_type_id;
        $data='';
        
        $itemcategoryname = InvItemCategory::where('item_category_id', $item_category_id)
        ->first();

        $itemtypename    = InvItemType::where('item_type_id', $item_type_id)
        ->first();

        $item = InvItem::select(DB::raw("inv_item.item_id, CONCAT(inv_item_category.item_category_name, ' ', inv_item_type.item_type_name, ' ', core_grade.grade_name) AS item_name"))
        ->join('inv_item_category', 'inv_item.item_category_id', 'inv_item_category.item_category_id')
        ->join('inv_item_type', 'inv_item.item_type_id', 'inv_item_type.item_type_id')
        ->join('core_grade', 'inv_item.grade_id', 'core_grade.grade_id')
        ->where('inv_item.item_category_id', $item_category_id)
        ->where('inv_item.item_type_id', $item_type_id)
        ->where('inv_item.data_state','=',0)
        ->get();

        $data .= "<option value=''>--Choose One--</option>";
            $data .= "<option value='0'>".$itemcategoryname['item_category_name'].' '.$itemtypename['item_type_name'].' No Grade'."</option>\n";
        foreach ($item as $mp){
            $data .= "<option value='$mp[item_id]'>$mp[item_name]</option>\n";	
        }

        return $data;
    }

    public function getItemBatchNumber(Request $request){
        $warehouse_from_id  = $request->warehouse_from_id;
        $item_category_id   = $request->item_category_id;
        $item_type_id       = $request->item_type_id;
        $item_id            = $request->item_id;
        $data               = '';

        $type = InvItemStock::where('item_category_id', $item_category_id)
        ->where('warehouse_id', $warehouse_from_id)
        ->where('item_type_id', $item_type_id)
        ->where('item_id', $item_id)
        ->where('data_state','=',0)
        ->get();

        $datas = new stdClass;

        $data .= "<option value=''>--Choose One--</option>";
        foreach ($type as $mp){
            $data .= "<option value='$mp[item_stock_id]'>$mp[item_batch_number]</option>\n";	
        }

        $itemunit = InvItem::where('item_id', $item_id)
        ->join('inv_item_unit', 'inv_item_unit.item_unit_id', 'inv_item.item_unit_id')
        ->where('inv_item.data_state', 0)
        ->first();

        $datas->data        = $data;
        $datas->itemunit    = $itemunit['item_unit_name'];

        return response()->json(json_encode($datas));
    }

    public function getItemBatchNumberDetail(Request $request){
        $item_stock_id  = $request->item_stock_id;
        $data='';

        $data = InvItemStock::where('item_stock_id', $item_stock_id)
        ->where('data_state', 0)
        ->first();

        $itemunit = InvItemUnit::where('item_unit_id', $data['item_unit_id'])
        ->where('data_state', 0)
        ->first();

        $datas = new stdClass;

        // return $data;
        
        $datas->data        = $data;
        $datas->itemunit    = $itemunit['item_unit_name'];

        return response()->json(json_encode($datas));
    }

    public function getItemCategoryName($item_category_id){
        $item = InvItemCategory::findOrFail($item_category_id);

        return $item['item_category_name'];
    }

    public function getInvWarehouseName($warehouse_id){
        $item = InvWarehouse::where('warehouse_id', $warehouse_id)->first();

        return $item['warehouse_name'];
    }

    public function getInvWarehouseTransferTypeName($warehouse_transfer_type_id){
        $item = InvWarehouseTransferType::where('warehouse_transfer_type_id', $warehouse_transfer_type_id)->first();

        return $item['warehouse_transfer_type_name'];
    }

    public function getItemTypeName($item_type_id){
        $item = InvItemType::findOrFail($item_type_id);

        return $item['item_type_name'];
    }

    public function getItemName($item_id){
        $invitem = InvItem::select('inv_item.item_id', DB::raw('CONCAT(inv_item_category.item_category_name, " ", inv_item_type.item_type_name, " ", core_grade.grade_name) AS item_name'))
        ->join('inv_item_category', 'inv_item_category.item_category_id', 'inv_item.item_category_id')
        ->join('inv_item_type', 'inv_item_type.item_type_id', 'inv_item.item_type_id')
        ->join('core_grade', 'core_grade.grade_id', 'inv_item.grade_id')
        ->where('item_id', $item_id)
        ->where('inv_item.data_state','=',0)
        ->first();

        return $invitem['item_name'];
    }

    public function getItemNameItemId0($item_id, $item_type_id, $item_category_id){
        $invitemcategory    = InvItemCategory::findOrFail($item_category_id);
        $invitemtype        = InvItemType::findOrFail($item_type_id);

        return $invitemcategory['item_category_name'].' '.$invitemtype['item_type_name'].' No Grade';
    }

    public function getItemUnitName($item_unit_id){
        $item = InvItemUnit::findOrFail($item_unit_id);

        return $item['item_unit_name'];
    }

    public function getItemBatchNumberName($item_stock_id){
        $item = InvItemStock::findOrFail($item_stock_id);

        return $item['item_batch_number'];
    }

    public function addWarehouseTransferType(Request $request){
        $warehouse_transfer_type_name    = $request->warehouse_transfer_type_name;
        $warehouse_transfer_type_remark  = $request->warehouse_transfer_type_remark;
        $data='';
        
        $warehousetransfertype = InvWarehouseTransferType::create([  
            'warehouse_transfer_type_name'     => $warehouse_transfer_type_name,
            'warehouse_transfer_type_remark'   => $warehouse_transfer_type_remark,
            'created_id'                       => Auth::id()
        ]);

        $warehousetransfertype = InvWarehouseTransferType::where('data_state', 0)
        ->get();

        $data .= "<option value=''>--Choose One--</option>";
        foreach ($warehousetransfertype as $mp){
            $data .= "<option value='$mp[warehouse_transfer_type_id]'>$mp[warehouse_transfer_type_name]</option>\n";	
        }

        return $data;
    }
}
