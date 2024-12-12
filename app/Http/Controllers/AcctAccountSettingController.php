<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\AcctAccount;
use App\Models\AcctAccountSetting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

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
        ->where('company_id',Auth::user()->company_id)
        ->get()
        ->pluck('full_account','account_id');

        $status = array(
            '0' => 'Debit',
            '1' => 'Kredit'
        );

        $purchase_cash_account = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'purchase_cash_account')
        ->first();

        $purchase_account = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'purchase_account')
        ->first();

        $expenditure_cash_account = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'expenditure_cash_account')
        ->first();

        $expenditure_account = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'expenditure_account')
        ->first();

        $sales_cash_account = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'sales_cash_account')
        ->first();

        $sales_account = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'sales_account')
        ->first();

        $purchase_return_cash_account = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'purchase_return_cash_account')
        ->first();

        $purchase_return_account = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'purchase_return_account')
        ->first();

        $consignee_cash_account = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'consignee_cash_account')
        ->first();

        $consignee_account = AcctAccountSetting::select('account_id', 'account_setting_status')
        ->where('account_setting_name', 'consignee_account')
        ->first();

        return view('content.AcctAccountSetting.AcctAccountSetting',compact('consignee_cash_account','consignee_account','accountlist', 'status', 'purchase_cash_account', 'purchase_account', 'expenditure_cash_account', 'expenditure_account', 'sales_cash_account', 'sales_account', 'purchase_return_cash_account', 'purchase_return_account'));
    }

    public function processAddAcctAccountSetting(Request $request)
    {
        $data = array(
            '1_account_id'               => $request->input('purchase_cash_account_id'),
            '1_account_setting_status'   => $request->input('purchase_cash_account_status'),
            '1_account_setting_name'     => 'purchase_account',
            '1_account_default_status'   => $this->getAccountDefault($request->input('purchase_cash_account_id')),

            '2_account_id'               => $request->input('account_cash_purchase_id'),
            '2_account_setting_status'   => $request->input('account_cash_purchase_status'),
            '2_account_setting_name'     => 'purchase_cash_account',
            '2_account_default_status'   => $this->getAccountDefault($request->input('account_cash_purchase_id')),

            '3_account_id'               => $request->input('purchase_return_account_id'),
            '3_account_setting_status'   => $request->input('purchase_return_account_status'),
            '3_account_setting_name'     => 'purchase_return_account',
            '3_account_default_status'   => $this->getAccountDefault($request->input('purchase_return_account_id')),

            '4_account_id'               => $request->input('account_payable_return_account_id'),
            '4_account_setting_status'   => $request->input('account_payable_return_account_status'),
            '4_account_setting_name'     => 'purchase_return_cash_account',
            '4_account_default_status'   => $this->getAccountDefault($request->input('account_payable_return_account_id')),

            '5_account_id'               => $request->input('consignee_account_id'),
            '5_account_setting_status'   => $request->input('consignee_account_status'),
            '5_account_setting_name'     => 'consignee_account',
            '5_account_default_status'   => $this->getAccountDefault($request->input('consignee_account_id')),

            '6_account_id'               => $request->input('consignee_cash_account_id'),
            '6_account_setting_status'   => $request->input('consignee_cash_account_status'),
            '6_account_setting_name'     => 'consignee_cash_account',
            '6_account_default_status'   => $this->getAccountDefault($request->input('consignee_cash_account_id')),

            '7_account_id'               => $request->input('sales_account_id'),
            '7_account_setting_status'   => $request->input('sales_account_status'),
            '7_account_setting_name'     => 'sales_account',
            '7_account_default_status'   => $this->getAccountDefault($request->input('sales_account_id')),

            '8_account_id'               => $request->input('account_receivable_account_id'),
            '8_account_setting_status'   => $request->input('account_receivable_account_status'),
            '8_account_setting_name'     => 'sales_cash_account',
            '8_account_default_status'   => $this->getAccountDefault($request->input('account_receivable_account_id')),

            '9_account_id'               => $request->input('expenditure_account_id'),
            '9_account_setting_status'   => $request->input('expenditure_account_status'),
            '9_account_setting_name'     => 'expenditure_account',
            '9_account_default_status'   => $this->getAccountDefault($request->input('expenditure_account_id')),

            '10_account_id'               => $request->input('expenditure_cash_account_id'),
            '10_account_setting_status'   => $request->input('expenditure_cash_account_status'),
            '10_account_setting_name'     => 'expenditure_cash_account',
            '10_account_default_status'   => $this->getAccountDefault($request->input('expenditure_cash_account_id')),
        );

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
        $data = AcctAccount::where('account_id', $account_id)->first();

        return $data['account_default_status'];
    }
}
