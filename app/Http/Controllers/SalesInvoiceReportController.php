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
use App\Models\InvItemStock;
use App\Models\SalesInvoice;
use Illuminate\Http\Request;
use App\Models\SalesKwitansi;
use App\Models\SystemLogUser;
use App\Helpers\JournalHelper;
use App\Models\CoreExpedition;
use App\Models\SalesOrderItem;
use App\Models\InvItemCategory;
use Elibyy\TCPDF\Facades\TCPDF;
use App\Models\SalesInvoiceItem;
use App\Models\PreferenceCompany;
use App\Models\PurchaseOrderItem;
use App\Models\SalesDeliveryNote;
use App\Models\SalesKwitansiItem;
use App\Models\AcctAccountSetting;
use App\Models\AcctJournalVoucher;
use Illuminate\Support\Facades\DB;
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

class SalesInvoiceReportController extends Controller
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
        if (!Session::get('start_date')) {
            $start_date     = date('Y-m-d');
        } else {
            $start_date = Session::get('start_date');
        }

        if (!Session::get('end_date')) {
            $end_date     = date('Y-m-d');
        } else {
            $end_date = Session::get('end_date');
        }

        $customer_code = Session::get('customer_code');

        Session::forget('salesinvoiceitem');
        Session::forget('salesinvoiceelements');
        $salesinvoice = SalesInvoice::with(['Items','SalesQuotation', 'Customer'])
        ->where('data_state', '=', 0)
        ->where('sales_invoice_date', '>=', $start_date)
        ->where('sales_invoice_date', '<=', $end_date);
        if ($customer_code) {
            $salesinvoice = $salesinvoice->whereHas('Customer', function ($query) use ($customer_code) {
                $query->where('customer_code', $customer_code);
            });
        }
        $salesinvoice       = $salesinvoice->get();
        $customer = CoreCustomer::select('customer_id', 'customer_name','customer_code')
            ->where('data_state', 0)
            ->pluck('customer_code', 'customer_code');

        return view('content/SalesInvoice/FormSalesInvoiceReport', compact('salesinvoice', 'start_date', 'end_date', 'customer_code', 'customer'));
    }

    //Report
    public function filterSalesInvoiceReport(Request $request)
    {
        $start_date     = $request->start_date;
        $end_date       = $request->end_date;
        $customer_code  = $request->customer_code;

        if(empty($customer_code)){
            $msg = 'Pilih Kode Pembeli';
            return redirect('/sales-invoice-report')->with('msg', $msg);
        }else{
        $customer_id = CoreCustomer::where('customer_code', '=', $customer_code)->first();
        Session::put('start_date', $start_date);
        Session::put('end_date', $end_date);
        Session::put('customer_code', $customer_code);
        $salesinvoice = SalesInvoice::where('sales_invoice.data_state', '=', 0)
        ->join('core_customer','core_customer.customer_id','sales_invoice.customer_id')
        ->join('sales_invoice_item','sales_invoice_item.sales_invoice_id','sales_invoice.sales_invoice_id')
        ->join('sales_order','sales_order.sales_order_id','sales_invoice.sales_order_id')
        ->where('sales_invoice.data_state', '=', 0)
        ->where('sales_invoice.sales_invoice_date', '>=', $start_date)
        ->where('sales_invoice.sales_invoice_date', '<=', $end_date);
            if ($customer_code || $customer_code != null || $customer_code != '') {
                $salesinvoice = $salesinvoice->where('core_customer.customer_code', $customer_code);
            }
            $salesinvoice = $salesinvoice->get();
            $saleskwitansi = array(
                'customer_id'                   => $customer_id['customer_id'],
                'start_date'                    => $start_date,
                'end_date'                      => $end_date,
                'sales_kwitansi_date'           => \Carbon\Carbon::now(),
                'created_id'                    => Auth::id(),
            );
        }
        return redirect('/sales-invoice-report');
    }

    //Report
    public function resetFilterSalesInvoiceReport()
    {
        Session::forget('start_date');
        Session::forget('end_date');
        Session::forget('customer_code');

        return redirect('/sales-invoice-report');
    }

    public function export(){
        if (!Session::get('start_date')) {
            $start_date = date('Y-m-d');
        } else {
            $start_date = Session::get('start_date');
        }

        if (!Session::get('end_date')) {
            $end_date = date('Y-m-d');
        } else {
            $end_date = Session::get('end_date');
        }

        $customer_code = Session::get('customer_code');

        Session::forget('salesinvoiceitem');
        Session::forget('salesinvoiceelements');

        $salesinvoice = SalesInvoice::where('sales_invoice.data_state', '=', 0)
        ->join('core_customer','core_customer.customer_id','sales_invoice.customer_id')
        ->join('sales_invoice_item','sales_invoice_item.sales_invoice_id','sales_invoice.sales_invoice_id')
        ->join('sales_order','sales_order.sales_order_id','sales_invoice.sales_order_id')
        ->where('sales_invoice.data_state', '=', 0)
        ->where('sales_invoice.sales_invoice_date', '>=', $start_date)
        ->where('sales_invoice.sales_invoice_date', '<=', $end_date);

        if ($customer_code || $customer_code != null || $customer_code != '') {
            $salesinvoice = $salesinvoice->where('core_customer.customer_code', $customer_code);
        }

        $salesinvoice = $salesinvoice->get();

        $preference_company = PreferenceCompany::first();

        $spreadsheet = new Spreadsheet();

        if (count($salesinvoice) > 0) {
            $spreadsheet->getProperties()->setCreator("TRADING SYSTEM")
                ->setLastModifiedBy("TRADING SYSTEM")
                ->setTitle("SALES INVOICE REPORT")
                ->setSubject("")
                ->setDescription("SALES INVOICE REPORT")
                ->setKeywords("SALES INVOICE REPORT")
                ->setCategory("SALES INVOICE REPORT");

            $groupedInvoices = $salesinvoice->groupBy('customer_code');

            foreach ($groupedInvoices as $customer_code => $invoices) {
                $sheet = $spreadsheet->createSheet();
                $sheet->setTitle($customer_code);

                $sheet->mergeCells("B5:O5");
                $sheet->mergeCells("B6:O6");
                $sheet->mergeCells("B7:O7");
                $sheet->mergeCells("B8:O8");
                $sheet->mergeCells("B9:O9");
                $sheet->mergeCells("B10:O10");
                $sheet->mergeCells("B11:O11");
                $sheet->getStyle('B5')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_LEFT);
                $sheet->getStyle('B6')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_LEFT);
                $sheet->getStyle('B7')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_LEFT);
                $sheet->getStyle('B8')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_LEFT);
                $sheet->getStyle('B9')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_LEFT);
                $sheet->getStyle('B10')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_LEFT);
                $sheet->getStyle('B11')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_LEFT);
                $sheet->getStyle('B11')->getFont()->setBold(true)->setSize(16);

                $sheet->getStyle('B12:O12')->getBorders()->getAllBorders()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN);
                $sheet->getStyle('B12:O12')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);

                $sheet->setCellValue('B5', "PBF MENJANGAN ENAM ");
                $sheet->setCellValue('B6', "Jl.Puspowarno Raya No 55D Bojong Salaman,Semarang Barat");
                $sheet->setCellValue('B7', "APA : ISTI RAHMADANI,S.Farm, Apt.");
                $sheet->setCellValue('B8', " SIKA: 449.2/16/DPM-PTSP/SIKA.16/III/2019 ");
                $sheet->setCellValue('B9', "");
                $sheet->setCellValue('B10', "REKAPITULASI PENJUALAN TANGGAL ".$start_date." - ".$end_date);
                $sheet->setCellValue('B11', "$customer_code");
                $sheet->setCellValue('B12', "No");
                $sheet->setCellValue('C12', "TGL INV");
                $sheet->setCellValue('D12', "NOMOR FPP");
                $sheet->setCellValue('E12', "CABANG");
                $sheet->setCellValue('F12', "NO INVOICE");
                $sheet->setCellValue('G12', "NAMA OBAT");
                $sheet->setCellValue('H12', "QTY");
                $sheet->setCellValue('I12', "JUMLAH");
                $sheet->setCellValue('J12', "HPP");
                $sheet->setCellValue('K12', "DISKON");
                $sheet->setCellValue('L12', "DPP");
                $sheet->setCellValue('M12', "PPN");
                $sheet->setCellValue('N12', "TOTAL BAYAR");
                $sheet->setCellValue('O12', "%DISKON");

                $j  = 13;
                $no = 1;

                foreach ($invoices as $val) {
                    $salesorderitem = $this->getSalesOrderItem($val['sales_delivery_note_item_id']);
                    $itemunitcost   = $this->getUnitCost($salesorderitem ?? '');
                    $jumlahDiskon   = $val['discount_A'] + $val['discount_B'];
                    $ppn            = $this->getPpnItem($salesorderitem);
                    $dpp            = ($val['item_unit_price'] * $val['quantity']) - $jumlahDiskon;

                    $diskonPersen   = $this->getDiscountAmt($val['sales_delivery_note_item_id']) + $this->getDiscountAmtB($val['sales_delivery_note_item_id']) ;

                    $sheet->getStyle('B'.$j.':O'.$j)->getBorders()->getAllBorders()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN);
                    $sheet->getStyle('O'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);

                    $sheet->setCellValue('B'.$j, $no);
                    $sheet->setCellValue('C'.$j, $val['sales_invoice_date']);
                    $sheet->setCellValue('D'.$j, $val['purchase_order_no']);
                    $sheet->setCellValue('E'.$j, $this->getCustomerName($val['customer_id']));
                    $sheet->setCellValue('F'.$j, $val['sales_invoice_no']);
                    $sheet->setCellValue('G'.$j, $this->getItemTypeName($val['item_type_id']));
                    $sheet->setCellValue('H'.$j, number_format($val['quantity'], 2, '.', ''));
                    $sheet->setCellValue('I'.$j, number_format($val['item_unit_price'] * $val['quantity'], 2, '.', ''));
                    $sheet->setCellValue('J'.$j, number_format($itemunitcost * $val['quantity'], 2, '.', ''));
                    $sheet->setCellValue('K'.$j, number_format($jumlahDiskon, 2, '.', ''));
                    $sheet->setCellValue('L'.$j, number_format($dpp, 2, '.', ''));
                    $sheet->setCellValue('M'.$j, number_format($ppn, 2, '.', ''));
                    $sheet->setCellValue('N'.$j, number_format($dpp + $ppn, 2, '.', ''));
                    $sheet->setCellValue('O'.$j, " $diskonPersen  %");

                    $no++;
                    $j++;
                }

                $lastj = $j;
                $lastno = $no;

                $sheet->getStyle('B'.$lastj.':N'.$lastj)->getBorders()->getOutline()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN);
                $sheet->setCellValue('G' . $lastj, 'Jumlah Total:');
                $sheet->setCellValue('H' . $lastj, '=SUM(H13:H'.($lastj-1).')');
                $sheet->setCellValue('I' . $lastj, '=SUM(I13:I'.($lastj-1).')');
                $sheet->setCellValue('J' . $lastj, '=SUM(J13:J'.($lastj-1).')');
                $sheet->setCellValue('K' . $lastj, '=SUM(K13:K'.($lastj-1).')');
                $sheet->setCellValue('L' . $lastj, '=SUM(L13:L'.($lastj-1).')');
                $sheet->setCellValue('M' . $lastj, '=SUM(M13:M'.($lastj-1).')');
                $sheet->setCellValue('N' . $lastj, '=SUM(N13:N'.($lastj-1).')');

                $sheet->setCellValue('F' . ($lastj + 1), 'Mengetahui');
                $sheet->setCellValue('K' . ($lastj + 1), 'Dibuat Oleh');

                $sheet->getStyle('E'.($lastj + 5))->getBorders()->getTop()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN);
                $sheet->getStyle('E'.($lastj + 5))->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
                $sheet->getStyle('G'.($lastj + 5))->getBorders()->getTop()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN);
                $sheet->getStyle('K'.($lastj + 5))->getBorders()->getTop()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN);

                $sheet->setCellValue('E' . ($lastj + 5), 'Apoteker');
                $sheet->setCellValue('G' . ($lastj + 5), 'Administrasi Pajak');
                $sheet->setCellValue('K' . ($lastj + 5), 'Dibuat Oleh');
            }

            $spreadsheet->removeSheetByIndex(0); // Remove default sheet created by PhpSpreadsheet

            ob_clean();
            $filename='SALES INVOICE REPORT '.date('d M Y').'.xlsx';
            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment;filename="'.$filename.'"');
            header('Cache-Control: max-age=0');

            $writer = \PhpOffice\PhpSpreadsheet\IOFactory::createWriter($spreadsheet, 'Xlsx');
            $writer->save('php://output');
        } else {
            echo "Maaf data yang di eksport tidak ada !";
        }
    }
}
