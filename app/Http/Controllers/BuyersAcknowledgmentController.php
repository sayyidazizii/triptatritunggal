<?php

namespace App\Http\Controllers;

use Log;
use App\Models\SalesOrder;
use App\Models\AcctAccount;
use App\Models\InvItemType;
use App\Models\InvItemStock;
use App\Models\InvWarehouse;
use Illuminate\Http\Request;
use App\Models\CoreExpedition;
use App\Models\SalesOrderItem;
use App\Models\SalesOrderReturn;
use App\Models\PreferenceCompany;
use App\Models\PurchaseOrderItem;
use App\Models\SalesDeliveryNote;
use App\Models\AcctJournalVoucher;
use App\Models\SalesDeliveryOrder;
use Illuminate\Support\Facades\DB;
use App\Models\BuyersAcknowledgment;
use App\Models\SalesOrderReturnItem;
use Illuminate\Support\Facades\Auth;
use App\Models\SalesDeliveryNoteItem;
use App\Models\AcctJournalVoucherItem;
use App\Models\SalesDeliveryOrderItem;
use Illuminate\Support\Facades\Session;
use App\Models\BuyersAcknowledgmentItem;
use App\Models\SalesDeliveryNoteItemStock;
use App\Models\PreferenceTransactionModule;

class BuyersAcknowledgmentController extends Controller
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

    public function index(){

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

        $buyers_acknowledgment = BuyersAcknowledgment::where('data_state', 0)
        ->where('buyers_acknowledgment_date', '>=', $start_date)
        ->where('buyers_acknowledgment_date', '<=', $end_date)
        ->get();
        return  view('content/CoreExpedition/BuyersAcknowledgment/ListBuyersAcknowledgment',compact('buyers_acknowledgment', 'end_date', 'start_date'));
    }

    public function filterBuyersAcknowledgment(Request $request){
        $start_date     = $request->start_date;
        $end_date       = $request->end_date;

        Session::put('start_date', $start_date);
        Session::put('end_date', $end_date);

        return redirect('/buyers-acknowledgment');
    }

    public function resetFilterReturnPDP_LostOnExpedition()
    {
        Session::forget('start_date');
        Session::forget('end_date');

        return redirect('/buyers-acknowledgment');
    }

    public function searchSalesDeliveryNote()
    {
        Session::forget('purchaseorderitem');

        $salesdeliverynote= SalesDeliveryNote::where('data_state', 0)
        ->where('buyers_acknowledgment_status', 0)
        ->get();

        return view('content/CoreExpedition/BuyersAcknowledgment/SearchSalesDeliveryNote', compact('salesdeliverynote'));
    }

    public function addBuyersAcknowledgment($sales_delivery_note_id){

        $warehouse = InvWarehouse::select('warehouse_id', 'warehouse_name')
        ->where('data_state', 0)
        ->pluck('warehouse_name', 'warehouse_id');

        $salesdeliverynote = SalesDeliveryNote::where('data_state', 0)
        ->where('sales_delivery_note_id', $sales_delivery_note_id)
        ->first();

        $acctaccount = AcctAccount::where('acct_account.data_state','=','0')
        ->select('account_id', DB::raw('CONCAT(account_code, " - ", account_name) AS account_code'))
        ->pluck('account_code', 'account_id');

        $salesdeliverynoteitem = SalesDeliveryNoteItem::where('data_state', 0)
        ->where('sales_delivery_note_id', $sales_delivery_note_id)
        ->get();


        $salesorder = SalesOrder::select('sales_order.*')
        ->where('data_state', 0)
        ->where('sales_order_id', $salesdeliverynote['sales_order_id'])
        ->first();

        return view('content/CoreExpedition/BuyersAcknowledgment/FormAddBuyersAcknowledgment',compact('warehouse', 'salesdeliverynote', 'sales_delivery_note_id', 'salesdeliverynoteitem', 'salesorder', 'acctaccount'));
    }

    public function getCustomerName($sales_delivery_order_id){
        $salesdeliveryorder = SalesDeliveryOrderItem::select('core_customer.customer_name')
        ->join('core_customer', 'core_customer.customer_id', 'sales_delivery_order_item.customer_id')
        ->where('sales_delivery_order_item.sales_delivery_order_id', $sales_delivery_order_id)
        ->where('sales_delivery_order_item.data_state', 0)
        ->first();

        if($salesdeliveryorder == null){
            return "-";
        }

        return $salesdeliveryorder['customer_name'];
    }

    public function getItemStockName($item_stock_id){
        $invitemstock = InvItemStock::select('inv_item_stock.item_stock_id', DB::raw('CONCAT(inv_item_category.item_category_name, " - ", inv_item_type.item_type_name, " - ", inv_item_stock.item_batch_number) AS item_name'))
        ->join('inv_item_category', 'inv_item_category.item_category_id', 'inv_item_stock.item_category_id')
        ->join('inv_item_type', 'inv_item_type.item_type_id', 'inv_item_stock.item_type_id')
        ->where('item_stock_id', $item_stock_id)
        ->where('inv_item_stock.data_state','=',0)
        ->first();

        if( $invitemstock == null){
            return "-";
        }
        return $invitemstock['item_name'];
    }

    public function getPoNo($sales_order_id)
    {
        $data = SalesOrder::select('purchase_order_no')
            ->where('data_state', 0)
            ->where('sales_order_id', $sales_order_id)
            ->first();

        return $data['purchase_order_no'] ?? '';
    }

    public function getSalesOrderNo($sales_order_id){
        $salesorder = SalesOrder::select('sales_order_no')
        ->where('sales_order_id', $sales_order_id)
        ->where('data_state', 0)
        ->first();

        if($salesorder == null){
            return "-";
        }

        return $salesorder['sales_order_no'];
    }

    public function getSalesOrderDate($sales_order_id){
        $salesorder = SalesOrder::select('sales_order_date')
        ->where('sales_order_id', $sales_order_id)
        ->where('data_state', 0)
        ->first();

        if($salesorder == null){
            return "-";
        }

        return $salesorder['sales_order_date'];
    }

    public function getSalesDeliveryOrderDate($sales_delivery_order_id){
        $salesdeliveryorder = SalesDeliveryOrder::select('sales_delivery_order_date')
        ->where('sales_delivery_order_id', $sales_delivery_order_id)
        ->where('data_state', 0)
        ->first();

        if($salesdeliveryorder == null){
            return "-";
        }

        return $salesdeliveryorder['sales_delivery_order_date'];
    }

    public function getCustomerNameSalesOrderId($sales_order_id){
        $unit = SalesOrder::select('core_customer.customer_name')
        ->join('core_customer', 'core_customer.customer_id', 'sales_order.customer_id')
        ->where('sales_order_id', $sales_order_id)
        ->where('sales_order.data_state', 0)
        ->first();

        if($unit == null){
            return "-";
        }

        return $unit['customer_name'];
    }


    public function getCustomerId($sales_order_id){
        $customer = SalesOrder::select('customer_id')
        ->where('sales_order_id', $sales_order_id)
        ->first();

        return $customer['customer_id'];
    }

    public function getCategoryId($sales_order_item_id){
        $category = SalesOrderItem::select('item_category_id')
        ->where('sales_order_item_id', $sales_order_item_id)
        ->first();

        return $category['item_category_id'];
    }

    public function getWarehouseName($warehouse_id){
        $warehouse = InvWarehouse::where('warehouse_id', $warehouse_id)
        ->where('data_state', 0)
        ->first();

        if($warehouse == null){
            return "-";
        }

        return $warehouse['warehouse_name'];
    }

    public function getSalesDeliveryNoteNo($sales_delivery_note_id){
        $deliverynote = SalesDeliveryNote::where('sales_delivery_note_id', $sales_delivery_note_id)
        ->where('data_state', 0)
        ->first();

        if($deliverynote == null){
            return "-";
        }


        return $deliverynote['sales_delivery_note_no'];
    }

    public function getSalesDeliveryNoteDate($sales_delivery_note_id){
        $deliverynote = SalesDeliveryNote::where('sales_delivery_note_id', $sales_delivery_note_id)
        ->where('data_state', 0)
        ->first();

        if($deliverynote == null){
            return "-";
        }

        return $deliverynote['sales_delivery_note_date'];
    }

    public function getInvItemTypeName($item_type_id){
        $item = InvItemType::select('inv_item_type.item_type_id', DB::raw('CONCAT(inv_item_category.item_category_name, " - ", inv_item_type.item_type_name) AS item_name'))
        ->join('inv_item_category', 'inv_item_category.item_category_id', 'inv_item_type.item_category_id')
        ->where('item_type_id', $item_type_id)
        ->where('inv_item_type.data_state', 0)
        ->first();

        if( $item == null){
            return "-";
        }

        return $item['item_name'];
    }

    public function getSalesOrderItem($sales_order_item_id){
        $orderitem = SalesOrderItem::select('sales_order_item.*','sales_order.customer_id','sales_order.sales_order_no','sales_order.sales_order_date', DB::raw('CONCAT(inv_item_category.item_category_name, " - ", inv_item_type.item_type_name, " - ", inv_item_stock.item_batch_number) AS item_name'))
        ->where('sales_order_item_id', $sales_order_item_id)
        ->join('inv_item_stock', 'inv_item_stock.item_stock_id', 'sales_order_item.item_stock_id')
        ->join('inv_item_category', 'inv_item_category.item_category_id', 'inv_item_stock.item_category_id')
        ->join('inv_item_type', 'inv_item_type.item_type_id', 'inv_item_stock.item_type_id')
        // ->join('core_grade', 'core_grade.grade_id', 'inv_item.grade_id')
        ->join('sales_order', 'sales_order.sales_order_id', 'sales_order_item.sales_order_id')
        ->first();

        // dd($orderitem);

        return $orderitem;
    }

    public function getItemStock($item_stock_id){
        $item = InvItemStock::select('item_stock_id')
        ->where('data_state', 0)
        ->where('item_stock_id', $item_stock_id)
        ->first();

        return $item['item_stock_id'];
    }

    public function getItemUnitCost($item_stock_id){
        $item = InvItemStock::select('item_unit_cost')
        ->where('data_state', 0)
        ->where('item_stock_id', $item_stock_id)
        ->first();

        return $item['item_unit_cost'];
    }


    public function processAddBuyersAcknowledgment(Request $request){
        // dd($request->all());
        $request->validate([
            'buyers_acknowledgment_no'                  => 'required',
            'buyers_acknowledgment_date'                => 'required',
        ]);

    try {

        DB::beginTransaction();

        SalesOrder::where('sales_order_id',$request->sales_order_id_1)
                ->update(['purchase_order_no' => $request->purchase_order_no]);

        $buyers_acknowledgment = array(
            'warehouse_id'                              => $request->warehouse_id,
            'buyers_acknowledgment_no'                  => $request->buyers_acknowledgment_no,
            'sales_order_id'                            => $request->sales_order_id_1,
            'account_id'                                => 28,
            'customer_id'                               => $request->customer_id,
            'sales_delivery_order_id'                   => $request->sales_delivery_order_id,
            'sales_delivery_note_id'                    => $request->sales_delivery_note_id,
            'buyers_acknowledgment_date'                => $request->buyers_acknowledgment_date,
            'buyers_acknowledgment_remark'              => $request->buyers_acknowledgment_remark,
            'created_id'                                => Auth::id(),
        );


        BuyersAcknowledgment::create($buyers_acknowledgment);
            $buyers_acknowledgment_id = BuyersAcknowledgment::select('buyers_acknowledgment_id')
            ->orderBy('created_at', 'DESC')
            ->first();

            $salesorderitem = SalesOrderItem::where('sales_order_id',$request->sales_order_id_1)
            ->get();

            $no =1;

            $dataitem = $request->all();
            $total    = 0;
            foreach($salesorderitem as $item){
                $item = BuyersAcknowledgmentItem::create([
                    'buyers_acknowledgment_id'	    => $buyers_acknowledgment_id['buyers_acknowledgment_id'],
                    'sales_delivery_order_id'	    => $buyers_acknowledgment_id['sales_delivery_order_id'],
                    'sales_delivery_note_id' 	    => $dataitem['sales_delivery_note_id_'.$no],
                    'sales_delivery_note_item_id'   => $dataitem['sales_delivery_note_item_id_'.$no],
                    'sales_order_id' 			    => $dataitem['sales_order_id_'.$no],
                    'sales_order_item_id' 		    => $dataitem['sales_order_item_id_'.$no],
                    'customer_id' 				    => $dataitem['customer_id_'.$no],
                    'item_category_id' 		        => $dataitem['item_category_id_'.$no],
                    'item_type_id' 		            => $dataitem['item_type_id_'.$no],
                    'item_stock_id' 		        => $dataitem['item_stock_id_'.$no],
                    'item_unit_id' 		            => $dataitem['item_unit_id_'.$no],
                    'item_unit_cost' 		        => $dataitem['item_unit_cost_'.$no],
                    'item_unit_price' 		        => $dataitem['item_unit_price_'.$no],
                    'subtotal_price' 		        => $dataitem['quantity_received_'.$no]*$dataitem['item_unit_price_'.$no],
                    'quantity'					    => $dataitem['quantity_'.$no],
                    'quantity_received'		        => $dataitem['quantity_received_'.$no],
                    'created_id'                    => Auth::id(),
                ]);


            }
                $no++;


//--------------------------------------------------------JURNAL BARANG PHAPROS-----------------------------------------------------------------//

                // $preferencecompany 			= PreferenceCompany::first();
                // $transaction_module_code 	= "PPP";
                // $transactionmodule 		    = PreferenceTransactionModule::where('transaction_module_code', $transaction_module_code)->first();
                // $transaction_module_id 		= $transactionmodule['transaction_module_id'];
                // $journal_voucher_period 	= date("Ym", strtotime($salesdeliverynote['sales_delivery_note_date']));
                // $salesdeliverynote          = SalesDeliveryNote::where('sales_delivery_note_id', $buyers_acknowledgment['sales_delivery_note_id'])->first();

                // $data_journal = array(
                //     'branch_id'						=> 1,
                //     'journal_voucher_period' 		=> $journal_voucher_period,
                //     'journal_voucher_date'			=> $buyers_acknowledgment['buyers_acknowledgment_date'],
                //     'journal_voucher_title'			=> 'Penjualan'.$this->getPoNo($salesdeliverynote['sales_order_id']),
                //     'journal_voucher_no'			=> $buyers_acknowledgment['buyers_acknowledgment_no'],
                //     'journal_voucher_description'	=> $buyers_acknowledgment['buyers_acknowledgment_remark'],
                //     'transaction_module_id'			=> $transaction_module_id,
                //     'transaction_module_code'		=> $transaction_module_code,
                //     'transaction_journal_id' 		=> $salesdeliverynote['sales_delivery_note_id'],
                //     'transaction_journal_no' 		=> $buyers_acknowledgment['buyers_acknowledgment_no'],
                //     'created_id' 					=> Auth::id(),
                // );

                // AcctJournalVoucher::create($data_journal);
//--------------------------------------------------------END JURNAL BARANG PHAPROS-----------------------------------------------------------------//

//--------------------------------------------------------JURNAL ITEM BARANG PHAPROS-----------------------------------------------------------------//

                // $salesorderitem          = SalesOrderItem::where('sales_order_item_id', $item['sales_order_item_id_'.$no])
                // ->first();

                // $salesorder              = SalesOrder::findOrFail($buyers_acknowledgment['sales_order_id']);

                // $ppn                     = SalesOrderItem::where('sales_order_id', $buyers_acknowledgment['sales_order_id'])
                //                         ->sum('ppn_amount_item');

                // $journalvoucher = AcctJournalVoucher::where('created_id', Auth::id())
                // ->orderBy('journal_voucher_id', 'DESC')
                // ->first();

                // $journal_voucher_id 	= $journalvoucher['journal_voucher_id'];

                // $account 		= AcctAccount::where('account_id', $buyers_acknowledgment['account_id'])
                // ->where('data_state', 0)
                // ->first();

                // $item_type_id = SalesOrderItem::select('item_type_id')
                // ->where('sales_order_item_id', $item['sales_order_item_id'])
                // ->first();

                // $total_amount   = $total;
                // $piutang        = $ppn + $total_amount;


                // $account_id_default_status 		= $account['account_default_status'];
                // $data_debit = array (
                //     'journal_voucher_id'			=> $journal_voucher_id,
                //     'account_id'					=> $buyers_acknowledgment['account_id'],
                //     'journal_voucher_description'	=> $data_journal['journal_voucher_description'],
                //     'journal_voucher_amount'		=> ABS($total_amount),
                //     'journal_voucher_debit_amount'	=> ABS($total_amount),
                //     'account_id_default_status'		=> $account_id_default_status,
                //     'account_id_status'				=> 0,
                // );
                // AcctJournalVoucherItem::create($data_debit);


                SalesOrder::where('sales_order_id',$request->sales_order_id_1)
                ->update(['sales_order_status' => 3]);

                DB::commit();
                $msg = 'Tambah Penerimaan Pihak Pembeli Berhasil';
                return redirect('/buyers-acknowledgment')->with('msg',$msg);

        } catch (\Exception $e) {
                DB::rollback();
                Log::error('Error saat menambah penerimaan pihak pembeli: ' . $e->getMessage(), [
                    'exception' => $e,
                    'trace' => $e->getTraceAsString()
                ]);

                $msg = 'Tambah Penerimaan Pihak Pembeli gagal';
                return redirect('/buyers-acknowledgment')->with('msg',$msg);
        }
    }

    public function detailBuyersAcknowledgment($buyers_acknowledgment_id){
        $buyers_acknowledgment_item = BuyersAcknowledgmentItem::where('buyers_acknowledgment_item.data_state', 0)
        ->where('buyers_acknowledgment_id', $buyers_acknowledgment_id)
        ->join('sales_order', 'sales_order.sales_order_id', '=', 'buyers_acknowledgment_item.sales_order_id')
        ->get();


        // dd($returnpdpitem);

        $buyers_acknowledgment = BuyersAcknowledgment::where('buyers_acknowledgment_id', $buyers_acknowledgment_id)
        ->select('buyers_acknowledgment.*', 'acct_account.account_code', 'acct_account.account_name')
        ->join('acct_account', 'buyers_acknowledgment.account_id', '=', 'acct_account.account_id')
        ->where('buyers_acknowledgment_id', $buyers_acknowledgment_id)
        ->first();


        $warehouse = InvWarehouse::select('warehouse_id', 'warehouse_name')
        ->where('data_state', 0)
        ->pluck('warehouse_name', 'warehouse_id');

        return view('content/CoreExpedition/BuyersAcknowledgment/FormDetailBuyersAcknowledgment', compact('warehouse', 'buyers_acknowledgment', 'buyers_acknowledgment_item', 'buyers_acknowledgment_id'));
    }
}
