<?php

namespace App\Http\Controllers;

use DateTime;
use stdClass;
use App\Models\User;
use App\Models\InvItem;
use App\Models\SalesOrder;
use App\Models\AcctAccount;
use App\Models\InvItemType;
use App\Models\InvItemUnit;
use App\Models\CoreCustomer;
use App\Models\CoreSupplier;
use App\Models\InvItemStock;
use Illuminate\Http\Request;
use App\Models\SalesKwitansi;
use App\Models\SystemLogUser;
use App\Helpers\JournalHelper;
use App\Models\CoreExpedition;
use App\Models\SalesOrderItem;
use App\Models\InvItemCategory;
use App\Models\PurchaseInvoice;
use Elibyy\TCPDF\Facades\TCPDF;
use App\Models\PreferenceCompany;
use App\Models\PurchaseOrderItem;
use App\Models\SalesDeliveryNote;
use App\Models\SalesKwitansiItem;
use App\Models\AcctAccountSetting;
use App\Models\AcctJournalVoucher;
use Illuminate\Support\Facades\DB;
use App\Models\PurchaseInvoiceItem;
use Illuminate\Support\Facades\Log;
use App\Http\Controllers\Controller;
use App\Models\BuyersAcknowledgment;
use App\Models\InvGoodsReceivedNote;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Maatwebsite\Excel\Facades\Excel;
use App\Models\SalesDeliveryNoteItem;
use PhpParser\Node\Expr\Cast\Object_;
use App\Models\AcctJournalVoucherItem;
use App\Providers\RouteServiceProvider;
use Illuminate\Support\Facades\Session;
use App\Models\BuyersAcknowledgmentItem;
use Illuminate\Support\Facades\Validator;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;
use App\Models\SalesDeliveryNoteItemStock;
use App\Models\PreferenceTransactionModule;
use Carbon\Carbon;

