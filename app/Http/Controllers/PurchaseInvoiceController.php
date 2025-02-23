<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\AcctAccount;
use App\Models\InvItemType;
use App\Models\InvItemUnit;
use App\Models\CoreSupplier;
use App\Models\InvWarehouse;
use Illuminate\Http\Request;
use App\Models\PurchaseOrder;
use App\Models\InvItemCategory;
use App\Models\PurchaseInvoice;
use App\Models\PreferenceCompany;
use App\Models\PurchaseOrderItem;
use App\Models\AcctJournalVoucher;
use Illuminate\Support\Facades\DB;
use App\Models\PurchaseInvoiceItem;
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
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use App\Models\PreferenceTransactionModule;
use PhpOffice\PhpSpreadsheet\Style\Alignment;

class PurchaseInvoiceController extends Controller
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

        $supplier_id = Session::get('supplier_id');

        Session::forget('purchaseinvoiceitem');
        Session::forget('purchaseinvoiceelements');

        $purchaseinvoice = PurchaseInvoice::join('purchase_order', 'purchase_order.purchase_order_id', 'purchase_invoice.purchase_order_id')
        ->where('purchase_invoice.data_state','=',0)
        ->where('purchase_invoice.purchase_invoice_date', '>=', $start_date)
        ->where('purchase_invoice.purchase_invoice_date', '<=', $end_date);
        if($supplier_id||$supplier_id!=null||$supplier_id!=''){
            $purchaseinvoice   = $purchaseinvoice->where('purchase_invoice.supplier_id', $supplier_id);
        }
        $purchaseinvoice       = $purchaseinvoice->get();

        $supplier = CoreSupplier::select('supplier_id', 'supplier_name')
        ->where('data_state', 0)
        ->pluck('supplier_name', 'supplier_id');

        return view('content/PurchaseInvoice/ListPurchaseInvoice',compact('purchaseinvoice', 'start_date', 'end_date', 'supplier_id', 'supplier'));
    }

    public function filterPurchaseInvoice(Request $request){
        $start_date     = $request->start_date;
        $end_date       = $request->end_date;
        $supplier_id       = $request->supplier_id;

        Session::put('start_date', $start_date);
        Session::put('end_date', $end_date);
        Session::put('supplier_id', $supplier_id);

        return redirect('/purchase-invoice');
    }

    public function resetFilterPurchaseInvoice(){
        Session::forget('start_date');
        Session::forget('end_date');
        Session::forget('supplier_id');

        return redirect('/purchase-invoice');

    }

    public function search()
    {
        $purchaseorder = PurchaseOrder::where('data_state', 0)
        ->where('approved', 1)
        ->where('purchase_invoice_status', 0)
        ->get();


        return view('content/PurchaseInvoice/SearchPurchaseOrder',compact('purchaseorder'));
    }

    public function searchGoodsReceivedNote()
    {
        $goodsreceivednote = InvGoodsReceivedNote::where('inv_goods_received_note.data_state', 0)
        ->join('purchase_order', 'purchase_order.purchase_order_id', 'inv_goods_received_note.purchase_order_id')
        ->where('inv_goods_received_note.goods_received_note_status_invoice', 0)
        // ->where('purchase_order.purchase_order_type_id', 2)
        ->get();


        return view('content/PurchaseInvoice/SearchGoodsReceivedNote',compact('goodsreceivednote'));
    }

    public function addPurchaseInvoicePurchaseOrder($purchase_order_id)
    {
        $purchaseorder = PurchaseOrder::findOrFail($purchase_order_id);

        $purchaseorderitem = PurchaseOrderItem::select('purchase_order_item.*')
        ->where('data_state', 0)
        ->where('purchase_order_id', $purchase_order_id)
        ->get();

        $invgoodsreceivednote = InvGoodsReceivedNote::select('inv_goods_received_note.*')
        ->where('data_state', 0)
        ->where('purchase_order_id', $purchase_order_id)
        ->first();

        // print_r($invgoodsreceivednote);exit;

        return view('content/PurchaseInvoice/FormAddPurchaseInvoice',compact('purchaseorder', 'purchaseorderitem', 'invgoodsreceivednote', 'purchase_order_id'));
    }

    public function addPurchaseInvoice($goods_received_note_id)
    {
        $goodsreceivednote = InvGoodsReceivedNote::findOrFail($goods_received_note_id);

        $goodsreceivednoteitem = InvGoodsReceivedNoteItem::select('inv_goods_received_note_item.*')
        ->where('data_state', 0)
        ->where('goods_received_note_id', $goods_received_note_id)
        ->get();

        $purchaseorder = PurchaseOrder::where('purchase_order_id', $goodsreceivednote['purchase_order_id'])
        ->where('data_state', 0)
        ->first();

        // print_r($invgoodsreceivednote);exit;

        return view('content/PurchaseInvoice/FormAddPurchaseInvoice',compact('goodsreceivednote', 'goodsreceivednoteitem', 'goods_received_note_id', 'purchaseorder'));
    }

    public function editPurchaseInvoice($purchase_invoice_id)
    {
        $purchaseinvoice = PurchaseInvoice::findOrFail($purchase_invoice_id);

        $purchaseorder = PurchaseOrder::where('purchase_order_id', $purchaseinvoice['purchase_order_id'])
        ->where('data_state', 0)
        ->first();

        $purchaseinvoiceitem = PurchaseInvoiceItem::select('purchase_invoice_item.*')
        ->where('data_state', 0)
        ->where('purchase_invoice_id', $purchase_invoice_id)
        ->get();

        $invgoodsreceivednote = InvGoodsReceivedNote::select('inv_goods_received_note.*')
        ->where('data_state', 0)
        ->where('purchase_order_id', $purchaseinvoice['purchase_order_id'])
        ->first();

        return view('content/PurchaseInvoice/FormEditPurchaseInvoice',compact('purchaseinvoice', 'purchaseinvoiceitem', 'invgoodsreceivednote', 'purchaseorder', 'purchase_invoice_id'));
    }

    public function detailPurchaseInvoice($purchase_invoice_id)
    {
        $purchaseinvoice = PurchaseInvoice::findOrFail($purchase_invoice_id);

        $purchaseorder = PurchaseOrder::where('purchase_order_id', $purchaseinvoice['purchase_order_id'])
        ->where('data_state', 0)
        ->first();

        $purchaseinvoiceitem = PurchaseInvoiceItem::select('purchase_invoice_item.*')
        ->where('data_state', 0)
        ->where('purchase_invoice_id', $purchase_invoice_id)
        ->get();

        $invgoodsreceivednote = InvGoodsReceivedNote::select('inv_goods_received_note.*')
        ->where('data_state', 0)
        ->where('purchase_order_id', $purchaseinvoice['purchase_order_id'])
        ->first();

        return view('content/PurchaseInvoice/FormDetailPurchaseInvoice',compact('purchaseinvoice', 'purchaseinvoiceitem', 'invgoodsreceivednote', 'purchaseorder', 'purchase_invoice_id'));
    }

    public function voidPurchaseInvoice($purchase_invoice_id)
    {
        $purchaseinvoice = PurchaseInvoice::findOrFail($purchase_invoice_id);

        $purchaseorder = PurchaseOrder::where('purchase_order_id', $purchaseinvoice['purchase_order_id'])
        ->where('data_state', 0)
        ->first();

        $purchaseinvoiceitem = PurchaseInvoiceItem::select('purchase_invoice_item.*')
        ->where('data_state', 0)
        ->where('purchase_invoice_id', $purchase_invoice_id)
        ->get();

        $invgoodsreceivednote = InvGoodsReceivedNote::select('inv_goods_received_note.*')
        ->where('data_state', 0)
        ->where('purchase_order_id', $purchaseinvoice['purchase_order_id'])
        ->first();

        return view('content/PurchaseInvoice/FormVoidPurchaseInvoice',compact('purchaseinvoice', 'purchaseinvoiceitem', 'invgoodsreceivednote', 'purchaseorder', 'purchase_invoice_id'));
    }

    public function processAddPurchaseInvoice(Request $request){
        $fields = $request->validate([
            'purchase_invoice_date' => 'required',
            'purchase_invoice_due_date' => 'required',
        ]);

        $purchaseorderitem = PurchaseOrderItem::select('purchase_order_item.*')
        ->where('data_state', 0)
        ->where('purchase_order_id', $request->purchase_order_id)
        ->get();

        $goodsreceivednoteitem = InvGoodsReceivedNoteItem::select('inv_goods_received_note_item.*')
        ->where('data_state', 0)
        ->where('goods_received_note_id', $request->goods_received_note_id)
        ->get();

        $purchaseinvoice = array(
            'purchase_order_id'	        => $request->purchase_order_id,
            'goods_received_note_id'	=> $request->goods_received_note_id,
            'purchase_invoice_date'	    => $request->purchase_invoice_date,
            'purchase_invoice_remark'	=> $request->purchase_invoice_remark,
            'subtotal_item'	            => $request->total_item,
            'subtotal_amount'	        => $request->total_amount + $request->ppn_in_amount,
            'total_amount'	            => $request->total_amount + $request->ppn_in_amount,
            'owing_amount'	            => $request->total_amount + $request->ppn_in_amount,
            'ppn_in_amount'             => $request->ppn_in_amount,
            'supplier_id'	            => $request->supplier_id,
            'warehouse_id'	            => $request->warehouse_id,
            'purchase_invoice_due_date' => $request->purchase_invoice_due_date,
            'branch_id'	                => Auth::user()->branch_id,
            'created_id'                => Auth::id(),
        );
        //dd($purchaseinvoice);
        try {
            DB::beginTransaction();

            PurchaseInvoice::create($purchaseinvoice);

                $goodsreceivednote = InvGoodsReceivedNote::findOrFail($request->goods_received_note_id);
                $goodsreceivednote->goods_received_note_status_invoice = 1;
                $goodsreceivednote->save();

                $purchase_invoice_id = PurchaseInvoice::select('*')
                ->orderBy('created_at', 'DESC')
                ->first();
                $no = 0;
                foreach($goodsreceivednoteitem as $val){
                    $purchaseorderitem = PurchaseOrderItem::where('purchase_order_item_id', $val['purchase_order_item_id'])
                    ->first();

                    $purchaseinvoiceitem = array(
                        'purchase_invoice_id'           => $purchase_invoice_id['purchase_invoice_id'],
                        'goods_received_note_item_id'   => $val['goods_received_note_item_id'],
                        'item_id'                       => $val['item_id'],
                        'item_category_id'              => $val['item_category_id'],
                        'item_type_id'                  => $val['item_type_id'],
                        'item_unit_id'                  => $val['item_unit_id'],
                        'item_unit_cost'                => $purchaseorderitem['item_unit_cost'],
                        'quantity'                      => $val['quantity'],
                        'subtotal_amount'               => $val['quantity']*$purchaseorderitem['item_unit_cost'],
                        'created_id'                    => Auth::id(),
                    );

                    PurchaseInvoiceItem::create($purchaseinvoiceitem);

                    $no++;
                }

                $total_amount               = $request->total_amount;

                $msg = 'Tambah Purchase Invoice Berhasil';

            DB::commit();

                return redirect('/purchase-invoice')->with('msg',$msg);
        } catch (\Exception $e) {
            DB::rollBack();
            Log::error('Error Descriptions: ' . $e->getMessage(), [
                'exception' => $e,
                'trace' => $e->getTraceAsString()
            ]);
            $msg = 'Tambah Purchase Invoice Gagal';
            return redirect('/purchase-invoice')->with('msg',$msg);
        }

    }

    public function processEditPurchaseInvoice(Request $request){
        $fields = $request->validate([
            'purchase_invoice_no'   => 'required',
            'purchase_invoice_id'   => 'required',
            'purchase_invoice_date' => 'required',
        ]);

        $purchaseinvoice = PurchaseInvoice::findOrFail($request->purchase_invoice_id);
        $purchaseinvoice->purchase_invoice_no = $request->purchase_invoice_no;
        $purchaseinvoice->purchase_invoice_date = $request->purchase_invoice_date;
        $purchaseinvoice->purchase_invoice_due_date = $request->purchase_invoice_due_date;
        $purchaseinvoice->faktur_tax_no = $request->faktur_tax_no;
        $purchaseinvoice->purchase_invoice_remark = $request->purchase_invoice_remark;

        if($purchaseinvoice->save()){
            $msg = 'Edit Purchase Invoice Berhasil';
            return redirect('/purchase-invoice')->with('msg',$msg);
        }else{
            $msg = 'Edit Purchase Invoice Gagal';
            return redirect('/purchase-invoice/add/'.$fields['purchase_order_id'])->with('msg',$msg);
        }
    }

    public function processVoidPurchaseInvoice(Request $request){
        $fields = $request->validate([
            'purchase_invoice_id'   => 'required',
        ]);

        $purchaseinvoice = PurchaseInvoice::findOrFail($request->purchase_invoice_id);
        $purchaseinvoice->voided_id     = Auth::id();
        $purchaseinvoice->voided_on     = date('Y-m-d');
        $purchaseinvoice->data_state    = 1;

        if($purchaseinvoice->save()){
            $goodsreceivednote = InvGoodsReceivedNote::where('goods_received_note_id', $purchaseinvoice['goods_received_note_id'])
            ->first();

            $goodsreceivednote->goods_received_note_status_invoice = 0;
            $goodsreceivednote->save();

            $purchaseinvoiceitem = PurchaseInvoiceItem::where('purchase_invoice_id', $request->purchase_invoice_id)->get();
            foreach($purchaseinvoiceitem as $val){
                $dataitem = PurchaseInvoiceItem::where('purchase_invoice_item_id', $val['purchase_invoice_item_id'])->first();
                $dataitem->data_state = 1;
                $dataitem->save();
            }

            $msg = 'Void Purchase Invoice Berhasil';
            return redirect('/purchase-invoice')->with('msg',$msg);
        }else{
            $msg = 'Void Purchase Invoice Gagal';
            return redirect('/purchase-invoice/add/'.$fields['purchase_order_id'])->with('msg',$msg);
        }
    }

    public function getSupplierName($supplier_id){
        $supplier = CoreSupplier::select('supplier_name')
        ->where('data_state', 0)
        ->where('supplier_id', $supplier_id)
        ->first();

        return $supplier['supplier_name'];
    }

    public function getPurchaseOrderItem($goods_received_note_item_id){
        $goodsreceivednoteitem = InvGoodsReceivedNoteItem::select('purchase_order_item.*')
        ->join('purchase_order_item', 'purchase_order_item.purchase_order_item_id', 'inv_goods_received_note_item.purchase_order_item_id')
        ->where('inv_goods_received_note_item.goods_received_note_item_id', $goods_received_note_item_id)
        ->first();

        return $goodsreceivednoteitem;
    }

    public function getWarehouseName($warehouse_id){
        $warehouse = InvWarehouse::select('warehouse_name')
        ->where('data_state', 0)
        ->where('warehouse_id', $warehouse_id)
        ->first();

        return $warehouse['warehouse_name'];
    }

    public function getItemCategoryName($item_category_id) {
        $item = InvItemCategory::select('item_category_name')
            ->where('data_state', 0)
            ->where('item_category_id', $item_category_id)
            ->first();

        return $item ? $item['item_category_name'] : 'Item Category Not Found';
    }

    public function getItemTypeName($item_type_id) {
        $item = InvItemType::select('item_type_name')
            ->where('data_state', 0)
            ->where('item_type_id', $item_type_id)
            ->first();

        return $item ? $item['item_type_name'] : 'Item Type Not Found';
    }

    public function getItemUnitName($item_unit_id){
        $item = InvItemUnit::select('item_unit_name')
        ->where('data_state', 0)
        ->where('item_unit_id', $item_unit_id)
        ->first();

        return $item['item_unit_name'];
    }
    public function getPurchaseInvoiceItems($purchaseInvoiceId)
    {
        return PurchaseInvoiceItem::select('item_category_id', 'item_type_id', 'item_unit_id', 'item_unit_cost','subtotal_amount', 'quantity')
            ->where('purchase_invoice_id', $purchaseInvoiceId)
            ->get()
            ->toArray();
    }

    public function export(){
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

        $supplier_id = Session::get('supplier_id');
        Session::forget('purchaseinvoiceitem');
        Session::forget('purchaseinvoiceelements');

        $purchaseinvoice = PurchaseInvoice::join('purchase_order', 'purchase_order.purchase_order_id', 'purchase_invoice.purchase_order_id')
        ->where('purchase_invoice.data_state','=',0)
        ->where('purchase_invoice.purchase_invoice_date', '>=', $start_date)
        ->where('purchase_invoice.purchase_invoice_date', '<=', $end_date);
        if($supplier_id||$supplier_id!=null||$supplier_id!=''){
            $purchaseinvoice   = $purchaseinvoice->where('purchase_invoice.supplier_id', $supplier_id);
        }
        $purchaseinvoice       = $purchaseinvoice->get();

        $purchaseinvoiceitem = [];
        foreach ($purchaseinvoice as $purchase) {
            $currentPurchaseInvoiceId = $purchase->purchase_invoice_id;
            $currentPurchaseInvoiceItems = PurchaseInvoiceItem::select('item_category_id', 'item_type_id', 'item_unit_id', 'item_unit_cost', 'subtotal_amount', 'quantity')
                ->where('data_state', 0)
                ->where('purchase_invoice_id', $currentPurchaseInvoiceId)
                ->get()
                ->toArray();

            foreach ($currentPurchaseInvoiceItems as &$item) {
                $item['purchase_invoice_id'] = $currentPurchaseInvoiceId;
            }
            $purchaseinvoiceitem[$currentPurchaseInvoiceId] = $currentPurchaseInvoiceItems;
        }
        $itemCategoryIds = [];
        $itemTypeIds = [];
        $itemUnitIds = [];
        $itemUnitCostIds = [];
        $subtotalAmountsIds = [];

        foreach ($purchaseinvoiceitem as $purchaseInvoiceId => $items) {
            $itemCategoryIds[$purchaseInvoiceId] = array_unique(array_column($items, 'item_category_id'));
            $itemTypeIds[$purchaseInvoiceId] = array_unique(array_column($items, 'item_type_id'));
            $itemUnitIds[$purchaseInvoiceId] = array_unique(array_column($items, 'item_unit_id'));
            $itemUnitCostIds[$purchaseInvoiceId] = array_unique(array_column($items, 'item_unit_cost'));
            $subtotalAmountsIds[$purchaseInvoiceId] = array_sum(array_column($items, 'subtotal_amount'));
        }

        $supplier = CoreSupplier::select('supplier_id', 'supplier_name')
        ->where('data_state', 0)
        ->pluck('supplier_name', 'supplier_id');
         $preference_company         = PreferenceCompany::first();

       $spreadsheet = new Spreadsheet();
       if(count($purchaseinvoice)>=0){
           $spreadsheet->getProperties()->setCreator("TRADING SYSTEM")
               ->setLastModifiedBy("TRADING SYSTEM")
               ->setTitle("Sales Promotion")
               ->setSubject("")
               ->setDescription("Sales Promotion")
               ->setKeywords("Sales Promotion")
               ->setCategory("Sales Promotion");

           $sheet = $spreadsheet->getActiveSheet(0);
           $spreadsheet->getActiveSheet()->setTitle("Sales Promotion");
           $spreadsheet->getActiveSheet()->getPageSetup()->setFitToWidth(1);
           $spreadsheet->getActiveSheet()->getPageSetup()->setFitToWidth(1);
           $spreadsheet->getActiveSheet()->getColumnDimension('B')->setWidth(5);
           $spreadsheet->getActiveSheet()->getColumnDimension('C')->setWidth(20);
           $spreadsheet->getActiveSheet()->getColumnDimension('D')->setWidth(25);
           $spreadsheet->getActiveSheet()->getColumnDimension('E')->setWidth(20);
           $spreadsheet->getActiveSheet()->getColumnDimension('F')->setWidth(20);
           $spreadsheet->getActiveSheet()->getColumnDimension('G')->setWidth(20);
           $spreadsheet->getActiveSheet()->getColumnDimension('H')->setWidth(25);
           $spreadsheet->getActiveSheet()->getColumnDimension('I')->setWidth(20);
           $spreadsheet->getActiveSheet()->getColumnDimension('J')->setWidth(20);
           $spreadsheet->getActiveSheet()->getColumnDimension('K')->setWidth(20);
           $spreadsheet->getActiveSheet()->getColumnDimension('L')->setWidth(20);
           $spreadsheet->getActiveSheet()->getColumnDimension('M')->setWidth(20);

           $spreadsheet->getActiveSheet()->mergeCells("B5:M5");
           $spreadsheet->getActiveSheet()->mergeCells("B6:M6");
           $spreadsheet->getActiveSheet()->mergeCells("B7:M7");
           $spreadsheet->getActiveSheet()->mergeCells("B8:M8");
           $spreadsheet->getActiveSheet()->mergeCells("B9:M9");
           $spreadsheet->getActiveSheet()->mergeCells("B10:M10");
           $spreadsheet->getActiveSheet()->mergeCells("B11:M11");
           $spreadsheet->getActiveSheet()->getStyle('B5')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
           $spreadsheet->getActiveSheet()->getStyle('B6')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
           $spreadsheet->getActiveSheet()->getStyle('B7')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
           $spreadsheet->getActiveSheet()->getStyle('B8')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
           $spreadsheet->getActiveSheet()->getStyle('B9')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
           $spreadsheet->getActiveSheet()->getStyle('B10')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
           $spreadsheet->getActiveSheet()->getStyle('B11')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
           $spreadsheet->getActiveSheet()->getStyle('B11')->getFont()->setBold(true)->setSize(16);
           $spreadsheet->getActiveSheet()->getStyle('B12:M12')->getBorders()->getAllBorders()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN);
           $spreadsheet->getActiveSheet()->getStyle('B12:M12')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);

           $sheet->setCellValue('B5', "PBF MENJANGAN ENAM ");
           $sheet->setCellValue('B6', "Jl.Puspowarno Raya No 55D Bojong Salaman,Semarang Barat");
           $sheet->setCellValue('B7', "APA : ISTI RAHMADANI,S.Farm, Apt.");
           $sheet->setCellValue('B8', " SIKA: 449.2/16/DPM-PTSP/SIKA.16/III/2019 ");
           $sheet->setCellValue('B9', "");
           $sheet->setCellValue('B10', "");
           $sheet->setCellValue('B11', "LAPORAN PEMBELIAN TANGGAL ".$start_date." - ".$end_date);
           $sheet->setCellValue('B12', "No");
           $sheet->setCellValue('C12', "NAMA PEMASOK");
           $sheet->setCellValue('D12', "NO INVOICE");
           $sheet->setCellValue('E12', "TGL PO");
           $sheet->setCellValue('F12', "TGL INVOICE");
           $sheet->setCellValue('G12', "TGL JATUH TEMPO");
           $sheet->setCellValue('H12', "KATEGORI");
           $sheet->setCellValue('I12', "NAMA BARANG");
           $sheet->setCellValue('J12', "SATUAN");
           $sheet->setCellValue('K12', "QUANTITY");
           $sheet->setCellValue('L12', "HARGA SATUAN");
           $sheet->setCellValue('M12', "TOTAL");

           $j  = 13;

           if(count($purchaseinvoice)==0){
            $lastno = 2;
            $lastj = 13;
        }else{
            $overallSubtotalTotal = 0;
            $no = 1;
            foreach ($purchaseinvoice as $key => $val) {
                $supplierName = $this->getSupplierName($val['supplier_id']);
                $sheet->setCellValue('B'.$j, $no);
                $sheet->setCellValue('C'.$j, $supplierName);
                $sheet->setCellValue('D'.$j, $val['purchase_invoice_no']);
                $sheet->setCellValue('E'.$j, $val['purchase_order_date']);
                $sheet->setCellValue('F'.$j, $val['purchase_invoice_date']);
                $sheet->setCellValue('G'.$j, $val['purchase_invoice_due_date']);
                $sheet->getStyle('B'.$j.':M'.$j)->getBorders()->getAllBorders()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN);

                $purchaseInvoiceId = $val['purchase_invoice_id'];
                $invoiceItems = $this->getPurchaseInvoiceItems($purchaseInvoiceId);

                $subtotalTotal = 0;
                foreach ($invoiceItems as $item) {
                    $supplierName = $this->getSupplierName($val['supplier_id']);
                    $sheet->setCellValue('B'.$j, $no);
                    $sheet->setCellValue('C'.$j, $supplierName);
                    $sheet->setCellValue('D'.$j, $val['purchase_invoice_no']);
                    $sheet->setCellValue('E'.$j, $val['purchase_order_date']);
                    $sheet->setCellValue('F'.$j, $val['purchase_invoice_date']);
                    $sheet->setCellValue('G'.$j, $val['purchase_invoice_due_date']);
                    $categoryName = $this->getItemCategoryName($item['item_category_id']);
                    $typeName = $this->getItemTypeName($item['item_type_id']);
                    $unitName = $this->getItemUnitName($item['item_unit_id']);

                    $sheet->setCellValue('H'.$j, $categoryName);
                    $sheet->setCellValue('I'.$j, $typeName);
                    $sheet->setCellValue('J'.$j, $unitName);
                    $sheet->setCellValue('K'.$j, $item['quantity']);
                    $sheet->setCellValue('L'.$j, number_format($item['item_unit_cost'], 2, ',', '.'));
                    $sheet->setCellValue('M'.$j, number_format($item['subtotal_amount'], 2, ',',));

                    $subtotalTotal += $item['subtotal_amount'];
                    $sheet->getStyle('B'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
                    $sheet->getStyle('J'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
                    $sheet->getStyle('K'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
                    $sheet->getStyle('L'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_LEFT);
                    $sheet->getStyle('M'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_LEFT);
                    $overallSubtotalTotal += $subtotalTotal; for ($col = 'B'; $col <= 'M'; $col++) {
                        $sheet->getStyle($col.$j)->getBorders()->getAllBorders()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN);
                    }
                    $no++;
                    $j++;
                }
                $lastno = $no;
                $lastj = $j;
            }

            $sheet = $spreadsheet->getActiveSheet(0);
            $spreadsheet->getActiveSheet()->getStyle('B'.$lastj.':M'.$lastj)->getBorders()->getOutline()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN);
            $sheet->setCellValue('L' . $lastj , 'Jumlah Total : ');
            $sheet->setCellValue('M' . $lastj , number_format($overallSubtotalTotal, 2, ',', '.'));
            $sheet->setCellValue('F' . $lastj + 1, 'Mengetahui');
            $sheet->setCellValue('K' . $lastj + 1, 'Dibuat Oleh');

            $spreadsheet->getActiveSheet()->getStyle('E'.$lastj + 5)->getBorders()->getTop()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN);
            $spreadsheet->getActiveSheet()->getStyle('E'.$lastj + 5)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
            $spreadsheet->getActiveSheet()->getStyle('G'.$lastj + 5)->getBorders()->getTop()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN);
            $spreadsheet->getActiveSheet()->getStyle('K'.$lastj + 5)->getBorders()->getTop()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN);

            $sheet->setCellValue('E' . $lastj + 5, 'Apoteker');
            $sheet->setCellValue('G' . $lastj + 5, 'Administrasi Pajak');
            $sheet->setCellValue('K' . $lastj + 5, 'Dibuat Oleh');

          }
           ob_clean();
           $filename='PURCHASE INVOICE '.date('d M Y').'.xls';
           header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
           header('Content-Disposition: attachment;filename="'.$filename.'"');
           header('Cache-Control: max-age=0');
           $writer = \PhpOffice\PhpSpreadsheet\IOFactory::createWriter($spreadsheet, 'Xls');
           $writer->save('php://output');
       }else{
           echo "Maaf data yang di eksport tidak ada !";
       }
    }
}
