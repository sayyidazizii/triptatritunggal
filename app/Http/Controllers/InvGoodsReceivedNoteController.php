<?php

namespace App\Http\Controllers;

use App\Models\AcctAccount;
use App\Models\InvItemType;
use App\Models\InvItemUnit;
use App\Models\CoreSupplier;
use App\Models\InvItemStock;
use App\Models\InvWarehouse;
use Illuminate\Http\Request;
use App\Models\PurchaseOrder;
use App\Helpers\JournalHelper;
use App\Models\InvItemCategory;
use App\Models\PreferenceCompany;
use App\Models\PurchaseOrderItem;
use App\Models\AcctAccountSetting;
use App\Models\AcctJournalVoucher;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;
use App\Models\InvGoodsReceivedNote;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\AcctJournalVoucherItem;
use App\Providers\RouteServiceProvider;
use Illuminate\Support\Facades\Session;
use App\Models\InvGoodsReceivedNoteItem;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\PublicController;
use App\Models\PurchaseOrderItemTemporary;
use App\Models\PreferenceTransactionModule;

class InvGoodsReceivedNoteController extends Controller
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
        if(!Session::get('start_date')){
            $start_date     = date('Y-m-d');
        }else{
            $start_date = Session::get('start_date');
        }

        if(!Session::get('end_date')){
            $end_date     = date('Y-m-d');
        }else{
            $end_date = Session::get('end_date');
        }

        $goodsreceivednote = InvGoodsReceivedNote::where('data_state', '=', 0)
        ->where('goods_received_note_date', '>=', $start_date)
        ->where('goods_received_note_date', '<=', $end_date)
        ->get();

        $preference_company = PreferenceCompany::select('account_inventory_trade_id')->first();

        return view('content/InvGoodsReceivedNote/ListInvGoodsReceivedNote',compact('preference_company', 'goodsreceivednote', 'start_date', 'end_date'));
    }

    public function filterInvGoodsReceivedNote(Request $request){
        $start_date     = $request->start_date;
        $end_date       = $request->end_date;

        Session::put('start_date', $start_date);
        Session::put('end_date', $end_date);

        return redirect('/goods-received-note');
    }

    public function resetFilterInvGoodsReceivedNote(){
        Session::forget('start_date');
        Session::forget('end_date');

        return redirect('/goods-received-note');
    }

    public function searchPurchaseOrder()
    {
        Session::forget('purchaseorderitem');

        $purchaseorder = PurchaseOrder::select('purchase_order_item.*','purchase_order.*')
        ->where('purchase_order_item.data_state','=',0)
        ->where('purchase_order.approved','=',1)
        ->join('purchase_order_item','purchase_order.purchase_order_id','purchase_order_item.purchase_order_id')
        ->where('purchase_order_item.quantity_outstanding', '>', 0)
        ->get();

        return view('content/InvGoodsReceivedNote/SearchPurchaseOrder', compact('purchaseorder'));
    }

    public function addInvGoodsReceivedNote($purchase_order_id)
    {
        $purchaseorder = PurchaseOrder::where('purchase_order.data_state', 0)
        ->where('purchase_order.purchase_order_id', $purchase_order_id)
        ->join('purchase_order_item','purchase_order.purchase_order_id','purchase_order_item.purchase_order_id')
        ->where('purchase_order_item.quantity_outstanding', '>', 0)
        ->first();

        $purchaseorderitem = PurchaseOrderItem::where('data_state', 0)
        ->where('purchase_order_id', $purchase_order_id)
        ->where('purchase_order_item.quantity_outstanding', '>', 0)
        ->get()->toArray();

        $purchaseorderitem_temporary = Session::get('purchaseorderitem');

        if($purchaseorderitem_temporary == null){
            $merge_data = $purchaseorderitem;
        }else{
            $merge_data = array_merge($purchaseorderitem, $purchaseorderitem_temporary);
            $key_type = array_column($merge_data, 'item_type_id');
            $key_qty= array_column($merge_data, 'quantity');
            array_multisort($key_type, SORT_ASC, $merge_data, SORT_DESC, $merge_data);
        }

        $add_type_purchaseorderitem = PurchaseOrderItem::where('purchase_order_item.data_state', 0)
        ->where('purchase_order_id', $purchase_order_id)
        ->join('inv_item_type', 'inv_item_type.item_type_id', '=', 'purchase_order_item.item_type_id')
        ->join('inv_item_unit', 'inv_item_unit.item_unit_id', '=', 'purchase_order_item.item_unit_id')
        ->pluck('item_type_name', 'purchase_order_item.purchase_order_item_id');

        $add_unit_purchaseorderitem = PurchaseOrderItem::where('purchase_order_item.data_state', 0)
        ->where('purchase_order_id', $purchase_order_id)
        ->join('inv_item_type', 'inv_item_type.item_type_id', '=', 'purchase_order_item.item_type_id')
        ->join('inv_item_unit', 'inv_item_unit.item_unit_id', '=', 'purchase_order_item.item_unit_id')
        ->pluck('item_unit_name', 'purchase_order_item.item_unit_id');

        $null_add_purchaseorderitem = Session::get('purchase_order_item_id');
        $null_add_unit_purchaseorderitem = Session::get('item_unit_id');

        return view('content/InvGoodsReceivedNote/FormAddInvGoodsReceivedNote',compact('merge_data', 'purchaseorderitem_temporary', 'purchaseorder', 'purchaseorderitem', 'add_type_purchaseorderitem', 'null_add_purchaseorderitem', 'add_unit_purchaseorderitem', 'null_add_unit_purchaseorderitem'));
    }

    public function detailInvGoodsReceivedNote($goods_received_note_id)
    {
        $invgoodsreceivednote = InvGoodsReceivedNote::where('data_state', 0)
        ->where('goods_received_note_id', $goods_received_note_id)
        ->first();

        $invgoodsreceivednoteitem = InvGoodsReceivedNoteItem::where('data_state', 0)
        ->where('goods_received_note_id', $goods_received_note_id)
        ->get();

        return view('content/InvGoodsReceivedNote/FormDetailInvGoodsReceivedNote',compact('invgoodsreceivednote', 'invgoodsreceivednoteitem'));
    }

    public function voidInvGoodsReceivedNote($goods_received_note_id)
    {
        $invgoodsreceivednote = InvGoodsReceivedNote::where('data_state', 0)
        ->where('goods_received_note_id', $goods_received_note_id)
        ->first();

        $invgoodsreceivednoteitem = InvGoodsReceivedNoteItem::where('data_state', 0)
        ->where('goods_received_note_id', $goods_received_note_id)
        ->get();

        return view('content/InvGoodsReceivedNote/FormVoidInvGoodsReceivedNote',compact('invgoodsreceivednote', 'invgoodsreceivednoteitem', 'goods_received_note_id'));
    }

    public function processVoidInvGoodsReceivedNote($goods_received_note_id)
    {


        $goodsreceivednote = InvGoodsReceivedNote::findOrFail($goods_received_note_id);
        $goodsreceivednote->data_state = 1;
        $goodsreceivednote->save();

        $goodsreceivednoteitem = InvGoodsReceivedNoteItem::where('data_state', 0)
        ->where('goods_received_note_id', $goods_received_note_id)
        ->get();

        foreach($goodsreceivednoteitem as $item){
            $receivednoteitem = InvGoodsReceivedNoteItem::findOrFail($item['goods_received_note_item_id']);
            $receivednoteitem->data_state = 1;
            $receivednoteitem->save();

            $purchaseorderitem = PurchaseOrderItem::findOrFail($item['purchase_order_item_id']);
            $purchaseorderitem->quantity_outstanding = $purchaseorderitem['quantity_outstanding'] + $item['quantity'];
            $purchaseorderitem->quantity_received    = $purchaseorderitem['quantity_received'] - $item['quantity'];
            $purchaseorderitem->save();
        }

        $itemstock = InvItemStock::where('goods_received_note_id', $goods_received_note_id)->get();
        foreach($itemstock as $item){
            $stock = InvItemStock::where('item_stock_id', $item['item_stock_id'])->first();
            $stock->data_state = 1;
            $stock->save();
        }

        $msg = 'Hapus Penerimaan Barang Berhasil';
        return redirect('/goods-received-note')->with('msg',$msg);
    }

    public function detailPurchaseOrder($purchase_order_id)
    {
        $purchaseorder= PurchaseOrder::where('data_state',0)
        ->where('purchase_order_id', $purchase_order_id)
        ->first();

        $purchaseorderitem= PurchaseOrderItem::where('data_state',0)
        ->where('purchase_order_id', $purchase_order_id)
        ->get();

        return view('content/PurchaseOrder/FormDetailPurchaseOrder',compact('purchaseorderitem', 'purchaseorder'));
    }

    public function getItemCategoryName($item_category_id){
        $itemcategory = InvItemCategory::where('data_state', 0)
        ->where('item_category_id', $item_category_id)
        ->first();

        if($itemcategory == null){
            return "-";
        }

        return $itemcategory['item_category_name'];
    }

    public function getItemTypeName($item_type_id){
        $itemtype = InvItemType::where('data_state', 0)
        ->where('item_type_id', $item_type_id)
        ->first();

        if($itemtype == null){
            return "-";
        }

        return $itemtype['item_type_name'];
    }

    public function getItemUnitName($item_unit_id){
        $itemunit = InvItemUnit::where('data_state', 0)
        ->where('item_unit_id', $item_unit_id)
        ->first();

        if($itemunit == null){
            return "-";
        }

        return $itemunit['item_unit_name'];
    }

    public function getCoreSupplierName($supplier_id){
        $supplier = CoreSupplier::where('data_state', 0)
        ->where('supplier_id', $supplier_id)
        ->first();

        if($supplier == null){
            return "-";
        }

        return $supplier['supplier_name'];
    }

    public function getInvWarehouseName($warehouse_id){
        $warehouse = InvWarehouse::where('data_state', 0)
        ->where('warehouse_id', $warehouse_id)
        ->first();

        if($warehouse == null){
            return "-";
        }

        return $warehouse['warehouse_name'];
    }

    public function getInvItemCategoryName($item_category_id){
        $itemcategory = InvItemCategory::where('data_state', 0)
        ->where('item_category_id', $item_category_id)
        ->first();

        if($itemcategory == null){
            return "-";
        }
        return $itemcategory['item_category_name'];
    }

    public function getInvItemTypeName($item_type_id){
        $itemtype = InvItemType::where('data_state', 0)
        ->where('item_type_id', $item_type_id)
        ->first();
        if($itemtype == null){
            return "-";
        }
        return $itemtype['item_type_name'];
    }

    public function getInvItemUnitName($item_unit_id){
        $itemunit = InvItemUnit::where('data_state', 0)
        ->where('item_unit_id', $item_unit_id)
        ->first();

        if($itemunit == null){
            return "-";
        }

        return $itemunit['item_unit_name'];
    }

    public function getPurchaseOrderNo($purchase_order_id){
        $purchaseorder = PurchaseOrder::where('data_state', 0)
        ->where('purchase_order_id', $purchase_order_id)
        ->first();

        if($purchaseorder == null){
            return "-";
        }

        return $purchaseorder['purchase_order_no'];
    }

    public function getPurchaseOrderDate($purchase_order_id){
        $purchaseorder = PurchaseOrder::where('data_state', 0)
        ->where('purchase_order_id', $purchase_order_id)
        ->first();

        if($purchaseorder == null){
            return "-";
        }

        return $purchaseorder['purchase_order_date'];
    }

    public function processAddInvGoodsReceivedNote(Request $request)
    {
        $purchaseorderitem_temporary = Session::get('purchaseorderitem');

        $fields = $request->validate([
            'purchase_order_id'         => 'required',
            'goods_received_note_date'  => 'required',
            'supplier_id'               => 'required',
            'warehouse_id'              => 'required',
        ]);

        $fileNameToStore = '';

        try {
            DB::beginTransaction();

            // Handle receipt image upload
            if ($request->hasFile('receipt_image')) {
                $filenameWithExt = $request->file('receipt_image')->getClientOriginalName();
                $filename = pathinfo($filenameWithExt, PATHINFO_FILENAME);
                $extension = $request->file('receipt_image')->getClientOriginalExtension();
                $fileNameToStore = $filename . '_' . time() . '.' . $extension;
                $path = $request->file('receipt_image')->storeAs('public/receipt', $fileNameToStore);
            }

            // Create Goods Received Note
            $invgoodsreceivednote = InvGoodsReceivedNote::create([
                'goods_received_note_date' => $fields['goods_received_note_date'],
                'purchase_order_id' => $fields['purchase_order_id'],
                'supplier_id' => $fields['supplier_id'],
                'warehouse_id' => $fields['warehouse_id'],
                'goods_received_note_remark' => $request->goods_received_note_remark,
                'faktur_no' => $request->faktur_no,
                'subtotal_item' => $request->quantity_received_total,
                'receipt_image' => $fileNameToStore,
                'created_id' => Auth::id(),
            ]);

            $temprequest = $request->all();
            $total_no = $request->total_no;
            $total_received_item = $temprequest['quantity_received_total'];

            // Process the received items
            for ($i = 1; $i <= $total_no; $i++) {
                $invgoodsreceivednoteitem = InvGoodsReceivedNoteItem::create([
                    'goods_received_note_id' => $invgoodsreceivednote->goods_received_note_id,
                    'purchase_order_id' => $temprequest['purchase_order_id_' . $i],
                    'purchase_order_item_id' => $temprequest['purchase_order_item_id_' . $i],
                    'item_category_id' => $temprequest['item_category_id_' . $i],
                    'item_type_id' => $temprequest['item_type_id_' . $i],
                    'item_unit_id' => $temprequest['item_unit_id_' . $i],
                    'quantity' => $temprequest['quantity_received_' . $i],
                    'quantity_ordered' => $temprequest['quantity_received_' . $i],
                    'quantity_received' => $temprequest['quantity_received_' . $i],
                    'created_id' => Auth::id(),
                ]);

                // Update the Purchase Order item
                $purchaseorderitem = PurchaseOrderItem::findOrFail($invgoodsreceivednoteitem->purchase_order_item_id);
                $purchaseorderitem->quantity_outstanding -= $invgoodsreceivednoteitem->quantity;
                $purchaseorderitem->quantity_received += $invgoodsreceivednoteitem->quantity;
                $purchaseorderitem->save();

                // Handle item stock
                $item_type = InvItemType::where('data_state', 0)
                    ->where('item_type_id', $invgoodsreceivednoteitem->item_type_id)
                    ->first();

                $item_unit_id_default = $item_type->item_unit_1;
                $quantity_unit = $invgoodsreceivednoteitem->quantity_received * ($item_type->{'item_quantity_default_' . $invgoodsreceivednoteitem->item_unit_id} ?? 1);

                $invitemstock = [
                    'goods_received_note_id' => $invgoodsreceivednote->goods_received_note_id,
                    'goods_received_note_item_id' => $invgoodsreceivednoteitem->goods_received_note_item_id,
                    'item_stock_date' => $invgoodsreceivednote->goods_received_note_date,
                    'warehouse_id' => $fields['warehouse_id'],
                    'item_total' => $temprequest['quantity_received_' . $i],
                    'item_unit_id_default' => $item_unit_id_default,
                    'item_unit_cost' => $temprequest['item_unit_cost_' . $i],
                    'quantity_unit' => $quantity_unit,
                    'purchase_order_item_id' => $temprequest['purchase_order_item_id_' . $i],
                    'item_category_id' => $temprequest['item_category_id_' . $i],
                    'item_type_id' => $temprequest['item_type_id_' . $i],
                    'item_unit_id' => $temprequest['item_unit_id_' . $i],
                    'created_id' => Auth::id(),
                ];

                $existing_item_stock = InvItemStock::where('item_type_id', $invitemstock['item_type_id'])->first();

                if (!$existing_item_stock) {
                    InvItemStock::create($invitemstock);
                } else {
                    $existing_item_stock->item_total += $invitemstock['item_total'];
                    $existing_item_stock->quantity_unit += $invitemstock['quantity_unit'];
                    $existing_item_stock->item_unit_cost = $invitemstock['item_unit_cost'];
                    $existing_item_stock->save();
                }
            }

            $purchaseorder              = PurchaseOrder::findOrFail($invgoodsreceivednote['purchase_order_id']);
            $total_amount               = $purchaseorder['total_amount'];
            $subtotal_after_ppn_in      = $purchaseorder['subtotal_after_ppn_in'];
            $ppn_amount                 = $purchaseorder['ppn_in_amount'];
            // Prepare the journal data for the Goods Received Note
            $transaction_module_code = "GRN";
            $transactionmodule = PreferenceTransactionModule::where('transaction_module_code', $transaction_module_code)->first();
            $transaction_module_id = $transactionmodule['transaction_module_id'];
            $journal_voucher_period = date("Ym", strtotime($invgoodsreceivednote['goods_received_note_date']));

            //*account
            $account_cash_purchase_id = AcctAccountSetting::where('account_setting_name', 'account_cash_purchase_id')->first();
            $purchase_cash_account_id = AcctAccountSetting::where('account_setting_name', 'purchase_cash_account_id')->first();

            $account_credit_purchase_id = AcctAccountSetting::where('account_setting_name', 'account_credit_purchase_id')->first();
            $purchase_credit_account_id = AcctAccountSetting::where('account_setting_name', 'purchase_credit_account_id')->first();

            $purchase_tax_account_id = AcctAccountSetting::where('account_setting_name', 'purchase_tax_account_id')->first();


            $data_journal = [
                'branch_id' => 1,
                'journal_voucher_period' => $journal_voucher_period,
                'journal_voucher_date' => $invgoodsreceivednote['goods_received_note_date'],
                'goods_received_note_id' => $invgoodsreceivednote['goods_received_note_id'],
                'sales_id'   => null,
                'journal_voucher_title' => 'Pembelian ' . $invgoodsreceivednote['goods_received_note_no'],
                'journal_voucher_no' => $invgoodsreceivednote['goods_received_note_no'],
                'journal_voucher_description' => 'Pembelian ' . $purchaseorder['purchase_order_no'],
                'transaction_module_id' => $transaction_module_id,
                'transaction_module_code' => $transaction_module_code,
                'transaction_journal_id' => $invgoodsreceivednote['goods_received_note_id'],
                'transaction_journal_no' => $invgoodsreceivednote['goods_received_note_no'],
                'created_id' => Auth::id(),
            ];

            // Journal items
            if($purchaseorder['payment_method'] == 1){
                $journal_items = [
                    [
                        'account_id' => $purchase_cash_account_id['account_id'],
                        'description' => $data_journal['journal_voucher_description'],
                        'amount' => $total_amount,
                        'debit' => true,
                        'account_status' => $purchase_cash_account_id['account_setting_status'],
                    ],
                    [
                        'account_id' => $account_cash_purchase_id['account_id'],
                        'description' => $data_journal['journal_voucher_description'],
                        'amount' => $subtotal_after_ppn_in,
                        'debit' => false,
                        'account_status' => $account_cash_purchase_id['account_setting_status'],
                    ],
                    [
                        'account_id' => $purchase_tax_account_id['account_id'],
                        'description' => $data_journal['journal_voucher_description'],
                        'amount' => $ppn_amount,
                        'debit' => true,
                        'account_status' => $purchase_tax_account_id['account_setting_status'],
                    ],
                ];
            }else{
                $journal_items = [
                    [
                        'account_id' => $purchase_credit_account_id['account_id'],
                        'description' => $data_journal['journal_voucher_description'],
                        'amount' => $total_amount,
                        'debit' => true,
                        'account_status' => $purchase_credit_account_id['account_setting_status'],
                    ],
                    [
                        'account_id' => $account_credit_purchase_id['account_id'],
                        'description' => $data_journal['journal_voucher_description'],
                        'amount' => $subtotal_after_ppn_in,
                        'debit' => false,
                        'account_status' => $account_credit_purchase_id['account_setting_status'],
                    ],
                    [
                        'account_id' => $purchase_tax_account_id['account_id'],
                        'description' => $data_journal['journal_voucher_description'],
                        'amount' => $ppn_amount,
                        'debit' => true,
                        'account_status' => $purchase_tax_account_id['account_setting_status'],
                    ],
                ];
            }


            // Journal creation remains unchanged
            JournalHelper::createJournal($data_journal, $journal_items);

            DB::commit();

            return redirect('/goods-received-note')->with('msg', 'Tambah Penerimaan Barang Berhasil');
        } catch (\Exception $e) {
            DB::rollBack();
            report($e);
            Log::error('Error in Tambah Penerimaan Barang: ' . $e->getMessage(), ['exception' => $e]);

            return redirect('/goods-received-note')->with('msg', 'Tambah Penerimaan Barang Gagal');
        }
    }

    public function kwitansiGoodsReceivedNote($goods_received_note_id){
        $goodsreceivednote = InvGoodsReceivedNote::findOrFail($goods_received_note_id);

        return response()->download(
            storage_path('app/public/receipt/'.$goodsreceivednote['receipt_image']),
            'kwitansi_'.$goodsreceivednote['goods_received_note_id'].'.png',
        );
    }

    public function addNewPurchaseOrderItem(Request $request)
    {
        $add_purchaseorderitem = PurchaseOrderItem::where('purchase_order_item.data_state', 0)
        ->where('purchase_order_item.purchase_order_item_id', $request['purchase_order_item_id'])
        ->first();

        $fields = $request->validate([
            'purchase_order_item_id'           => 'required',
            'quantity'                         => 'required',
            // 'item_unit_id'           => 'required',
        ]);

        $purchaseorderitem = array(
            'purchase_order_item_id'=>  $fields['purchase_order_item_id'],
            'purchase_order_id'     =>  $request['purchase_order_id'],
            'item_type_id'	        =>  $add_purchaseorderitem['item_type_id'],
            'quantity'	            =>  $fields['quantity'],
            'quantity_outstanding'  =>  $request['quantity'],
            'item_category_id'      =>  $add_purchaseorderitem['item_category_id'],
            'item_unit_cost'        =>  $add_purchaseorderitem['item_unit_cost'],
            'item_unit_id'          =>  $add_purchaseorderitem['item_unit_id'],
        );

        // dd($purchaseorderitem);

        $newpurchaseorderitem= Session::get('purchaseorderitem');
        if($newpurchaseorderitem!== null){
            array_push($newpurchaseorderitem, $purchaseorderitem);
            Session::put('purchaseorderitem', $newpurchaseorderitem);
        }else{
            $newpurchaseorderitem= [];
            array_push($newpurchaseorderitem, $purchaseorderitem);
            Session::push('purchaseorderitem', $purchaseorderitem);
        }

        return redirect()->back();
    }

    public function deleteNewPurchaseOrderItem($purchase_order_id)
    {
        Session::forget('purchaseorderitem');
        return redirect('goods-received-note/add/'. $purchase_order_id);
    }

    public function getNewPurchaseOrderItemId(){
        $purchaseorderitem_id = PurchaseOrderItem::where('data_state', 0)
        // ->where('purchase_order_item_id', $purchase_order_item_id)
        ->first();

        if($purchaseorderitem_id == null){
            return "-";
        }

        return $purchaseorderitem_id['purchase_order_item_id'];
    }
}