class PurchaseInvoiceReportController extends Controller
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
        $start_date = Session::get('start_date') ?? date('Y-m-d');

        $end_date = Session::get('end_date') ?? date('Y-m-d');
        
        $supplier_id = Session::get('supplier_id');

        Session::forget('salesinvoiceitem');
        Session::forget('salesinvoiceelements');

        $salesinvoice = PurchaseInvoiceItem::with(['purchaseInvoice.CoreSupplier', 'InvItemType', 'InvItemUnit'])
        ->where('data_state', '=', 0)
        ->whereHas('PurchaseInvoice', function ($query) use ($start_date, $end_date) {
            $query->where('purchase_invoice_date', '>=', $start_date)
                ->where('purchase_invoice_date', '<=', $end_date);
        });
        if ($supplier_id) {
            $salesinvoice = $salesinvoice->whereHas('PurchaseInvoice', function ($query) use ($supplier_id) {
                $query->where('supplier_id', $supplier_id);
            });
        }
        $salesinvoice       = $salesinvoice->get();

        // echo json_encode($salesinvoice);exit;

        $supplier = CoreSupplier::where('data_state', 0)
            ->pluck('supplier_name', 'supplier_id');

        return view('content/PurchaseInvoice/FormPurchaseInvoiceReport', compact('salesinvoice', 'start_date', 'end_date', 'supplier_id', 'supplier'));
    }

    //Report
    public function filterPurchaseInvoiceReport(Request $request)
    {
        $start_date     = $request->start_date;
        $end_date       = $request->end_date;
        $supplier_id  = $request->supplier_id;

        Session::put('start_date', $start_date);
        Session::put('end_date', $end_date);
        Session::put('supplier_id', $supplier_id);

        return redirect('/purchase-invoice-report');
    }

    //Report
    public function resetFilterPurchaseInvoiceReport()
    {
        Session::forget('start_date');
        Session::forget('end_date');
        Session::forget('supplier_id');

        return redirect('/purchase-invoice-report');
    }

    public function export()
    {
        // Pastikan session valid
        $start_date = Session::get('start_date') ?? date('Y-m-d');
        $end_date = Session::get('end_date') ?? date('Y-m-d');
        $supplier_id = Session::get('supplier_id');

        // Reset session yang tidak diperlukan
        Session::forget('salesinvoiceitem');
        Session::forget('salesinvoiceelements');

        // Ambil data penjualan
        $salesinvoice = PurchaseInvoiceItem::with(['purchaseInvoice.CoreSupplier', 'InvItemType', 'InvItemUnit'])
        ->where('data_state', '=', 0)
        ->whereHas('PurchaseInvoice', function ($query) use ($start_date, $end_date) {
            $query->where('purchase_invoice_date', '>=', $start_date)
                ->where('purchase_invoice_date', '<=', $end_date);
        });
        if ($supplier_id) {
            $salesinvoice = $salesinvoice->whereHas('PurchaseInvoice', function ($query) use ($supplier_id) {
                $query->where('supplier_id', $supplier_id);
            });
        }
        $salesinvoice       = $salesinvoice->get();

        // Buat spreadsheet
        $spreadsheet = new Spreadsheet();

        if(count($salesinvoice)>=0){
            $spreadsheet->getProperties()->setCreator("CIPTASOLUTINDO")
                                        ->setLastModifiedBy("IBS CJDW")
                                        ->setTitle("Purchase Invoice Report")
                                        ->setSubject("")
                                        ->setDescription("Purchase Invoice Report")
                                        ->setKeywords("Purchase, Invoice, Report")
                                        ->setCategory("Purchase Invoice Report");
                                
            $sheet = $spreadsheet->getActiveSheet(0);
            $spreadsheet->getActiveSheet()->getPageSetup()->setFitToWidth(1);
            $spreadsheet->getActiveSheet()->getPageSetup()->setFitToWidth(1);
            $spreadsheet->getActiveSheet()->getColumnDimension('B')->setWidth(5);
            $spreadsheet->getActiveSheet()->getColumnDimension('C')->setWidth(20);
            $spreadsheet->getActiveSheet()->getColumnDimension('D')->setWidth(20);
            $spreadsheet->getActiveSheet()->getColumnDimension('E')->setWidth(20);
            $spreadsheet->getActiveSheet()->getColumnDimension('F')->setWidth(20);
            $spreadsheet->getActiveSheet()->getColumnDimension('G')->setWidth(20);
            $spreadsheet->getActiveSheet()->getColumnDimension('H')->setWidth(20);
            $spreadsheet->getActiveSheet()->getColumnDimension('I')->setWidth(20);
            $spreadsheet->getActiveSheet()->getColumnDimension('J')->setWidth(20);
    
            $spreadsheet->getActiveSheet()->mergeCells("B1:J1");
            $spreadsheet->getActiveSheet()->getStyle('B1')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
            $spreadsheet->getActiveSheet()->getStyle('B1')->getFont()->setBold(true)->setSize(16);

            $spreadsheet->getActiveSheet()->getStyle('B3:J3')->getBorders()->getAllBorders()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN);
            $spreadsheet->getActiveSheet()->getStyle('B3:J3')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);

            $sheet->setCellValue('B1',"Laporan Pembelian Dari Periode ".date('d M Y', strtotime($start_date))." s.d. ".date('d M Y', strtotime($end_date)));	
            $sheet->setCellValue('B3',"No");
            $sheet->setCellValue('C3',"Tanggal Pembelian");
            $sheet->setCellValue('D3',"NO INVOICE");
            $sheet->setCellValue('E3',"Nama Pemasok");
            $sheet->setCellValue('F3',"BARANG");
            $sheet->setCellValue('G3',"Quantity");
            $sheet->setCellValue('H3',"Satuan");
            $sheet->setCellValue('I3',"Harga Per Satuan");
            $sheet->setCellValue('J3',"Subtotal"); 
            
            $j=4;
            $no=0;
            $subtotal_amount = 0;

            
            foreach($salesinvoice as $key=>$item){

                if(is_numeric($key)){
                    
                    $sheet = $spreadsheet->getActiveSheet(0);
                    $spreadsheet->getActiveSheet()->setTitle("Laporan Pembelian");
                    $spreadsheet->getActiveSheet()->getStyle('B'.$j.':J'.$j)->getBorders()->getAllBorders()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN);

                    $spreadsheet->getActiveSheet()->getStyle('H'.$j.':J'.$j)->getNumberFormat()->setFormatCode('0.00');
            
                    $spreadsheet->getActiveSheet()->getStyle('B'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
                    $spreadsheet->getActiveSheet()->getStyle('C'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_LEFT);
                    $spreadsheet->getActiveSheet()->getStyle('D'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_LEFT);
                    $spreadsheet->getActiveSheet()->getStyle('E'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_LEFT);
                    $spreadsheet->getActiveSheet()->getStyle('F'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_LEFT);
                    $spreadsheet->getActiveSheet()->getStyle('G'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_LEFT);
                    $spreadsheet->getActiveSheet()->getStyle('H'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_LEFT);
                    $spreadsheet->getActiveSheet()->getStyle('I'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_RIGHT);
                    $spreadsheet->getActiveSheet()->getStyle('J'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_RIGHT);



                    $no++;
                    $sheet->setCellValue('B'.$j, $no);
                    $sheet->setCellValue('C'.$j, $item->purchaseInvoice->formatted_date );
                    $sheet->setCellValue('D'.$j, $item->purchaseInvoice->purchase_invoice_no);
                    $sheet->setCellValue('E'.$j, $item->purchaseInvoice->CoreSupplier->supplier_name);
                    $sheet->setCellValue('F'.$j, $item->InvItemType->item_type_name);
                    $sheet->setCellValue('G'.$j, number_format($item->quantity));
                    $sheet->setCellValue('H'.$j, $item->InvItemUnit->item_unit_name);
                    $sheet->setCellValue('I'.$j, number_format($item['item_unit_cost'],2,'.',','));
                    $sheet->setCellValue('J'.$j, number_format($item['subtotal_amount'],2,'.',','));
                }
                $subtotal_amount += $item['subtotal_amount'];

                $j++;
        
            }

            $spreadsheet->getActiveSheet()->getStyle('B'.$j.':J'.$j)->getBorders()->getAllBorders()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN);
            $spreadsheet->getActiveSheet()->mergeCells('B'.$j.':I'.$j);
            $spreadsheet->getActiveSheet()->getStyle('B'.$j.':I'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_RIGHT);
            $spreadsheet->getActiveSheet()->getStyle('B'.$j.':J'.$j)->getFont()->setBold(true);
            $spreadsheet->getActiveSheet()->getStyle('G'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_RIGHT);
            $spreadsheet->getActiveSheet()->getStyle('H'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_RIGHT);
            $spreadsheet->getActiveSheet()->getStyle('I'.$j.':L'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_RIGHT);
            $spreadsheet->getActiveSheet()->getStyle('J'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_RIGHT);
            
            $sheet->setCellValue('B'.$j,'Total');
            $sheet->setCellValue('J'.$j, number_format($subtotal_amount,2,'.',','));
            
            // ob_clean();
            $filename='Laporan_Pembelian_'.$start_date.'_s.d._'.$end_date.'.xls';
            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment;filename="'.$filename.'"');
            header('Cache-Control: max-age=0');

            $writer = \PhpOffice\PhpSpreadsheet\IOFactory::createWriter($spreadsheet, 'Xls');
            $writer->save('php://output');
        }else{
            echo "Maaf data yang di eksport tidak ada !";
        }
    }

    public function getCustomerName($customer_id){
        $customer = CoreCustomer::select('customer_name')
        ->where('customer_id', $customer_id)
        ->where('data_state', 0)
        ->first();

        return $customer['customer_name'];
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
}
