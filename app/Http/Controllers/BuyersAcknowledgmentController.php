<?php

namespace App\Http\Controllers;

use Log;
use App\Models\SalesOrder;
use App\Models\AcctAccount;
use App\Models\InvItemType;
use App\Models\CoreCustomer;
use App\Models\InvItemStock;
use App\Models\InvWarehouse;
use Illuminate\Http\Request;
use App\Models\SalesOrderItem;
use App\Models\SalesQuotation;
use App\Models\PreferenceCompany;
use App\Models\SalesDeliveryNote;
use App\Models\AcctAccountSetting;
use App\Models\AcctJournalVoucher;
use App\Models\SalesDeliveryOrder;
use Illuminate\Support\Facades\DB;
use App\Models\BuyersAcknowledgment;
use Illuminate\Support\Facades\Auth;
use App\Models\SalesDeliveryNoteItem;
use App\Models\AcctJournalVoucherItem;
use App\Models\SalesDeliveryOrderItem;
use Illuminate\Support\Facades\Session;
use App\Models\BuyersAcknowledgmentItem;
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

        $buyers_acknowledgment = BuyersAcknowledgment::with(['customer', 'salesDelivery'])
        ->where('data_state', 0)
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
        $salesdeliverynote= SalesDeliveryNote::with(['salesQuotation', 'items','customer'])
        ->where('data_state', 0)
        ->where('buyers_acknowledgment_status', 0)
        ->get();
        return view('content/CoreExpedition/BuyersAcknowledgment/SearchSalesDeliveryNote', compact('salesdeliverynote'));
    }

    public function addBuyersAcknowledgment($sales_delivery_note_id)
    {
        $salesdeliverynote = SalesDeliveryNote::with(['salesQuotation', 'items','customer'])
        ->where('data_state', 0)
        ->where('sales_delivery_note_id', $sales_delivery_note_id)
        ->first();
        $acctaccount = AcctAccount::where('acct_account.data_state','=','0')
        ->select('account_id', DB::raw('CONCAT(account_code, " - ", account_name) AS account_code'))
        ->pluck('account_code', 'account_id');
        $salesdeliverynoteitem = SalesDeliveryNoteItem::where('data_state', 0)
        ->where('sales_delivery_note_id', $sales_delivery_note_id)
        ->get();
        return view('content/CoreExpedition/BuyersAcknowledgment/FormAddBuyersAcknowledgment',compact('salesdeliverynote', 'sales_delivery_note_id', 'salesdeliverynoteitem', 'acctaccount'));
    }

    public function getCustomerName($customer_id){
        $customer = CoreCustomer::select('customer_name')
        ->where('customer_id', $customer_id)
        ->where('data_state', 0)
        ->first();
        return $customer['customer_name'];
    }

    public function getCategoryId($sales_order_item_id){
        $category = SalesOrderItem::select('item_category_id')
        ->where('sales_order_item_id', $sales_order_item_id)
        ->first();

        return $category['item_category_id'];
    }

    public function getItemTypeName($item_type_id)
    {
        $item = InvItemType::select('item_type_name')
            ->where('data_state', 0)
            ->where('item_type_id', $item_type_id)
            ->first();

        return $item['item_type_name'];
    }

    public function getItemUnitName($item_unit_id)
    {
        $item = InvItemUnit::select('item_unit_name')
            ->where('data_state', 0)
            ->where('item_unit_id', $item_unit_id)
            ->first();

        if ($item == null) {
            return '-';
        }

        return $item['item_unit_name'];
    }

    public function processAddBuyersAcknowledgment(Request $request)
    {
        $request->validate([
            'buyers_acknowledgment_no' => 'required',
            'buyers_acknowledgment_date' => 'required|date',
        ]);

        $salesdeliverynote = SalesDeliveryNote::with(['salesQuotation', 'items', 'customer'])
            ->where('sales_delivery_note_id', $request->sales_delivery_note_id)
            ->first();

        if (!$salesdeliverynote) {
            return redirect()->back()->withErrors(['error' => 'Sales Delivery Note tidak ditemukan']);
        }

        try {
            DB::beginTransaction();

            $buyers_acknowledgment = [
                'warehouse_id' => $salesdeliverynote->warehouse_id,
                'buyers_acknowledgment_no' => $request->buyers_acknowledgment_no,
                'sales_quotation_id' => $salesdeliverynote->salesQuotation->sales_quotation_id,
                'customer_id' => $salesdeliverynote->customer_id,
                'sales_delivery_note_id' => $salesdeliverynote->sales_delivery_note_id,
                'buyers_acknowledgment_date' => $request->buyers_acknowledgment_date,
                'buyers_acknowledgment_remark' => $request->buyers_acknowledgment_remark,
                'created_id' => Auth::id(),
            ];
            $buyersAcknowledgment = BuyersAcknowledgment::create($buyers_acknowledgment);

            $salesdeliverynoteitem = SalesDeliveryNoteItem::where('data_state', 0)
                ->where('sales_delivery_note_id', $request->sales_delivery_note_id)
                ->get();

            $total = 0;
            foreach ($salesdeliverynoteitem as $val) {
                $total += $val->quotationItem->subtotal_after_discount_item_a;
            }

            $no = 1;
            foreach ($salesdeliverynoteitem as $item) {
                BuyersAcknowledgmentItem::create([
                    'buyers_acknowledgment_id' => $buyersAcknowledgment->buyers_acknowledgment_id,
                    'sales_delivery_note_id' => $salesdeliverynote->sales_delivery_note_id,
                    'sales_delivery_note_item_id' => $item->sales_delivery_note_item_id,
                    'sales_quotaion_id' => $salesdeliverynote->salesQuotation->sales_quotation_id,
                    'sales_order_item_id' => $item->sales_order_item_id,
                    'item_category_id' => $item->item_category_id,
                    'item_type_id' => $item->item_type_id,
                    'item_unit_id' => $item->item_unit_id,
                    'item_unit_cost' => $item->item_unit_cost,
                    'item_unit_price' => $item->item_unit_price,
                    'quantity' => $item->quantity,
                    'quantity_received' => $request->input("quantity_received_$no"),
                    'created_id' => Auth::id(),
                ]);
                $no++;
            }

            SalesQuotation::where('sales_quotation_id', $salesdeliverynote->salesQuotation->sales_quotation_id)
                ->update([
                    'purchase_order_customer' => $request->purchase_order_customer,
                    'sales_quotation_status' => 3,
                ]);

            DB::commit();

            return redirect('/buyers-acknowledgment')->with('msg', 'Tambah Penerimaan Pihak Pembeli Berhasil');
        } catch (\Exception $e) {
            DB::rollBack();
            Log::error('Error saat menambah penerimaan pihak pembeli: ' . $e->getMessage(), [
                'exception' => $e,
                'trace' => $e->getTraceAsString(),
            ]);

            return redirect('/buyers-acknowledgment')->with('msg', 'Tambah Penerimaan Pihak Pembeli gagal');
        }
    }

    public function detailBuyersAcknowledgment($buyers_acknowledgment_id){
        $buyers_acknowledgment_item = BuyersAcknowledgmentItem::where('buyers_acknowledgment_item.data_state', 0)
        ->where('buyers_acknowledgment_id', $buyers_acknowledgment_id)
        ->join('sales_order', 'sales_order.sales_order_id', '=', 'buyers_acknowledgment_item.sales_order_id')
        ->get();
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
