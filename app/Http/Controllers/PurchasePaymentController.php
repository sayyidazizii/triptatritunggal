<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\CoreBank;
use App\Models\AcctAccount;
use App\Models\InvItemType;
use App\Models\InvItemUnit;
use App\Models\CoreSupplier;
use App\Models\InvWarehouse;
use Illuminate\Http\Request;
use App\Models\PurchaseOrder;
use App\Helpers\JournalHelper;
use App\Models\InvItemCategory;
use App\Models\PurchaseInvoice;
use App\Models\PurchasePayment;
use App\Models\PreferenceCompany;
use App\Models\PurchaseOrderItem;
use App\Models\AcctJournalVoucher;
use Illuminate\Support\Facades\DB;
use App\Models\PurchasePaymentGiro;
use App\Models\PurchasePaymentItem;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Models\AcctJournalVoucherItem;
use App\Models\PurchasePaymentTransfer;
use App\Providers\RouteServiceProvider;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;
use App\Models\PreferenceTransactionModule;

class PurchasePaymentController extends Controller
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
        Session::forget('purchasepaymentelements');
        Session::forget('datapurchasepaymenttransfer');

        if(!Session::get('start_date')){
            $start_date     = date('Y-m-d');
        }else{
            $start_date     = Session::get('start_date');
        }

        if(!Session::get('end_date')){
            $end_date       = date('Y-m-d');
        }else{
            $end_date       = Session::get('end_date');
        }

        $supplier_id        = Session::get('supplier_id');

        $coresupplier       = CoreSupplier::where('data_state', 0)
        ->pluck('supplier_name', 'supplier_id');

        $purchasepayment    = PurchasePayment::where('data_state', 0)
        ->join('purchase_payment_item','purchase_payment_item.payment_id','purchase_payment.payment_id')
        ->where('payment_date', '>=', $start_date)
        ->where('payment_date', '<=',$end_date);
        if(!$supplier_id||$supplier_id == ''||$supplier_id == null){
        }else{
            $purchasepayment = $purchasepayment->where('supplier_id', $supplier_id);
        }
        $purchasepayment    = $purchasepayment->get();

        return view('content/PurchasePayment/ListPurchasePayment',compact('coresupplier', 'purchasepayment', 'start_date', 'end_date', 'supplier_id'));
    }

    public function filterPurchasePayment(Request $request){
        $start_date     = $request->start_date;
        $end_date       = $request->end_date;
        $supplier_id    = $request->supplier_id;

        Session::put('start_date', $start_date);
        Session::put('end_date', $end_date);
        Session::put('supplier_id', $supplier_id);

        return redirect('/purchase-payment');
    }

    public function searchCoreSupplier(){

        Session::forget('purchasepaymentelements');
        Session::forget('datapurchasepaymenttransfer');

        $coresupplier = PurchaseInvoice::select('purchase_invoice.supplier_id', 'core_supplier.supplier_name', 'core_supplier.supplier_address', DB::raw("SUM(purchase_invoice.owing_amount) as total_owing_amount"))
        ->join('core_supplier', 'core_supplier.supplier_id', 'purchase_invoice.supplier_id')
        ->where('purchase_invoice.data_state', 0)
        ->where('core_supplier.data_state', 0)
        ->groupBy('purchase_invoice.supplier_id')
        ->orderBy('core_supplier.supplier_name', 'ASC')
        ->get();

        return view('content/PurchasePayment/SearchCoreSupplier',compact('coresupplier'));
    }

    public function addPurchasePayment($supplier_id){

        $purchaseinvoiceowing = PurchaseInvoice::select('purchase_invoice.faktur_tax_no','purchase_invoice.purchase_invoice_id', 'purchase_invoice.supplier_id', 'purchase_invoice.owing_amount', 'purchase_invoice.purchase_invoice_date','purchase_invoice.ppn_in_amount', 'purchase_invoice.paid_amount', 'purchase_invoice.purchase_invoice_no', 'purchase_invoice.subtotal_amount', 'purchase_invoice.discount_percentage', 'purchase_invoice.discount_amount', 'purchase_invoice.tax_amount', 'purchase_invoice.total_amount')
        ->where('purchase_invoice.supplier_id', $supplier_id)
        ->where('purchase_invoice.owing_amount', '>', 0)
        ->where('purchase_invoice.data_state', 0)
        ->get();

        $PPN = $this->getTotalPpn($supplier_id);

        $supplier = CoreSupplier::findOrfail($supplier_id);

        $acctaccount    = AcctAccount::select('account_id', DB::raw('CONCAT(account_code, " - ", account_name) AS full_name'))
        ->where('acct_account.data_state', 0)
        ->where('parent_account_status', 0)
        ->pluck('full_name','account_id');

        $corebank = CoreBank::where('data_state', 0)
        ->pluck('bank_name', 'bank_id');

        $payment_type_list = [
            0 => 'Tunai',
            1 => 'Transfer',
        ];

        $purchasepaymentelements = Session::get('purchasepaymentelements');
        $purchasepaymenttransfer = Session::get('datapurchasepaymenttransfer');

        return view('content/PurchasePayment/FormAddPurchasePayment',compact('payment_type_list','supplier_id', 'purchaseinvoiceowing', 'corebank', 'supplier', 'acctaccount', 'purchasepaymentelements', 'purchasepaymenttransfer','PPN'));
    }

    public function detailPurchasePayment($payment_id){

        $purchasepayment = PurchasePayment::findOrFail($payment_id);

        $purchasepaymentitem = PurchasePaymentItem::select('purchase_payment_item.*', 'purchase_invoice.purchase_invoice_date', 'purchase_invoice.purchase_invoice_no', 'purchase_payment_item.shortover_amount AS shortover_value')
        ->join('purchase_invoice', 'purchase_invoice.purchase_invoice_id', 'purchase_payment_item.purchase_invoice_id')
        ->where('payment_id', $purchasepayment['payment_id'])
        ->get();

        $purchasepaymenttransfer = PurchasePaymentTransfer::where('payment_id', $purchasepayment['payment_id'])
        ->get();

        $supplier = CoreSupplier::where('data_state', 0)
        ->where('supplier_id', $purchasepayment['supplier_id'])
        ->first();

        return view('content/PurchasePayment/FormDetailPurchasePayment',compact('payment_id', 'purchasepayment', 'purchasepaymentitem', 'purchasepaymenttransfer',  'supplier'));
    }

    public function deletePurchasePayment($payment_id){

        $purchasepayment = PurchasePayment::findOrFail($payment_id);

        $purchasepaymentitem = PurchasePaymentItem::select('purchase_payment_item.*', 'purchase_invoice.purchase_invoice_date', 'purchase_invoice.purchase_invoice_no', 'purchase_payment_item.shortover_amount AS shortover_value')
        ->join('purchase_invoice', 'purchase_invoice.purchase_invoice_id', 'purchase_payment_item.purchase_invoice_id')
        ->where('payment_id', $purchasepayment['payment_id'])
        ->get();

        $purchasepaymenttransfer = PurchasePaymentTransfer::where('payment_id', $purchasepayment['payment_id'])
        ->get();

        $supplier = CoreSupplier::where('data_state', 0)
        ->where('supplier_id', $purchasepayment['supplier_id'])
        ->first();

        return view('content/PurchasePayment/FormDeletePurchasePayment',compact('payment_id', 'purchasepayment', 'purchasepaymentitem', 'purchasepaymenttransfer',  'supplier'));
    }

    public function elements_add(Request $request){
        $purchasepaymentelements= Session::get('purchasepaymentelements');
        if(!$purchasepaymentelements || $purchasepaymentelements == ''){
            $purchasepaymentelements['payment_date']                = '';
            $purchasepaymentelements['payment_remark']              = '';
            $purchasepaymentelements['cash_account_id']             = '';
            $purchasepaymentelements['payment_total_cash_amount']   = '';
            $purchasepaymentelements['payment_type']   = '';

        }
        $purchasepaymentelements[$request->name] = $request->value;
        Session::put('purchasepaymentelements', $purchasepaymentelements);
    }

    public function processAddTransferArray(Request $request)
    {
        $purchasepaymenttransfer = array(
            'bank_id'                       => $request->bank_id,
            'payment_transfer_account_name' => $request->payment_transfer_account_name,
            'payment_transfer_account_no'   => $request->payment_transfer_account_no,
            'payment_transfer_amount'       => $request->payment_transfer_amount,
        );

        $lastpurchasepaymenttransfer = Session::get('datapurchasepaymenttransfer');
        if($lastpurchasepaymenttransfer !== null){
            array_push($lastpurchasepaymenttransfer, $purchasepaymenttransfer);
            Session::put('datapurchasepaymenttransfer', $lastpurchasepaymenttransfer);
        }else{
            $lastpurchasepaymenttransfer = [];
            array_push($lastpurchasepaymenttransfer, $purchasepaymenttransfer);
            Session::push('datapurchasepaymenttransfer', $purchasepaymenttransfer);
        }
    }

    public function processAddPurchasePayment(Request $request)
    {
        try {
            Log::debug('Starting processAddPurchasePayment', ['request' => $request->all()]);

            $allrequest = $request->all();
            $fields = $request->validate([
                'payment_date' => 'required',
            ]);

            $data = [
                'payment_date'                      => $fields['payment_date'],
                'supplier_id'                       => $request->supplier_id,
                'payment_remark'                    => $request->payment_remark,
                'payment_amount'                    => $request->payment_amount,
                'payment_allocated'                 => $request->allocation_total,
                'payment_shortover'                 => $request->shortover_total,
                'payment_total_amount'              => $request->payment_amount,
                'payment_total_cash_amount'         => $request->payment_total_cash_amount,
                'payment_total_transfer_amount'     => $request->payment_total_transfer_amount ?? 0,
                'data_state'                        => 0,
                'created_on'                        => now(),
                'created_id'                        => Auth::id(),
                'branch_id'                         => Auth::user()->branch_id,
            ];

            Log::debug('Validated data:', $data);

            // $purchasepayment = PurchasePayment::create($data); // Dicomment untuk debug
            $purchasepayment = (object) ['payment_id' => 1, 'payment_no' => 'DEBUG-001']; // Mock data

            $payment_total_amount = $data['payment_allocated'] + $data['payment_shortover'];
            $selisih_shortover = $data['payment_total_amount'] - $payment_total_amount;

            Log::debug('Calculated payment totals:', [
                'payment_total_amount' => $payment_total_amount,
                'selisih_shortover' => $selisih_shortover
            ]);

            if ($purchasepayment) {
                for ($i = 1; $i < $request->item_total; $i++) {
                    $data_paymentitem = [
                        'payment_id'               => $purchasepayment->payment_id,
                        'purchase_invoice_id'      => $allrequest[$i.'_purchase_invoice_id'],
                        'purchase_invoice_no'      => $allrequest[$i.'_purchase_invoice_no'],
                        'purchase_invoice_date'    => $allrequest[$i.'_purchase_invoice_date'],
                        'purchase_invoice_amount'  => $allrequest[$i.'_purchase_invoice_amount'],
                        'total_amount'             => $allrequest[$i.'_total_amount'],
                        'paid_amount'              => $allrequest[$i.'_paid_amount'],
                        'owing_amount'             => $allrequest[$i.'_owing_amount'],
                        'allocation_amount'        => $allrequest[$i.'_allocation'],
                        'shortover_amount'         => $allrequest[$i.'_shortover'],
                        'last_balance'             => $allrequest[$i.'_last_balance'],
                        'ppn_in_amount'            => $allrequest[$i.'_ppn_in_amount'],
                        'promotion_amount'         => $allrequest[$i.'_promotion_amount'],
                        'adm_cost_amount'          => $allrequest[$i.'_adm_cost_amount'],
                    ];

                    Log::debug('Payment item data:', $data_paymentitem);

                    // $paymentItem = PurchasePaymentItem::create($data_paymentitem); // Dicomment untuk debug
                    $paymentItem = (object) ['id' => $i]; // Mock data

                    if ($data_paymentitem['allocation_amount'] > 0 && $paymentItem) {
                        $purchaseinvoice = PurchaseInvoice::where('data_state', 0)
                            ->where('purchase_invoice_id', $data_paymentitem['purchase_invoice_id'])
                            ->first();

                        if ($purchaseinvoice) {
                            Log::debug('Before update invoice:', [
                                'paid_amount' => $purchaseinvoice->paid_amount,
                                'owing_amount' => $purchaseinvoice->owing_amount,
                                'shortover_amount' => $purchaseinvoice->shortover_amount
                            ]);

                            $purchaseinvoice->paid_amount += $data_paymentitem['allocation_amount'] + $data_paymentitem['shortover_amount'];
                            $purchaseinvoice->owing_amount = $data_paymentitem['last_balance'];
                            $purchaseinvoice->shortover_amount += $data_paymentitem['shortover_amount'];

                            // $purchaseinvoice->save(); // Dicomment untuk debug
                            Log::debug('After update invoice:', [
                                'paid_amount' => $purchaseinvoice->paid_amount,
                                'owing_amount' => $purchaseinvoice->owing_amount,
                                'shortover_amount' => $purchaseinvoice->shortover_amount
                            ]);
                        }
                    }
                }

                $transaction_module_code = "PP";
                $transactionmodule = PreferenceTransactionModule::where('transaction_module_code', $transaction_module_code)->first();

                $data_journal = [
                    'branch_id'                     => $data['branch_id'],
                    'journal_voucher_period'        => date("Ym", strtotime($data['payment_date'])),
                    'journal_voucher_date'          => $data['payment_date'],
                    'journal_voucher_title'         => 'Pembayaran hutang ' . $purchasepayment->payment_no,
                    'journal_voucher_description'   => $data['payment_remark'],
                    'transaction_module_id'         => $transactionmodule->transaction_module_id ?? null,
                    'transaction_module_code'       => $transaction_module_code,
                    'transaction_journal_id'        => $purchasepayment->payment_id,
                    'transaction_journal_no'        => $purchasepayment->payment_no,
                    'created_id'                    => Auth::id(),
                ];

                // Mock data untuk debug
                $purchase_payment_cash_account_id = ['account_id' => 101, 'account_setting_status' => 'active'];
                $purchase_payment_account_id = ['account_id' => 202, 'account_setting_status' => 'active'];
                $total_amount = 1000; // Mock value
                $subtotal_after_ppn_in = 950; // Mock value

                $journal_items = [
                    [
                        'account_id' => $purchase_payment_cash_account_id['account_id'],
                        'description' => $data_journal['journal_voucher_description'],
                        'amount' => $total_amount,
                        'debit' => false,
                        'account_status' => $purchase_payment_cash_account_id['account_setting_status'],
                    ],
                    [
                        'account_id' => $purchase_payment_account_id['account_id'],
                        'description' => $data_journal['journal_voucher_description'],
                        'amount' => $subtotal_after_ppn_in,
                        'debit' => true,
                        'account_status' => $purchase_payment_account_id['account_setting_status'],
                    ],
                ];

                Log::debug('Journal data:', $data_journal);
                Log::debug('Journal items:', $journal_items);

                // JournalHelper::createJournal($data_journal, $journal_items); // Dicomment untuk debug

                $msg = "DEBUG MODE: Proses selesai tanpa menyimpan ke database.";
                return redirect('/purchase-payment')->with('msg', $msg);
            } else {
                throw new \Exception("Gagal membuat data pelunasan hutang.");
            }
        } catch (\Exception $e) {
            Log::error('Error in processAddPurchasePayment: ' . $e->getMessage(), [
                'trace' => $e->getTraceAsString(),
                'request' => $request->all()
            ]);

            $msg = "Tambah Pelunasan Hutang Gagal: " . $e->getMessage();
            return redirect('/purchase-payment')->with('msg', $msg);
        }
    }

    public function processVoidPurchasePayment(Request $request){

        $payment_no 			        = $request->payment_no;

        $purchasepayment                = PurchasePayment::findOrFail($request->payment_id);
        $purchasepayment->voided_remark = $request->voided_remark;
        $purchasepayment->voided_on     = date('Y-m-d H:i:s');
        $purchasepayment->voided_id     = Auth::id();
        $purchasepayment->data_state    = 2;


        if($purchasepayment->save()){
            $purchasepaymentitem 	= PurchasePaymentItem::where('payment_id', $request->payment_id)->get();

            foreach ($purchasepaymentitem as $ki => $vi){
                $purchaseinvoice = PurchaseInvoice::where('purchase_invoice_id', $vi['purchase_invoice_id'])->first();
                // print_r((float)$purchaseinvoice['paid_amount'] - ((float)$vi['allocation_amount'] + (float)$vi['shortover_amount']));
                // print_r("|||||||||");
                // print_r((float)$purchaseinvoice['owing_amount'] + ((float)$vi['allocation_amount'] + (float)$vi['shortover_amount']));
                // print_r("|||||||||");
                // print_r((float)$purchaseinvoice['shortover_amount'] - (float)$vi['shortover_amount']);exit;
                $purchaseinvoice->paid_amount       = $purchaseinvoice['paid_amount'] - ($vi['allocation_amount'] + $vi['shortover_amount']);
                $purchaseinvoice->owing_amount      = $purchaseinvoice['owing_amount'] + ($vi['allocation_amount'] + $vi['shortover_amount']);
                $purchaseinvoice->shortover_amount  = $purchaseinvoice['shortover_amount'] - $vi['shortover_amount'];

                $purchaseinvoice->save();
            }

            $journalvoucher 	    = AcctJournalVoucher::where('transaction_journal_no', $payment_no)->first();
            $journal_voucher_id 	= $journalvoucher['journal_voucher_id'];

            $acctjournalvoucheritem = AcctJournalVoucherItem::where('journal_voucher_id', $journal_voucher_id)->get();

            $journalvoucher 	            = AcctJournalVoucher::where('journal_voucher_id', $journal_voucher_id)->first();
            $journalvoucher->voided         = 1;
            $journalvoucher->voided_id      = Auth::id();
            $journalvoucher->voided_on      = date('Y-m-d H:i:s');
            $journalvoucher->voided_remark  = $request->voided_remark;
            $journalvoucher->data_state     = 2;

            if ($journalvoucher->save()){
                foreach ($acctjournalvoucheritem as $keyItem => $valItem) {
                    $journalvoucheritem = AcctJournalVoucherItem::where('journal_voucher_item_id', $valItem['journal_voucher_item_id'])->first();
                    $journalvoucheritem->data_state = 2;

                    $journalvoucheritem->save();
                }
            }

            $msg = "Pembatalan Pelunasan Hutang Berhasil";
            return redirect('/purchase-payment')->with('msg',$msg);
        }else{
            $msg = "Pembatalan Pelunasan Hutang Gagal";
            return redirect('/purchase-payment/delete/'.$request->payment_id)->with('msg',$msg);
        }
    }

    public function deleteTransferArray($record_id, $supplier_id)
    {
        $arrayBaru			= array();
        $dataArrayHeader	= Session::get('datapurchasepaymenttransfer');

        foreach($dataArrayHeader as $key=>$val){
            if($key != $record_id){
                $arrayBaru[$key] = $val;
            }
        }
        Session::forget('datapurchasepaymenttransfer');
        Session::put('datapurchasepaymenttransfer', $arrayBaru);

        return redirect('/purchase-payment/add/'.$supplier_id);
    }

    public function getTotalPpn($supplier_id){
        $ppn = PurchaseInvoice::where('data_state', 0)
        ->where('supplier_id', $supplier_id)
        ->sum('ppn_in_amount');

        return $ppn;
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

    public function getAccountName($account_id){
        $account = AcctAccount::where('data_state', 0)
        ->where('account_id', $account_id)
        ->first();

        return $account['account_name'];
    }

    public function getAccountBank($supplier_id){
        $account = CoreSupplier::where('data_state', 0)
        ->where('supplier_id', $supplier_id)
        ->first();

        return $account['supplier_bank_acct_name'];
    }

    public function getAccountNo($supplier_id){
        $account = CoreSupplier::where('data_state', 0)
        ->where('supplier_id', $supplier_id)
        ->first();

        return $account['supplier_bank_acct_no'];
    }

    public function getCoreBankName($bank_id){
        $bank = CoreBank::where('data_state', 0)
        ->where('bank_id', $bank_id)
        ->first();

        if($bank){

            return $bank['bank_name'];
        }else{
            return '';
        }
    }

    public function addCoreBank(Request $request){
        $bank_code          = $request->bank_code;
        $bank_name          = $request->bank_name;
        $account_id         = $request->account_id;
        $bank_remark        = $request->bank_remark;
        $data               = '';

        $corebank = CoreBank::create([
            'bank_code'     => $bank_code,
            'bank_name'     => $bank_name,
            'account_id'    => $account_id,
            'bank_remark'   => $bank_remark,
            'created_id'    => Auth::id()
        ]);

        $corebank = CoreBank::where('data_state', 0)
        ->get();

        $data .= "<option value=''>--Choose One--</option>";
        foreach ($corebank as $mp){
            $data .= "<option value='$mp[bank_id]'>$mp[bank_name]</option>\n";
        }

        return $data;
    }
}
