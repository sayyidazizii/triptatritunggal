<?php

namespace App\Http\Controllers;

use App\Models\User;

use App\Models\CoreCity;
use App\Models\SalesOrder;
use App\Models\InvItemType;
use App\Models\InvItemUnit;
use App\Models\CoreCustomer;
use App\Models\CoreProvince;
use App\Models\InvItemStock;
use App\Models\InvWarehouse;
use Illuminate\Http\Request;
use App\Models\SalesOrderItem;
use App\Models\SalesOrderType;
use App\Models\SalesQuotation;
use Illuminate\Support\Carbon;
use App\Models\InvItemCategory;
use Elibyy\TCPDF\Facades\TCPDF;
use Illuminate\Validation\Rule;
use App\Models\PreferenceCompany;
use App\Models\SalesQuotationItem;
use Illuminate\Support\Facades\DB;
use App\Models\SalesOrderItemStock;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Facades\Excel;
use App\Providers\RouteServiceProvider;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Storage;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use Illuminate\Support\Facades\Validator;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use PhpOffice\PhpSpreadsheet\Style\Border;
use App\Models\SalesOrderItemStockTemporary;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Worksheet\Drawing;



class SalesQuotationController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        $start_date = Session::get('start_date', date('Y-m-d'));
        $end_date = Session::get('end_date', date('Y-m-d'));

        Session::put('editarraystate', 0);
        Session::forget('salesquotationitem');
        Session::forget('salesquotationelements');

        $salesquotation = SalesQuotation::where('data_state','=',0)
        ->whereBetween('sales_quotation_date', [$start_date, $end_date])
        ->get();

        return view('content/SalesQuotation/ListSalesQuotation',compact('salesquotation', 'start_date', 'end_date'));
    }

    public function addSalesQuotation(){
        $salesquotationelements  = Session::get('salesquotationelements');
        $salesquotationitem      = Session::get('salesquotationitem');
        $invitemtype = InvItemType::where('inv_item_type.data_state','=',0)
        ->select('*')
        ->join('inv_item_category', 'inv_item_category.item_category_id', 'inv_item_type.item_category_id')
        ->join('inv_item_stock', 'inv_item_type.item_type_id', 'inv_item_stock.item_type_id')
        ->pluck('inv_item_type.item_type_name','inv_item_type.item_type_id');
        $warehouse          = InvWarehouse::where('data_state','=',0)->pluck('warehouse_name', 'warehouse_id');
        $customer           = CoreCustomer::where('data_state','=',0)->pluck('customer_name', 'customer_id');
        $itemcategory       = InvItemCategory::where('data_state','=',0)->pluck('item_category_name', 'item_category_id');
        $itemunit           = InvItemUnit::where('data_state','=',0)->pluck('item_unit_name', 'item_unit_id');
        $itemtype           = [];
        $coreprovince       = CoreProvince::where('data_state', 0)->pluck('province_name', 'province_id');
        $corecity           = CoreCity::where('data_state', 0)->pluck('city_name', 'city_id');
        $null_item_type_id  = Session::get('item_type_id');
        $ppn_out_percentage     = PreferenceCompany::select('ppn_amount_out')->first();
        return view('content/SalesQuotation/FormAddSalesQuotation',compact('ppn_out_percentage','null_item_type_id', 'warehouse', 'customer', 'itemcategory', 'itemtype', 'salesquotationitem', 'itemunit', 'salesquotationelements', 'invitemtype', 'coreprovince', 'corecity'));
    }

    public function processAddSalesQuotation(Request $request){
        $validationRules = [
            'sales_quotation_date'           => 'required',
            'customer_id'                    => 'required',
            'total_item_all'                 => 'required',
            'subtotal_after_ppn_out'         => 'required',
        ];


        $validatedData = $request->validate($validationRules);


        $salesquotation = array (
            'sales_quotation_date'           => $validatedData['sales_quotation_date'],
            'customer_id'                    => $validatedData['customer_id'],
            'total_item'                     => $validatedData['total_item_all'],
            'total_amount'                   => $validatedData['subtotal_after_ppn_out'],
            'sales_quotation_remark'         => $request->sales_quotation_remark,
            'discount_percentage'            => $request->discount_percentage,
            'discount_amount'                => $request->discount_amount,
            'subtotal_after_discount'        => $request->subtotal_after_discount,
            'ppn_out_percentage'	         => $request['ppn_out_percentage'],
            'ppn_out_amount'	             => $request['ppn_out_amount'],
            'subtotal_after_ppn_out'	     => $request['subtotal_after_ppn_out'],
            'branch_id'                      => Auth::user()->branch_id,
            'sales_quotation_due_date'       => $request['sales_quotation_due_date'],
            'approved'                       => 1,

        );

        try {
            DB::beginTransaction();

                SalesQuotation::create($salesquotation);
                    $sales_quotation_id = SalesQuotation::orderBy('created_at','DESC')->first();
                    $salesquotationitem = Session::get('salesquotationitem');
                    foreach ($salesquotationitem AS $key => $val){
                        $datasalesquotationitem = array (
                            'sales_quotation_id'            => $sales_quotation_id['sales_quotation_id'],
                            'item_category_id'              => $val['item_category_id'],
                            'item_type_id'                  => $val['item_type_id'],
                            'item_unit_id'                  => $val['item_unit_id'],
                            'quantity'                      => $val['quantity'],
                            'quantity_resulted'             => $val['quantity'],
                            'item_unit_price'               => $val['price'],
                            'subtotal_amount'               => $val['total_price'],
                            'discount_percentage_item'      => $val['discount_percentage_item'],
                            'discount_amount_item'          => $val['discount_amount_item'],
                            'subtotal_after_discount_item_a'=> $val['subtotal_after_discount_item_a'],
                            'ppn_amount_item'               => $val['ppn_amount_item'],
                            'total_price_after_ppn_amount'  => $val['total_price_after_ppn_amount'],

                        );
                        SalesQuotationItem::create($datasalesquotationitem);
                }

                $msg = 'Tambah Sales Quotation Berhasil';

            DB::commit();

                // Log the successful update
                Log::info('SalesQuotation updated successfully', [
                    'sales_quotation_id'   => $sales_quotation_id['sales_quotation_id'],
                ]);

                return redirect('/sales-quotation')->with('msg',$msg);

        } catch (\Exception $e) {
            DB::rollBack();
            Log::error('Tambah Sales Quotation Gagal: ' . $e->getMessage(), [
                'exception' => $e,
                'trace' => $e->getTraceAsString()
            ]);

            $msg = 'Tambah Sales Quotation Gagal';
            return redirect('/sales-quotation/add')->with('msg',$msg);
        }


    }

    public function processAddArraySalesQuotationItem(Request $request)
    {
        $fields = $request->validate([
            'item_category_id'              => 'required',
            'item_type_id'                  => 'required',
            'item_unit_id'                  => 'required',
            'quantity'                      => 'required',
            'price'                         => 'required',
            'total_price'                   => 'required',
        ]);

        $salesquotationitem = array(
            'item_category_id'	            => $request->item_category_id,
            'item_type_id'	                => $request->item_type_id,
            'item_unit_id'	                => $request->item_unit_id,
            'quantity'	                    => $request->quantity,
            'price'	                        => $request->price,
            'total_price'	                => $request->total_price,
            'discount_percentage_item'	    => $request->discount_percentage_item,
            'discount_amount_item'	        => $request->discount_amount_item,
            'subtotal_after_discount_item_a'=> $request->subtotal_after_discount_item_a,
            'ppn_amount_item'               => $request->ppn_amount_item,
            'total_price_after_ppn_amount'  => $request->total_price_after_ppn_amount,
        );

        $lastsalesquotationitem= Session::get('salesquotationitem');
        if($lastsalesquotationitem!== null){
            array_push($lastsalesquotationitem, $salesquotationitem);
            Session::put('salesquotationitem', $lastsalesquotationitem);
        }else{
            $lastsalesquotationitem= [];
            array_push($lastsalesquotationitem, $salesquotationitem);
            Session::push('salesquotationitem', $salesquotationitem);
        }

        Session::put('editarraystate', 1);

        return redirect('/sales-quotation/add');
    }

    public function detailSalesQuotation($sales_quotation_id)
    {
        $salesquotation= SalesQuotation::where('data_state',0)
        ->where('sales_quotation_id', $sales_quotation_id)
        ->first();

        $salesQuotationItems = SalesQuotationItem::with(['itemType', 'itemUnit'])
        ->where('data_state', 0)
        ->where('sales_quotation_id', $sales_quotation_id)
        ->get();

        return view('content/SalesQuotation/FormDetailSalesQuotation',compact('salesQuotationItems', 'salesquotation'));
    }

    public function deleteArraySalesQuotationItem ($record_id)
    {
        $arrayBaru			= array();
        $dataArrayHeader	= Session::get('salesquotationitem');

        foreach($dataArrayHeader as $key=>$val){
            if($key != $record_id){
                $arrayBaru[$key] = $val;
            }
        }
        Session::forget('salesquotationitem');
        Session::put('salesquotationitem', $arrayBaru);

        return redirect('/sales-quotation/add');
    }

    public function filterSalesQuotation(Request $request){
        $start_date     = $request->start_date;
        $end_date       = $request->end_date;

        Session::put('start_date', $start_date);
        Session::put('end_date', $end_date);

        return redirect('/sales-quotation');
    }

    public function resetFilterSalesQuotation(){
        Session::forget('start_date');
        Session::forget('end_date');

        return redirect('/sales-quotation');
    }

    public function elements_add(Request $request){
        $salesquotationelements= Session::get('salesquotationelements');
        if(!$salesquotationelements || $salesquotationelements == ''){
            $salesquotationelements['sales_quotation_date'] = '';
            $salesquotationelements['warehouse_id'] = '';
            $salesquotationelements['customer_id'] = '';
            $salesquotationelements['sales_quotation_remark'] = '';
            $salesquotationelements['sales_quotation_due_date'] = '';
        }
        $salesquotationelements[$request->name] = $request->value;
        Session::put('salesquotationelements', $salesquotationelements);
    }

    public function deleteSalesQuotation($sales_quotation_id)
    {
        $salesquotation = SalesQuotation::findOrFail($sales_quotation_id);
        $salesquotation->data_state = 1;

        if($salesquotation->save()){
            $msg = 'Hapus Sales Quotation Berhasil';
            return redirect('/sales-quotation')->with('msg',$msg);
        }else{
            $msg = 'Hapus Sales Quotation Gagal';
            return redirect('/sales-quotation')->with('msg',$msg);
        }
    }

    public function getInvItemTypeQuotation(Request $request)
    {
        $item_category_id = $request->item_category_id;
        $data = '';

        $type = InvItemType::select('*')
        ->where('inv_item_type.data_state','=',0)
        ->join('inv_item_category', 'inv_item_category.item_category_id', 'inv_item_type.item_category_id')
        ->join('inv_item_stock', 'inv_item_type.item_type_id', 'inv_item_stock.item_type_id')
        ->where('inv_item_stock.item_category_id', $item_category_id)
        ->get();

        $data .= "<option value=''>--Choose One--</option>";
        foreach ($type as $mp) {
            $data .= "<option value='$mp[item_stock_id]'>$mp[item_type_name]".'-'."$mp[item_batch_number]</option>\n";
        }

        return $data;
    }

    public function getInvItemTypeIdQuotation(Request $request)
    {
        $item_stock_id = $request->item_stock_id;
        // $data = '';

        $type = InvItemStock::select('*')
        ->where('inv_item_stock.data_state','=',0)
        ->where('inv_item_stock.item_stock_id', $item_stock_id)
        ->first();

        return $type['item_type_id'];
    }

    public function getCoreCustomerName($customer_id){
        $customer = CoreCustomer::where('data_state', 0)
        ->where('customer_id', $customer_id)
        ->first();

        return $customer['customer_name'] ?? '';
    }

    public function export($quotation_id)
    {
        // Ambil data sales quotation
        $salesquotation = SalesQuotation::with([
            'customer',
            'items.itemType',
        ])->where('data_state', 0)
        ->where('sales_quotation_id', $quotation_id)
        ->first();

        if (!$salesquotation) {
            echo "Maaf, data yang diekspor tidak ada!";
            return;
        }

        $preference_company = PreferenceCompany::first();

        // Buat objek Spreadsheet
        $spreadsheet = new Spreadsheet();
        $sheet = $spreadsheet->getActiveSheet();
        $sheet->setTitle('Quotation');

        // Set properti spreadsheet
        $spreadsheet->getProperties()->setCreator("PT. TRIPTA TRI TUNGGAL")
            ->setTitle("Quotation");

        // Header
        $sheet->mergeCells("B2:D2");
        $sheet->setCellValue("B2", "PT. TRIPTA TRI TUNGGAL");
        $sheet->getStyle("B2")->getFont()->setBold(true)->setSize(16);

        $sheet->mergeCells("B3:D3");
        $sheet->setCellValue("B3", "SERVING BETTER");

        $drawing = new Drawing();
        $drawing->setName('Logo');
        $drawing->setDescription('Logo Tripta');
        $drawing->setPath(asset('img/logo_tripta.png'));
        $drawing->setHeight(50);
        $drawing->setCoordinates('B4');
        $drawing->setOffsetX(10);
        $drawing->setWorksheet($sheet);

        $sheet->mergeCells("E2:G2");
        $sheet->setCellValue("E2", "Quote");
        $sheet->getStyle("E2")->getFont()->setBold(true)->getColor()->setRGB("3366FF");

        // Informasi Quote
        $sheet->setCellValue("E4", "Date");
        $sheet->setCellValue("E5", "Valid Until");
        $sheet->setCellValue("E6", "Quote #");
        $sheet->setCellValue("E7", "Customer");

        $sheet->setCellValue("F4", $salesquotation->sales_quotation_date);
        $sheet->setCellValue("F5", "-");
        $sheet->setCellValue("F6", "Quote #");
        $sheet->setCellValue("F7", $salesquotation->customer->customer_name);

        $sheet->getStyle("E4:E7")->getAlignment()->setHorizontal(Alignment::HORIZONTAL_RIGHT);
        $sheet->getStyle("F4:F7")->getBorders()->getBottom()->setBorderStyle(Border::BORDER_THIN);

        // Bagian Customer dan Project Description
        $sheet->mergeCells("B9:C9");
        $sheet->setCellValue("B9", "Customer:");
        $sheet->mergeCells("D9:G9");
        $sheet->setCellValue("D9", "Quote/Project Description");
        $sheet->getStyle("B9:G9")->getFont()->setBold(true)->getColor()->setRGB("FFFFFF");
        $sheet->getStyle("B9:G9")->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
        $sheet->getStyle("B9:G9")->getFill()->setFillType(Fill::FILL_SOLID)
            ->getStartColor()->setARGB('4F81BD');

        $sheet->mergeCells("B10:C15"); // Area Customer
        $sheet->mergeCells("D10:G15"); // Area Project Description

        // Tabel Deskripsi Item
        $sheet->setCellValue("B17", "Description");
        $sheet->setCellValue("E17", "QTY");
        $sheet->setCellValue("F17", "HARGA");
        $sheet->setCellValue("G17", "Line Total");

        $sheet->getStyle("B17:G17")->getFont()->setBold(true);
        $sheet->getStyle("B17:G17")->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
        $sheet->getStyle("B17:G17")->getBorders()->getAllBorders()->setBorderStyle(Border::BORDER_THIN);

        // Looping data item
        $startRow = 18; // Baris awal untuk item
        $subtotal = 0; // Inisialisasi subtotal

        foreach ($salesquotation->items as $index => $item) {
            $currentRow = $startRow + $index;
            $lineTotal = $item->quantity * $item->item_unit_price; // Hitung line total
            $subtotal += $lineTotal; // Tambahkan ke subtotal

            $sheet->mergeCells("B{$currentRow}:D{$currentRow}"); // Kolom Description memanjang
            $sheet->setCellValue("B{$currentRow}", $item->itemType->item_type_name);
            $sheet->setCellValue("E{$currentRow}", $item->quantity);
            $sheet->setCellValue("F{$currentRow}", $item->item_unit_price);
            $sheet->setCellValue("G{$currentRow}", $lineTotal);
        }

        $endRow = $startRow + count($salesquotation->items) - 1;
        $sheet->getStyle("B17:G{$endRow}")->getBorders()->getAllBorders()->setBorderStyle(Border::BORDER_THIN);

        // Hitung ringkasan total
        $discountRate = 10; // Diskon dalam persen
        $discount = $subtotal * ($discountRate / 100);
        $dpp = $subtotal - $discount;
        $vatRate = 11; // VAT dalam persen
        $vat = $dpp * ($vatRate / 100);
        $total = $dpp + $vat;

        // Bagian Special Notes and Instructions
        $sheet->mergeCells("B30:D30");
        $sheet->setCellValue("B30", "Special Notes and Instructions");
        $sheet->getStyle("B30")->getFont()->setBold(true);

        $sheet->mergeCells("B31:D35"); // Area untuk notes

        // Bagian Ringkasan Total
        $sheet->setCellValue("E30", "Subtotal");
        $sheet->setCellValue("E31", "Discount");
        $sheet->setCellValue("E32", "DPP");
        $sheet->setCellValue("E33", "VAT Rate 11%");
        $sheet->setCellValue("E34", "Total");

        $sheet->setCellValue("F30", $subtotal); // Subtotal
        $sheet->setCellValue("F31", $discount); // Discount
        $sheet->setCellValue("F32", $dpp); // DPP
        $sheet->setCellValue("F33", $vat); // VAT Rate 11%
        $sheet->setCellValue("F34", $total); // Total

        $sheet->getStyle("E30:E34")->getAlignment()->setHorizontal(Alignment::HORIZONTAL_RIGHT);
        $sheet->getStyle("F30:F34")->getBorders()->getBottom()->setBorderStyle(Border::BORDER_THIN);
        $sheet->getStyle("F30:F34")->getNumberFormat()->setFormatCode('#,##0.00');

        // Footer
        $sheet->mergeCells("B37:G37");
        $sheet->setCellValue("B37", "Silakan gunakan quotation ini hanya untuk tujuan penawaran dan tidak mengikat kecuali disetujui tertulis.");
        $sheet->getStyle("B37")->getFont()->setItalic(true)->setSize(9);

        // Pengaturan Lebar Kolom
        $sheet->getColumnDimension('B')->setWidth(20);
        $sheet->getColumnDimension('C')->setWidth(15);
        $sheet->getColumnDimension('D')->setWidth(15);
        $sheet->getColumnDimension('E')->setWidth(10);
        $sheet->getColumnDimension('F')->setWidth(12);
        $sheet->getColumnDimension('G')->setWidth(15);

        // Simpan dan Ekspor File
        $filename = 'Quotation_Template_' . date('d_M_Y') . '.xlsx';
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename="' . $filename . '"');
        header('Cache-Control: max-age=0');

        $writer = new Xlsx($spreadsheet);
        ob_clean(); // Bersihkan buffer output sebelum menulis
        $writer->save('php://output');
        exit;
    }

    public function getSelectDataUnit(Request $request){

        $item_stock_id  = $request->item_stock_id;
        $item_type_id   = InvItemStock::select('*')
        ->where('inv_item_stock.data_state','=',0)
        ->where('inv_item_stock.item_stock_id', $item_stock_id)
        //
        ->first();

        $inv_item_type= InvItemType::where('item_type_id', $item_type_id['item_type_id'])
        ->first();

        $data= '';

        if($inv_item_type != null){
            $unit1 = InvItemType::select('inv_item_type.item_unit_1','inv_item_unit.*')
            ->join('inv_item_unit', 'inv_item_unit.item_unit_id', '=', 'inv_item_type.item_unit_1')
            ->where('inv_item_type.item_unit_1', $inv_item_type['item_unit_1'])
            // ->where('inv_item_type.item_unit_2', $inv_item_type['item_unit_2'])
            // ->where('inv_item_type.item_unit_3', $inv_item_type['item_unit_3'])
            ->first();

            // return $unit1;
            $unit2 = InvItemType::select('inv_item_type.item_unit_2','inv_item_unit.*')
            ->join('inv_item_unit', 'inv_item_unit.item_unit_id', '=', 'inv_item_type.item_unit_2')
            ->where('inv_item_type.item_unit_2', $inv_item_type['item_unit_2'])
            ->first();

            $unit3 = InvItemType::select('inv_item_type.item_unit_3','inv_item_unit.*')
            ->join('inv_item_unit', 'inv_item_unit.item_unit_id', '=', 'inv_item_type.item_unit_3')
            ->where('inv_item_type.item_unit_3', $inv_item_type['item_unit_3'])
            ->first();


        $array = [];
        if($unit1){
            array_push($array, $unit1);
        }
        if($unit2){
            array_push($array, $unit2);
        }
        if($unit3){
            array_push($array, $unit3);
        }
        // $unit = array_merge($unit1, $unit2);
        // $unit4 = array_merge($unit, $unit3);


        $data .= "<option value=''>--Choose One--</option>";
        foreach ($array as $val){
            print_r($val['item_unit_id']);

            $data .= "<option value='$val[item_unit_id]'>$val[item_unit_name]</option>\n";
        }
        return $data;
        }
    }

    public function getAvailableStock(Request $request){
        $item_stock_id    = $request->item_stock_id;
        $available_stock = 0;

        $itemstock  = InvItemStock::where('inv_item_stock.data_state', 0)
        ->where('inv_item_stock.item_stock_id', $item_stock_id)
        ->sum('quantity_unit');

        $itemunitsecond = InvItemStock::join('inv_item_unit', 'inv_item_stock.item_unit_id', '=', 'inv_item_unit.item_unit_id')
        ->where('inv_item_stock.item_stock_id', $item_stock_id)
        ->first();

        if($itemstock == null){
            $return_data =  'kosong';
            return $return_data;
        }else{
            $return_data =  $itemstock . ' ' .  $itemunitsecond['item_unit_name'];
            return $return_data;
        }
    }

    public function addInvType(Request $request){

    }

    public function addCoreCustomer(Request $request){
        $customer_name              = $request->customer_name;
        $province_id                = $request->province_id;
        $city_id                    = $request->city_id;
        $customer_address           = $request->customer_address;
        $customer_home_phone        = $request->customer_home_phone;
        $customer_mobile_phone1     = $request->customer_mobile_phone1;
        $customer_mobile_phone2     = $request->customer_mobile_phone2;
        $customer_fax_number        = $request->customer_fax_number;
        $customer_email             = $request->customer_email;
        $customer_contact_person    = $request->customer_contact_person;
        $customer_id_number         = $request->customer_id_number;
        $customer_tax_no            = $request->customer_tax_no;
        $customer_payment_terms     = $request->customer_payment_terms;
        $customer_remark            = $request->customer_remark;
        $data='';

        $corecustomer = CoreCustomer::create([
            'customer_name'             => $customer_name,
            'province_id'               => $province_id,
            'city_id'                   => $city_id,
            'customer_address'          => $customer_address,
            'customer_home_phone'       => $customer_home_phone,
            'customer_mobile_phone1'    => $customer_mobile_phone1,
            'customer_mobile_phone2'    => $customer_mobile_phone2,
            'customer_fax_number'       => $customer_fax_number,
            'customer_email'            => $customer_email,
            'customer_contact_person'   => $customer_contact_person,
            'customer_id_number'        => $customer_id_number,
            'customer_tax_no'           => $customer_tax_no,
            'customer_payment_terms'    => $customer_payment_terms,
            'customer_remark'           => $customer_remark,
            'created_id'                => Auth::id()
        ]);

        $customer = CoreCustomer::where('data_state','=',0)
        ->get();

        $data .= "<option value=''>--Choose One--</option>";
        foreach ($customer as $mp){
            $data .= "<option value='$mp[customer_id]'>$mp[customer_name]</option>\n";
        }

        return $data;
    }

    public function addMenuType(Request $request){

        $fields = $request->validate([
            'item_category_id_modal'    => 'required',
            'item_unit_id_modal'        => 'required',
            'item_type_name'            => 'required',
            'quantity_unit_modal'       => 'required',
        ]);

        $item_category_id           = $request->item_category_id_modal;
        $item_unit_id               = $request->item_unit_id_modal;
        $item_type_name             = $request->item_type_name;
        $quantity_unit              = $request->quantity_unit_modal;
        $data='';

        $itemtype = InvItemType::create([
            'item_category_id'          => $item_category_id,
            'item_unit_1'               => $item_unit_id,
            'item_type_name'            => $item_type_name,
            'created_id'                => Auth::id()
        ]);

        $stock = InvItemStock::create([
            'item_type_id'              => $itemtype['item_type_id'],
            'item_category_id'          => $item_category_id,
            'item_unit_id'              => $item_unit_id,
            'item_unit_id_default'      => $item_unit_id,
            'quantity_unit'             => $quantity_unit,
            'item_stock_date'           => Carbon::now(),
            'warehouse_id'              => 1,
            'created_id'                => Auth::id()
        ]);
        $type = InvItemType::where('data_state','=',0)
        ->get();

        $data .= "<option value=''>--Choose One--</option>";
        foreach ($type as $mp){
            $data .= "<option value='$mp[item_type_id]'>$mp[item_type_name]</option>\n";
        }

        return $data;
    }

    public function addCategory(Request $request){

        $item_category_name = $request->item_category_name;
        $data='';

        $itemcategory = InvItemCategory::create([
            'item_category_name'  => $item_category_name,
            'created_id'          => Auth::id()
        ]);

        $invitemcategory = InvItemCategory::where('data_state', 0)
        ->get();

        $data .= "<option value=''>--Choose One--</option>";
        foreach ($invitemcategory as $mp){
            $data .= "<option value='$mp[item_category_id]'>$mp[item_category_name]</option>\n";
        }

        return $data;
    }

    public function addUnit(Request $request){
        $item_unit_code             = $request->item_unit_code;
        $item_unit_name             = $request->item_unit_name;
        $item_unit_remark           = $request->item_unit_remark;
        $data='';

        $invitemunit = InvItemUnit::create([
            'item_unit_code'              => $item_unit_code,
            'item_unit_name'              => $item_unit_name,
            'item_unit_remark'            => $item_unit_remark,
            'created_id'                  => Auth::id()
        ]);

        $invitemunit = InvItemUnit::where('data_state', 0)
        ->get();

        $data .= "<option value=''>--Choose One--</option>";
        foreach ($invitemunit as $mp){
            $data .= "<option value='$mp[item_unit_id]'>$mp[item_unit_name]</option>\n";
        }

        return $data;
    }

    // *pdf
    public function print($quotation_id)
    {
        // Fetch data
        $salesquotation = SalesQuotation::with([
            'customer',
            'items.itemType',
        ])->where('data_state', 0)
        ->where('sales_quotation_id', $quotation_id)
        ->first();

        if (!$salesquotation) {
            return response()->json(['error' => 'Data not found'], 404);
        }

        $preference_company = PreferenceCompany::first();

        // Create new PDF document
        $pdf = new TCPDF(PDF_PAGE_ORIENTATION, PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);

        // Set document information
        $pdf::SetCreator('PT. TRIPTA TRI TUNGGAL');
        $pdf::SetAuthor('PT. TRIPTA TRI TUNGGAL');
        $pdf::SetTitle('Quotation #' . $quotation_id);

        // Remove default header/footer
        $pdf::setPrintHeader(false);
        $pdf::setPrintFooter(false);

        // Set margins
        $pdf::SetMargins(15, 15, 15);

        // Add a page
        $pdf::AddPage();

        // Prepare HTML content
        $html = '
        <table cellpadding="5">
            <tr>
                <td width="50%">
                    <img src="' . asset('img/logo_tripta.png') . '" height="50">
                    <h1>PT. TRIPTA TRI TUNGGAL</h1>
                    <p>SERVING BETTER</p>
                </td>
                <td width="50%" style="text-align: right;">
                    <h2 style="color: #3366FF;">Quote</h2>
                    <table cellpadding="2">
                        <tr>
                            <td>Date:</td>
                            <td>' . $salesquotation->sales_quotation_date . '</td>
                        </tr>
                        <tr>
                            <td>Valid Until:</td>
                            <td>-</td>
                        </tr>
                        <tr>
                            <td>Quote #:</td>
                            <td>' . $quotation_id . '</td>
                        </tr>
                        <tr>
                            <td>Customer:</td>
                            <td>' . $salesquotation->customer->customer_name . '</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>

        <br><br>

        <table cellpadding="5" style="background-color: #4F81BD; color: white;">
            <tr>
                <td width="30%"><strong>Customer:</strong></td>
                <td width="70%"><strong>Quote/Project Description</strong></td>
            </tr>
        </table>

        <br>

        <table cellpadding="5" border="1">
            <tr style="background-color: #f5f5f5;">
                <th width="40%">Description</th>
                <th width="15%">QTY</th>
                <th width="20%">HARGA</th>
                <th width="25%">Line Total</th>
            </tr>';

        // Add items
        $subtotal = 0;
        foreach ($salesquotation->items as $item) {
            $lineTotal = $item->quantity * $item->item_unit_price;
            $subtotal += $lineTotal;

            $html .= '
            <tr>
                <td>' . $item->itemType->item_type_name . '</td>
                <td style="text-align: center;">' . $item->quantity . '</td>
                <td style="text-align: right;">' . number_format($item->item_unit_price, 2) . '</td>
                <td style="text-align: right;">' . number_format($lineTotal, 2) . '</td>
            </tr>';
        }

        // Calculate totals
        $discountRate = 10;
        $discount = $subtotal * ($discountRate / 100);
        $dpp = $subtotal - $discount;
        $vatRate = 11;
        $vat = $dpp * ($vatRate / 100);
        $total = $dpp + $vat;

        $html .= '</table>

        <br>

        <table cellpadding="5">
            <tr>
                <td width="60%">
                    <strong>Special Notes and Instructions</strong>
                    <p style="border: 1px solid #ddd; padding: 10px; min-height: 100px;"></p>
                </td>
                <td width="40%">
                    <table cellpadding="3">
                        <tr>
                            <td>Subtotal:</td>
                            <td style="text-align: right;">' . number_format($subtotal, 2) . '</td>
                        </tr>
                        <tr>
                            <td>Discount (' . $discountRate . '%):</td>
                            <td style="text-align: right;">' . number_format($discount, 2) . '</td>
                        </tr>
                        <tr>
                            <td>DPP:</td>
                            <td style="text-align: right;">' . number_format($dpp, 2) . '</td>
                        </tr>
                        <tr>
                            <td>VAT (' . $vatRate . '%):</td>
                            <td style="text-align: right;">' . number_format($vat, 2) . '</td>
                        </tr>
                        <tr>
                            <td><strong>Total:</strong></td>
                            <td style="text-align: right;"><strong>' . number_format($total, 2) . '</strong></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>

        <br><br>

        <p style="font-style: italic; font-size: 9pt;">Silakan gunakan quotation ini hanya untuk tujuan penawaran dan tidak mengikat kecuali disetujui tertulis.</p>';

        // Write HTML content
        $pdf::writeHTML($html, true, false, true, false, '');
        $filename = 'Quotation_' . date('d_M_Y') . '.pdf';
        // Close and output PDF document
        $pdf::Output($filename, 'I');
    }
}
