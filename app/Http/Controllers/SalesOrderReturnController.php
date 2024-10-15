<?php

namespace App\Http\Controllers;

use App\Models\AcctAccount;
use App\Models\AcctJournalVoucher;
use App\Models\AcctJournalVoucherItem;
use App\Models\InvItemStock;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use App\Models\SalesOrderReturn;
use App\Models\SalesDeliveryNote;
use App\Models\SalesDeliveryOrder;
use App\Models\SalesDeliveryOrderItem;
use App\Models\SalesOrder;
use App\Models\InvWarehouse;
use App\Models\SalesDeliveryNoteItem;
use App\Models\SalesDeliveryNoteItemStock;
use App\Models\SalesOrderReturnItem;
use App\Models\SalesOrderItem;
use App\Models\InvItemType;
use App\Models\CoreExpedition;
use App\Models\PreferenceCompany;
use App\Models\PreferenceTransactionModule;
use App\Models\PurchaseOrder;
use App\Models\PurchaseOrderItem;
use App\Models\SalesInvoice;
use App\Models\SalesInvoiceItem;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;

class SalesOrderReturnController extends Controller
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

        $salesorderreturn = SalesOrderReturn::where('data_state', 0)
        ->where('sales_order_return_date', '>=', $start_date)
        ->where('sales_order_return_date', '<=', $end_date)
        ->get();
        return  view('content/SalesOrder/ListSalesOrderReturn',compact('salesorderreturn', 'end_date', 'start_date'));
    }

    public function filterSalesOrderReturn(Request $request){
        $start_date     = $request->start_date;
        $end_date       = $request->end_date;

        Session::put('start_date', $start_date);
        Session::put('end_date', $end_date);

        return redirect('/sales-order-return');
    }

    public function resetFilterSalesOrderReturn()
    {
        Session::forget('start_date');
        Session::forget('end_date');

        return redirect('/sales-order-return');
    }

    // public function searchSalesDeliveryNote()
    // {
    //     Session::forget('purchaseorderitem');

    //     $salesdeliverynote= SalesDeliveryNote::where('data_state', 0)
    //     ->where('return_status', 0)
    //     ->get();

    //     return view('content/SalesOrder/SearchSalesDeliveryNote', compact('salesdeliverynote'));
    // }
    public function searchSalesInvoice()
    {
        Session::forget('purchaseorderitem');

        $salesInvoice= SalesInvoice::where('data_state', 0)
        ->where('return_status', 0)
        ->get();

        return view('content/SalesInvoice/SearchSalesInvoice', compact('salesInvoice'));
    }

    public function addSalesOrderReturn($sales_invoice_id){

        $warehouse = InvWarehouse::select('warehouse_id', 'warehouse_name')
        ->where('data_state', 0)
        ->pluck('warehouse_name', 'warehouse_id');

        $salesInvoice= SalesInvoice::where('data_state', 0)
        ->where('sales_invoice_id', $sales_invoice_id)
        ->first();

        $salesInvoiceItem= SalesInvoiceItem::where('data_state', 0)
        ->where('sales_invoice_id', $sales_invoice_id)
        ->get();
       //dd($salesInvoiceItem);
        $salesorder = SalesOrder::select('sales_order.*')
        ->where('data_state', 0)
        ->first();

        return view('content/SalesOrder/FormAddSalesOrderReturn',compact('warehouse', 'salesInvoice', 'sales_invoice_id', 'salesInvoiceItem', 'salesorder'));
    }

    public function getCustomerName($sales_order_id){
        $salesdeliveryorder = SalesOrder::select('core_customer.customer_name')
        ->join('core_customer', 'core_customer.customer_id', 'sales_order.customer_id')
        ->where('sales_order.sales_order_id', $sales_order_id)
        ->where('sales_order.data_state', 0)
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

        return date('d/m/Y', strtotime($salesorder['sales_order_date']));
    }


    public function getSalesInvoiceNo($sales_invoice_id){
        $salesinvoice = SalesInvoice::select('sales_invoice_no')
        ->where('sales_invoice_id', $sales_invoice_id)
        ->where('data_state', 0)
        ->first();

        if($salesinvoice == null){
            return "-";
        }

        return $salesinvoice['sales_invoice_no'];
    }


    public function getSalesInvoiceDate($sales_invoice_id){
        $salesinvoice = SalesInvoice::select('sales_invoice_date')
        ->where('sales_invoice_id', $sales_invoice_id)
        ->where('data_state', 0)
        ->first();

        if($salesinvoice == null){
            return "-";
        }

        return date('d/m/Y', strtotime($salesinvoice['sales_invoice_date']));
    }



    public function getSalesDeliveryOrderDate($sales_delivery_order_id){
        $salesdeliveryorder = SalesDeliveryOrder::select('sales_delivery_order_date')
        ->where('sales_delivery_order_id', $sales_delivery_order_id)
        ->where('data_state', 0)
        ->first();

        if($salesdeliveryorder == null){
            return "-";
        }

        return date('d/m/Y', strtotime($salesdeliveryorder['sales_delivery_order_date']));
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

        return date('d/m/Y', strtotime($deliverynote['sales_delivery_note_date']));
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

    public function processAddSalesOrderReturn(Request $request)
    {
        $request->validate([
            'warehouse_id'                  => 'required',
            'sales_order_return_date'       => 'required',
        ]);

        $salesorderreturn = array(
            'warehouse_id'                  => $request->warehouse_id,
            'sales_order_id'                => $request->sales_order_id,
            'sales_delivery_order_id'       => $request->sales_delivery_order_id,
            'sales_invoice_id'              => $request->sales_invoice_id,
            'sales_delivery_note_id'        => $request->sales_delivery_note_id,
            'sales_order_return_date'       => $request->sales_order_return_date,
            'sales_order_return_remark'     => $request->sales_order_return_remark,
            'customer_id' 				    => $request->customer_id,
            'no_retur_barang' 				=> $request->no_retur_barang,
            'nota_retur_pajak' 				=> $request->nota_retur_pajak,
            'barang_kembali' 				=> $request->barang_kembali,
            // 'branch_id'                     => Auth::user()->branch_id,
            'created_id'                    => Auth::id(),
        );


        if(SalesOrderReturn::create($salesorderreturn)){
            $sales_order_return_id = SalesOrderReturn::select('sales_order_return_id', 'sales_order_return_no')
            ->orderBy('created_at', 'DESC')
            ->first();

            // dd($sales_order_return_id);

            $salesdeliveryordernoteitemstock = SalesDeliveryNoteItemStock::where('sales_order_id',$request->sales_order_id)
            ->get();
            //dd($salesdeliveryordernoteitemstock);
            $no =1;

            $dataitem = $request->all();

            
// //----------------------------------------------------------Journal Voucher-------------------------------------------------------------------//
            
            $preferencecompany 			= PreferenceCompany::first();
                    
            $transaction_module_code 	= "SOR";

            $transactionmodule 		    = PreferenceTransactionModule::where('transaction_module_code', $transaction_module_code)
            ->first();


            $transaction_module_id 		= $transactionmodule['transaction_module_id'];

            $journal_voucher_period 	= date("Ym", strtotime($salesorderreturn['sales_order_return_date']));

            $data_journal = array(
                'branch_id'						=> 1,
                'journal_voucher_period' 		=> $journal_voucher_period,
                'journal_voucher_date'			=> $salesorderreturn['sales_order_return_date'],
                'journal_voucher_title'			=> 'Return Penjualan Barang '.$sales_order_return_id['sales_order_return_no'],
                'journal_voucher_no'			=> $sales_order_return_id['sales_order_return_no'],
                'journal_voucher_description'	=> $salesorderreturn['sales_order_return_remark'],
                'transaction_module_id'			=> $transaction_module_id,
                'transaction_module_code'		=> $transaction_module_code,
                'transaction_journal_id' 		=> $sales_order_return_id['sales_order_return_id'],
                'transaction_journal_no' 		=> $sales_order_return_id['sales_order_return_no'],
                'created_id' 					=> Auth::id(),
            );

            // dd($data_journal);
            AcctJournalVoucher::create($data_journal);


            //---------------------------------------------------------End Journal Voucher----------------------------------------------------------------//

            
            foreach($salesdeliveryordernoteitemstock as $item){
                $item = SalesOrderReturnItem::create([
                    'sales_delivery_order_id'	    => $sales_order_return_id['sales_delivery_order_id'],
                    'sales_order_return_id'	        => $sales_order_return_id['sales_order_return_id'],
                    'sales_delivery_note_id' 	    => $dataitem['sales_delivery_note_id'],
                    'sales_delivery_note_item_id'   => $dataitem['sales_delivery_note_item_id'],
                    'sales_order_id' 			    => $dataitem['sales_order_id'],
                    'sales_order_item_id' 		    => $item['sales_order_item_id'],
                    'item_id' 		                => $dataitem['item_id_'.$no],
                    'item_stock_id' 		        => $item['item_stock_id'],
                    'item_type_id' 		            => $dataitem['item_type_id_'.$no],
                    'item_unit_id' 		            => $dataitem['item_unit_id_'.$no],
                    'item_unit_price' 		        => $dataitem['item_unit_price_'.$no],
                    'subtotal_price' 		        => $dataitem['quantity_return_'.$no]*$dataitem['item_unit_price_'.$no],
                    'quantity'					    => $dataitem['quantity_return_'.$no],		
                    'quantity_return'		        => $dataitem['quantity_'.$no],	
                    'created_id'                    => Auth::id(),
                ]);

           //dd($item);

                $salesdeliverynote = SalesInvoice::findOrFail($dataitem['sales_invoice_id']);
                $salesdeliverynote->return_status = 1;
                $salesdeliverynote->save();

                $itemstock = InvItemStock::findOrfail($item['item_stock_id']);
                //dd($itemstock);

                if($dataitem['barang_kembali'] == 0){
                        InvItemStock::create([
                            'goods_received_note_id'            =>   $itemstock['goods_received_note_id'],
                            'goods_received_note_item_id'       =>   $itemstock['goods_received_note_item_id'],
                            'item_stock_date'                   =>   \Carbon\Carbon::now(), # new \Datetime()
                            'item_stock_expired_date'           =>   $itemstock['item_stock_expired_date'],
                            'item_batch_number'                 =>   $itemstock['item_batch_number'],
                            'purchase_order_item_id'            =>   $itemstock['purchase_order_item_id'],
                            'warehouse_id'                      =>   9,
                            'item_category_id'                  =>   $itemstock['item_category_id'],
                            'item_type_id'                      =>   $dataitem['item_type_id_'.$no],
                            'item_id'                           =>   $itemstock['item_id'],
                            'item_unit_id'                      =>   $dataitem['item_unit_id_'.$no],
                            'item_total'                        =>   $itemstock['item_total'],
                            'item_unit_id_default'              =>   $itemstock['item_unit_id_default'],
                            'item_default_quantity_unit'        =>   $itemstock['item_default_quantity_unit'],
                            'quantity_unit'                     =>   $dataitem['quantity_return_'.$no],
                            'item_weight_default'               =>   $itemstock['item_weight_default'],
                            'item_weight_unit'                  =>   $itemstock['item_weight_unit'],
                            'package_id'                        =>   $itemstock['package_id'],
                            'package_total'                     =>   $itemstock['package_total'],
                            'package_unit_id'                   =>   $itemstock['package_unit_id'],
                            'package_price'                     =>   $itemstock['package_price'],
                            'data_state'                        =>   $itemstock['data_state'],
                            'created_id'                        =>   $itemstock['created_id'],
                            'created_at'                        =>   $itemstock['created_at'],
                            'buyers_acknowledgment_no'          =>   $dataitem['buyers_acknowledgment_no'],
                            'no_retur_barang'                   =>   $dataitem['no_retur_barang'],
                            'nota_retur_pajak'                  =>   $dataitem['nota_retur_pajak'],
    
                        ]);          
                    }else{
                    //dd($inv_stock_note);
                    InvItemStock::create([
                        'goods_received_note_id'            =>   $itemstock['goods_received_note_id'],
                        'goods_received_note_item_id'       =>   $itemstock['goods_received_note_item_id'],
                        'item_stock_date'                   =>   \Carbon\Carbon::now(), # new \Datetime()
                        'item_stock_expired_date'           =>   $itemstock['item_stock_expired_date'],
                        'item_batch_number'                 =>   $itemstock['item_batch_number'],
                        'purchase_order_item_id'            =>   $itemstock['purchase_order_item_id'],
                        'warehouse_id'                      =>   7,
                        'item_category_id'                  =>   $itemstock['item_category_id'],
                        'item_type_id'                      =>   $dataitem['item_type_id_'.$no],
                        'item_id'                           =>   $itemstock['item_id'],
                        'item_unit_id'                      =>   $dataitem['item_unit_id_'.$no],
                        'item_total'                        =>   $itemstock['item_total'],
                        'item_default_quantity_unit'        =>   $itemstock['item_default_quantity_unit'],
                        'quantity_unit'                     =>   $dataitem['quantity_return_'.$no],
                        'item_weight_default'               =>   $itemstock['item_weight_default'],
                        'item_weight_unit'                  =>   $itemstock['item_weight_unit'],
                        'package_id'                        =>   $itemstock['package_id'],
                        'package_total'                     =>   $itemstock['package_total'],
                        'package_unit_id'                   =>   $itemstock['package_unit_id'],
                        'package_price'                     =>   $itemstock['package_price'],
                        'data_state'                        =>   $itemstock['data_state'],
                        'created_id'                        =>   $itemstock['created_id'],
                        'created_at'                        =>   $itemstock['created_at'],
                        'buyers_acknowledgment_no'          =>   $dataitem['buyers_acknowledgment_no'],
                        'no_retur_barang'                   =>   $dataitem['no_retur_barang'],
                        'nota_retur_pajak'                  =>   $dataitem['nota_retur_pajak'],
                    ]);
                }
                
                
                //----------------------------------------------------------Journal Voucher Item-------------------------------------------------------------------//
                
                
                $salesorderitem          = SalesOrderItem::where('sales_order_item_id', $item['sales_order_item_id_'.$no])
                ->first();
                
                $salesorder              = SalesOrder::findOrFail($salesorderreturn['sales_order_id']);
                
                $journalvoucher = AcctJournalVoucher::where('created_id', Auth::id())
                ->orderBy('journal_voucher_id', 'DESC')
                ->first();


                $journal_voucher_id 	= $journalvoucher['journal_voucher_id'];


                //------account_id Return Penjualan BKP-----//
                $preference_company = PreferenceCompany::first();
                
                $account = AcctAccount::where('account_id', $preference_company['account_sales_return_id'])
                ->where('data_state', 0)
                ->first();
                
                $total_amount = $item['item_unit_price'] * $item['quantity_return'];
                
                $account_id_default_status 		= $account['account_default_status'];

                $data_debit1 = array (
                    'journal_voucher_id'			=> $journal_voucher_id,
                    'account_id'					=> $account['account_id'],
                    'journal_voucher_description'	=> $data_journal['journal_voucher_description'],
                    'journal_voucher_amount'		=> ABS($total_amount),
                    'journal_voucher_debit_amount'	=> ABS($total_amount),
                    'account_id_default_status'		=> $account_id_default_status,
                    'account_id_status'				=> 1,
                );

                // dd($data_debit1);

                AcctJournalVoucherItem::create($data_debit1);

                //------account_id PPN Keluar------//
                    $account 		= AcctAccount::where('account_id', $preferencecompany['account_vat_out_id'])
                    ->where('data_state', 0)
                    ->first();

                    // $total_amount = $item['item_unit_price'] * $item['quantity_return'];
                    
                    $ppn_out_amount = $salesorder['ppn_out_amount'];
                    // dd($account_id_default_status);
                    
                    $data_debit2 = array (
                        'journal_voucher_id'			=> $journal_voucher_id,
                        'account_id'					=> $preferencecompany['account_vat_out_id'],
                        'journal_voucher_description'	=> $data_journal['journal_voucher_description'],
                        'journal_voucher_amount'		=> ABS($ppn_out_amount),
                        'journal_voucher_debit_amount'	=> ABS($ppn_out_amount),
                        'account_id_default_status'		=> $account_id_default_status,
                        'account_id_status'				=> 1,
                    );

                    // dd($data_debit2);
                    
                    AcctJournalVoucherItem::create($data_debit2);
                    
                    //------account_id Piutang Usaha------//
                    $account = AcctAccount::where('account_id', $preference_company['account_receivable_id'])
                    ->where('data_state', 0)
                    ->first();
                    
                    $ppn_out_amount = $salesorder['ppn_out_amount'];

                    $receivable = $ppn_out_amount + $total_amount;

                    
                    $account_id_default_status 		= $account['account_default_status'];
                    
                    $data_credit1 = array (
                        'journal_voucher_id'			=> $journal_voucher_id,
                        'account_id'					=> $preferencecompany['account_receivable_id'],
                        'journal_voucher_description'	=> $data_journal['journal_voucher_description'],
                        'journal_voucher_amount'		=> ABS($receivable),
                        'journal_voucher_credit_amount'	=> ABS($receivable),
                        'account_id_default_status'		=> $account_id_default_status,
                        'account_id_status'				=> 0,
                    );
                    
                    // dd($data_credit1);
                    
                    AcctJournalVoucherItem::create($data_credit1);
                    //--------------------------------------------------------End Journal Voucher-----------------------------------------------------------------//


                     //----------------------------------------------------------Journal Voucher Item2-------------------------------------------------------------------//

            
                    // ------account_id Persediaan Barang dagang------//
                    $account 		= AcctAccount::where('account_id', $preferencecompany['account_inventory_trade_id'])
                    ->where('data_state', 0)
                    ->first();

                    $item_type_id = SalesOrderItem::select('item_type_id')
                    ->where('sales_order_item_id', $item['sales_order_item_id'])
                    ->first(); 

                    $harga_beli = PurchaseOrderItem::select('purchase_order.total_amount')
                    ->join('purchase_order', 'purchase_order.purchase_order_id', '=', 'purchase_order_item.purchase_order_id')
                    ->where('purchase_order_item.item_type_id', $item_type_id['item_type_id'])
                    ->first();
                    
                    // $ppn_out_amount = $salesorder['ppn_out_amount'];
                    // dd($account_id_default_status);
                    
                    $data_debit3 = array (
                        'journal_voucher_id'			=> $journal_voucher_id,
                        'account_id'					=> $preferencecompany['account_inventory_trade_id'],
                        'journal_voucher_description'	=> $data_journal['journal_voucher_description'],
                        'journal_voucher_amount'		=> ABS($harga_beli['total_amount']),
                        'journal_voucher_debit_amount'	=> ABS($harga_beli['total_amount']),
                        'account_id_default_status'		=> $account_id_default_status,
                        'account_id_status'				=> 1,
                    );

                    // dd($data_debit3);
                    
                    AcctJournalVoucherItem::create($data_debit3);
                    
                    //------account_id Beban Pokok Penjualan Barang Anggota BKP------//
                    $account = AcctAccount::where('account_id', $preference_company['account_hpp_id'])
                    ->where('data_state', 0)
                    ->first();
                    
                    $harga_beli = PurchaseOrderItem::select('purchase_order.total_amount')
                    ->join('purchase_order', 'purchase_order.purchase_order_id', '=', 'purchase_order_item.purchase_order_id')
                    ->where('purchase_order_item.item_type_id', $item_type_id['item_type_id'])
                    ->first();

                    
                    $account_id_default_status 		= $account['account_default_status'];
                    
                    $data_credit2 = array (
                        'journal_voucher_id'			=> $journal_voucher_id,
                        'account_id'					=> $preferencecompany['account_hpp_id'],
                        'journal_voucher_description'	=> $data_journal['journal_voucher_description'],
                        'journal_voucher_amount'		=> ABS($harga_beli['total_amount']),
                        'journal_voucher_credit_amount'	=> ABS($harga_beli['total_amount']),
                        'account_id_default_status'		=> $account_id_default_status,
                        'account_id_status'				=> 0,
                    );
                    
                    // dd($data_credit2);
                    
                    AcctJournalVoucherItem::create($data_credit2);
                    //--------------------------------------------------------End Journal Voucher-----------------------------------------------------------------//
                        
                    

                    $no++;
            }


            $msg = 'Tambah Return Penjualan Berhasil';
            return redirect('/sales-order-return')->with('msg',$msg);
        }else{
            $msg = 'Tambah Return Penjualan Gagal';
            return redirect('/sales-order-return')->with('msg',$msg);
        }

    }

    public function detailSalesOrderReturn($sales_order_return_id)
    {
        $salesorderreturnitem = SalesOrderReturnItem::where('sales_order_return_item.data_state', 0)
        ->where('sales_order_return_id', $sales_order_return_id)
        ->join('sales_order', 'sales_order.sales_order_id', '=', 'sales_order_return_item.sales_order_id')
        ->get();



        $salesorderreturn = SalesOrderReturn::findOrFail($sales_order_return_id);

        // dd( $salesorderreturn);

        $warehouse = InvWarehouse::select('warehouse_id', 'warehouse_name')
        ->where('data_state', 0)
        ->pluck('warehouse_name', 'warehouse_id');

        return view('content/SalesOrder/FormDetailSalesOrderReturn',compact('warehouse', 'salesorderreturn', 'salesorderreturnitem', 'sales_order_return_id'));
    }
}
