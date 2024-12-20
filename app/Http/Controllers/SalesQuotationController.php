<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\Models\CoreProvince;
use App\Models\CoreCity;
use App\Models\SalesOrder;
use App\Models\SalesOrderItem;
use App\Models\SalesOrderType;
use App\Models\PreferenceCompany;
use App\Models\SalesOrderItemStock;
use App\Models\SalesOrderItemStockTemporary;
use App\Models\InvWarehouse;
use App\Models\CoreCustomer;
use App\Models\InvItemCategory;
use Illuminate\Validation\Rule;
use App\Models\InvItemUnit;
use App\Models\InvItemType;
use App\Models\InvItemStock;
use App\Models\SalesQuotation;
use App\Models\SalesQuotationItem;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use Maatwebsite\Excel\Facades\Excel;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\Border;
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
            // echo json_encode($itemtype);exit;

        $coreprovince       = CoreProvince::where('data_state', 0)->pluck('province_name', 'province_id');
        $corecity           = CoreCity::where('data_state', 0)->pluck('city_name', 'city_id');

        $null_item_type_id = Session::get('item_type_id');
        $ppnOut            = PreferenceCompany::select('ppn_amount_out')->first();

        return view('content/SalesQuotation/FormAddSalesQuotation',compact('ppnOut','null_item_type_id', 'warehouse', 'customer', 'itemcategory', 'itemtype', 'salesquotationitem', 'itemunit', 'salesquotationelements', 'invitemtype', 'coreprovince', 'corecity'));
    }

    public function processAddSalesQuotation(Request $request){
        $validationRules = [
            'sales_quotation_date'           => 'required',
            'customer_id'                    => 'required',
            'total_item_all'                 => 'required',
            'total_price_all'                => 'required',
        ];


        $validatedData = $request->validate($validationRules);


        $salesquotation = array (
            'sales_quotation_date'           => $validatedData['sales_quotation_date'],
            'customer_id'                    => $validatedData['customer_id'],
            'total_item'                     => $validatedData['total_item_all'],
            'total_amount'                   => $validatedData['total_price_all'],
            'sales_quotation_remark'         => $request->sales_quotation_remark,
            'discount_percentage'            => $request->discount_percentage,
            'discount_amount'                => $request->discount_amount,
            'subtotal_after_discount'        => $request->subtotal_after_discount,
            'ppn_out_percentage'	         => $request['ppn_out_percentage'],
            'ppn_out_amount'	             => $request['ppn_out_amount'],
            'subtotal_after_ppn_out'	     => $request['subtotal_after_ppn_out'],
            'branch_id'                      => Auth::user()->branch_id,
            'sales_quotation_due_date'       => $request['sales_quotation_due_date'],
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

                // Log the successful update
                Log::info('SalesQuotation updated successfully', [
                    'sales_quotation_id'   => $sales_quotation_id['sales_quotation_id'],
                ]);

                $msg = 'Tambah Sales Quotation Berhasil';
            
            DB::commit();

                return redirect('/sales-quotation')->with('msg',$msg);
                
        } catch (\Exception $e) {
            DB::rollBack();
            Log::error('Tambah Sales Quotation Gagal: ' . e->getMessage(), [
                'exception' => e, 
                'trace' => e->getTraceAsString()
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

        // echo json_encode($salesquotationitem);exit;

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
        $salesquotation = SalesQuotation::join('core_customer', 'core_customer.customer_id', 'sales_quotation.customer_id')
            ->join('sales_quotation_item', 'sales_quotation_item.sales_quotation_id', 'sales_quotation.sales_quotation_id')
            ->where('sales_quotation.data_state', '=', 0)
            ->where('sales_quotation.sales_quotation_id', $quotation_id)
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
        $drawing->setPath(public_path('img/logo_tripta.png')); // Pastikan path sudah benar
        $drawing->setHeight(50); // Sesuaikan ukuran tinggi logo
        $drawing->setCoordinates('B4'); // Set lokasi untuk logo (di bawah "SERVING BETTER")
        $drawing->setOffsetX(10);
        $drawing->setWorksheet($sheet);

        $sheet->mergeCells("E2:G2");
        $sheet->setCellValue("E2", "Quote");
        $sheet->getStyle("E2")->getFont()->setBold(true)->getColor()->setRGB("3366FF");

        // Informasi Quote
        $sheet->setCellValue("E4", "Date");
        $sheet->setCellValue("E5", "Valid Until");
        $sheet->setCellValue("E6", "Quote #");
        $sheet->setCellValue("E7", "Customer ID");

        $sheet->getStyle("E4:E7")->getAlignment()->setHorizontal(Alignment::HORIZONTAL_RIGHT);
        $sheet->getStyle("F4:F7")->getBorders()->getBottom()->setBorderStyle(Border::BORDER_THIN);

        // Bagian Customer dan Project Description
        $sheet->mergeCells("B9:C9");
        $sheet->setCellValue("B9", "Customer:");
        $sheet->mergeCells("D9:G9");
        $sheet->setCellValue("D9", "Quote/Project Description");
        $sheet->getStyle("B9:G9")->getFont()->setBold(true)->getColor()->setRGB("FFFFFF");
        $sheet->getStyle("B9:G9")->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
        $sheet->getStyle("B9:G9")->getFill()->setFillType(\PhpOffice\PhpSpreadsheet\Style\Fill::FILL_SOLID)
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
        $sheet->getStyle("B18:G28")->getBorders()->getAllBorders()->setBorderStyle(Border::BORDER_THIN);

        // Contoh Data Kosong di Tabel
        for ($row = 18; $row <= 28; $row++) {
            $sheet->mergeCells("B{$row}:D{$row}"); // Kolom Description memanjang
            $sheet->setCellValue("E{$row}", ""); // QTY
            $sheet->setCellValue("F{$row}", ""); // Harga
            $sheet->setCellValue("G{$row}", ""); // Line Total
        }

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

        $sheet->getStyle("E30:E34")->getAlignment()->setHorizontal(Alignment::HORIZONTAL_RIGHT);
        $sheet->getStyle("F30:F34")->getBorders()->getBottom()->setBorderStyle(Border::BORDER_THIN);

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
}
