<?php

namespace App\Http\Controllers;

use App\Models\AcctAccount;
use Illuminate\Http\Request;
use App\Models\AcctAccountSetting;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;

class AcctAccountSettingController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');

    }

    public function index()
    {
        $accountlist = AcctAccount::select(DB::raw("CONCAT(account_code,' - ',account_name) AS full_account"),'account_id')
        ->where('data_state',0)
        // ->where('company_id',Auth::user()->company_id)
        ->get()
        ->pluck('full_account','account_id');

        $status = array(
            '0' => 'Debit',
            '1' => 'Kredit'
        );

        // *pembelian
        $purchase_cash_account = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'account_cash_purchase_id')
        ->first();

        $purchase_account = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'purchase_cash_account_id')
        ->first();

        $purchase_credit_account = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'account_cash_purchase_id')
        ->first();

        $purchase_account_credit = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'purchase_credit_account_id')
        ->first();

        $purchase_tax_account_id = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'purchase_tax_account_id')
        ->first();


        // *Penjualan
        $sales_cash_account = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'account_receivable_cash_account_id')
        ->first();

        $sales_account = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'sales_cash_account_id')
        ->first();

        $sales_credit_account = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'account_receivable_credit_account_id')
        ->first();

        $sales_account_credit = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'sales_credit_account_id')
        ->first();

        $sales_tax_credit = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'sales_tax_account_id')
        ->first();



        // *pengeluaran
        $expenditure_cash_account = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'expenditure_cash_account_id')
        ->first();

        $expenditure_account = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'expenditure_account_id')
        ->first();


        // *retur pembelian
        $purchase_return_cash_account = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'account_payable_return_account_id')
        ->first();

        $purchase_return_account = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'purchase_return_account_id')
        ->first();

        $consignee_cash_account = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'consignee_cash_account')
        ->first();

        $consignee_account = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'consignee_account')
        ->first();

        // *pelunasan
        $sales_collection_cash_account = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'sales_collection_cash_account_id')
        ->first();

        $sales_collection_account = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'sales_collection_account_id')
        ->first();

        $purchase_payment_cash_account = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'purchase_payment_cash_account_id')
        ->first();

        $purchase_payment_account = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'purchase_payment_account_id')
        ->first();


        return view('content.AcctAccountSetting.AcctAccountSetting',compact('purchase_cash_account','purchase_account','purchase_credit_account','purchase_account_credit','purchase_tax_account_id','sales_cash_account','sales_cash_account','sales_account','sales_credit_account','sales_account_credit','sales_tax_credit','expenditure_cash_account','expenditure_account','purchase_return_cash_account','purchase_return_account','sales_collection_cash_account','sales_collection_account','purchase_payment_cash_account','purchase_payment_account','accountlist','status'));
    }

    public function processAddAcctAccountSetting(Request $request)
    {
        // // Debugging inputs
        // echo json_encode($request->all());
        // exit;
        $data = array(
            // *pembelian

            '1_account_id'               => $request->input('account_cash_purchase_id'),
            '1_account_setting_status'   => $request->input('account_cash_purchase_status'),
            '1_account_setting_name'     => 'account_cash_purchase_id',
            '1_account_default_status'   => $this->getAccountDefault($request->input('account_cash_purchase_id')),

            '2_account_id'               => $request->input('purchase_cash_account_id'),
            '2_account_setting_status'   => $request->input('purchase_cash_account_status'),
            '2_account_setting_name'     => 'purchase_cash_account_id',
            '2_account_default_status'   => $this->getAccountDefault($request->input('purchase_cash_account_id')),

            '3_account_id'               => $request->input('account_credit_purchase_id'),
            '3_account_setting_status'   => $request->input('account_credit_purchase_status'),
            '3_account_setting_name'     => 'account_credit_purchase_id',
            '3_account_default_status'   => $this->getAccountDefault($request->input('account_credit_purchase_id')),

            '4_account_id'               => $request->input('purchase_credit_account_id'),
            '4_account_setting_status'   => $request->input('purchase_credit_account_status'),
            '4_account_setting_name'     => 'purchase_credit_account_id',
            '4_account_default_status'   => $this->getAccountDefault($request->input('purchase_credit_account_id')),

            '5_account_id'               => $request->input('purchase_tax_account_id'),
            '5_account_setting_status'   => $request->input('purchase_tax_account_status'),
            '5_account_setting_name'     => 'purchase_tax_account_id',
            '5_account_default_status'   => $this->getAccountDefault($request->input('purchase_tax_account_id')),

            '6_account_id'               => $request->input('account_payable_return_account_id'),
            '6_account_setting_status'   => $request->input('account_payable_return_account_status'),
            '6_account_setting_name'     => 'account_payable_return_account_id',
            '6_account_default_status'   => $this->getAccountDefault($request->input('account_payable_return_account_id')),

            '7_account_id'               => $request->input('purchase_return_account_id'),
            '7_account_setting_status'   => $request->input('purchase_return_account_status'),
            '7_account_setting_name'     => 'purchase_return_account_id',
            '7_account_default_status'   => $this->getAccountDefault($request->input('purchase_return_account_id')),


            // *penjualan

            '8_account_id'               => $request->input('account_receivable_cash_account_id'),
            '8_account_setting_status'   => $request->input('account_receivable_cash_account_status'),
            '8_account_setting_name'     => 'account_receivable_cash_account_id',
            '8_account_default_status'   => $this->getAccountDefault($request->input('account_receivable_cash_account_id')),

            '9_account_id'               => $request->input('sales_cash_account_id'),
            '9_account_setting_status'   => $request->input('sales_cash_account_status'),
            '9_account_setting_name'     => 'sales_cash_account_id',
            '9_account_default_status'   => $this->getAccountDefault($request->input('sales_cash_account_id')),

            '10_account_id'               => $request->input('account_receivable_credit_account_id'),
            '10_account_setting_status'   => $request->input('account_receivable_account_credit_status'),
            '10_account_setting_name'     => 'account_receivable_credit_account_id',
            '10_account_default_status'   => $this->getAccountDefault($request->input('account_receivable_credit_account_id')),

            '11_account_id'               => $request->input('sales_credit_account_id'),
            '11_account_setting_status'   => $request->input('sales_credit_account_status'),
            '11_account_setting_name'     => 'sales_credit_account_id',
            '11_account_default_status'   => $this->getAccountDefault($request->input('sales_credit_account_id')),

            '12_account_id'               => $request->input('sales_tax_account_id'),
            '12_account_setting_status'   => $request->input('sales_tax_account_status'),
            '12_account_setting_name'     => 'sales_tax_account_id',
            '12_account_default_status'   => $this->getAccountDefault($request->input('sales_tax_account_id')),

            '13_account_id'               => $request->input('expenditure_cash_account_id'),
            '13_account_setting_status'   => $request->input('expenditure_cash_account_status'),
            '13_account_setting_name'     => 'expenditure_cash_account',
            '13_account_default_status'   => $this->getAccountDefault($request->input('expenditure_cash_account_id')),

            '14_account_id'               => $request->input('expenditure_account_id'),
            '14_account_setting_status'   => $request->input('expenditure_account_status'),
            '14_account_setting_name'     => 'expenditure_account_id',
            '14_account_default_status'   => $this->getAccountDefault($request->input('expenditure_account_id')),

            // *pelunasan
            '15_account_id'               => $request->input('sales_collection_cash_account_id'),
            '15_account_setting_status'   => $request->input('sales_collection_cash_account_status'),
            '15_account_setting_name'     => 'sales_collection_cash_account_id',
            '15_account_default_status'   => $this->getAccountDefault($request->input('sales_collection_cash_account_id')),

            '16_account_id'               => $request->input('sales_collection_account_id'),
            '16_account_setting_status'   => $request->input('sales_collection_account_status'),
            '16_account_setting_name'     => 'sales_collection_account_id',
            '16_account_default_status'   => $this->getAccountDefault($request->input('sales_collection_account_id')),

            '17_account_id'               => $request->input('purchase_payment_cash_account_id'),
            '17_account_setting_status'   => $request->input('purchase_payment_cash_account_status'),
            '17_account_setting_name'     => 'purchase_payment_cash_account_id',
            '17_account_default_status'   => $this->getAccountDefault($request->input('purchase_payment_cash_account_id')),

            '18_account_id'               => $request->input('purchase_payment_account_id'),
            '18_account_setting_status'   => $request->input('purchase_payment_account_status'),
            '18_account_setting_name'     => 'purchase_payment_account_id',
            '18_account_default_status'   => $this->getAccountDefault($request->input('purchase_payment_account_id')),
        );

         // Debugging inputs
        //  echo json_encode($data);
        //  exit;

        $company_id = AcctAccountSetting::where('company_id', Auth::user()->company_id)->first();
        if(!empty($company_id)){
            for($key = 1; $key<=10;$key++){
                $data_item = array(
                    'account_id' 				=> $data[$key."_account_id"],
                    'account_setting_status'	=> $data[$key."_account_setting_status"],
                    'account_setting_name' 		=> $data[$key."_account_setting_name"],
                    'account_default_status'    => $data[$key."_account_default_status"],
                    'company_id'                => Auth::user()->company_id
                );
                AcctAccountSetting::where('account_setting_name',$data_item['account_setting_name'])
                ->where('company_id', Auth::user()->company_id)
                ->update($data_item);
            }
        } else {
            for($key = 1; $key<=10;$key++){
                $data_item = array(
                    'account_id' 				=> $data[$key."_account_id"],
                    'account_setting_status'	=> $data[$key."_account_setting_status"],
                    'account_setting_name' 		=> $data[$key."_account_setting_name"],
                    'account_default_status'    => $data[$key."_account_default_status"],
                    'company_id'                => Auth::user()->company_id
                );
                AcctAccountSetting::create($data_item);
            }
        }
        $msg = 'Setting Jurnal Berhasil';
        return redirect('/account-setting')->with('msg',$msg);

    }

    public function getAccountDefault($account_id)
    {
        $data = AcctAccount::select('*')->where('account_id', $account_id)->first();

        return $data['account_default_status'];
    }
}
