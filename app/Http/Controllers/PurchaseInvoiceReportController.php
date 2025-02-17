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
use App\Models\PurchaseInvoice;
use Illuminate\Http\Request;
use App\Models\SalesKwitansi;
use App\Models\SystemLogUser;
use App\Helpers\JournalHelper;
use App\Models\CoreExpedition;
use App\Models\SalesOrderItem;
use App\Models\InvItemCategory;
use Elibyy\TCPDF\Facades\TCPDF;
use App\Models\PurchaseInvoiceItem;
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

        $customer_id = Session::get('customer_id');

        Session::forget('salesinvoiceitem');
        Session::forget('salesinvoiceelements');
        $salesinvoice = PurchaseInvoiceItem::with(['SalesQuotationItems','SalesInvoice'])
        ->where('data_state', '=', 0)
        ->whereHas('PurchaseInvoice', function ($query) use ($start_date, $end_date) {
            $query->where('sales_invoice_date', '>=', $start_date)
                ->where('sales_invoice_date', '<=', $end_date);
        });
        if ($customer_id) {
            $salesinvoice = $salesinvoice->whereHas('PurchaseInvoice', function ($query) use ($customer_id) {
                $query->where('customer_id', $customer_id);
            });
        }
        $salesinvoice       = $salesinvoice->get();
        $customer = CoreCustomer::select('customer_id', 'customer_name')
            ->where('data_state', 0)
            ->pluck('customer_name', 'customer_id');

        return view('content/SalesInvoice/FormSalesInvoiceReport', compact('salesinvoice', 'start_date', 'end_date', 'customer_id', 'customer'));
    }

    //Report
    public function filterSalesInvoiceReport(Request $request)
    {
        $start_date     = $request->start_date;
        $end_date       = $request->end_date;
        $customer_id  = $request->customer_id;

        Session::put('start_date', $start_date);
        Session::put('end_date', $end_date);
        Session::put('customer_id', $customer_id);

        return redirect('/sales-invoice-report');
    }

    //Report
    public function resetFilterSalesInvoiceReport()
    {
        Session::forget('start_date');
        Session::forget('end_date');
        Session::forget('customer_id');

        return redirect('/sales-invoice-report');
    }

    public function export()
    {
        // Pastikan session valid
        $start_date = Session::get('start_date') ?? date('Y-m-d');
        $end_date = Session::get('end_date') ?? date('Y-m-d');
        $customer_id = Session::get('customer_id');

        // Reset session yang tidak diperlukan
        Session::forget('salesinvoiceitem');
        Session::forget('salesinvoiceelements');

        // Ambil data penjualan
        $salesinvoice = SalesInvoiceItem::with(['SalesQuotationItems', 'SalesInvoice'])
            ->where('data_state', '=', 0)
            ->whereHas('SalesInvoice', function ($query) use ($start_date, $end_date) {
                $query->whereBetween('sales_invoice_date', [$start_date, $end_date]);
            });

        if ($customer_id) {
            $salesinvoice = $salesinvoice->whereHas('SalesInvoice', function ($query) use ($customer_id) {
                $query->where('customer_id', $customer_id);
            });
        }

        $salesinvoice = $salesinvoice->get();
        $preference_company = PreferenceCompany::first();

        // Buat spreadsheet
        $spreadsheet = new Spreadsheet();

        if ($salesinvoice->count() > 0) {
            // Set properti file
            $spreadsheet->getProperties()->setCreator("CIPTASOLUTINDO")
                ->setLastModifiedBy("CIPTASOLUTINDO")
                ->setTitle("LAPORAN PENJUALAN")
                ->setDescription("LAPORAN PENJUALAN");

            // Group data berdasarkan customer_id
            $groupedInvoices = $salesinvoice->groupBy('customer_id');

            foreach ($groupedInvoices as $customer_id => $invoices) {
                // Buat sheet baru untuk setiap customer
                $sheet = $spreadsheet->createSheet();
                $sheet->setTitle("Customer " . $customer_id);

                // Header laporan
                $sheet->mergeCells("B5:J5");
                $sheet->mergeCells("B6:J6");
                $sheet->mergeCells("B7:J7");
                $sheet->setCellValue('B5', "TRIPTA TRI TUNGGAL");
                $sheet->setCellValue('B6', "PERUM. BUMI WONOREJO - KARANGANYAR");
                $sheet->setCellValue('B7', "REKAPITULASI PENJUALAN TANGGAL $start_date - $end_date");

                // Header tabel
                $sheet->setCellValue('B12', "No");
                $sheet->setCellValue('C12', "TANGGAL");
                $sheet->setCellValue('D12', "PEMBELI");
                $sheet->setCellValue('E12', "NO INVOICE");
                $sheet->setCellValue('F12', "BARANG");
                $sheet->setCellValue('G12', "QTY");
                $sheet->setCellValue('H12', "JUMLAH");
                $sheet->setCellValue('I12', "DISKON");
                $sheet->setCellValue('J12', "TOTAL");

                $row = 13;
                $no = 1;

                // Variabel untuk menyimpan total
                $totalQty = 0;
                $totalJumlah = 0;
                $totalDiskon = 0;
                $totalHarga = 0;

                // Isi data
                foreach ($invoices as $invoice) {
                    $sheet->setCellValue('B' . $row, $no++);
                    $sheet->setCellValue('C' . $row, $invoice->sales_invoice_date);
                    $sheet->setCellValue('D' . $row, $this->getCustomerName($invoice->SalesInvoice->customer_id));
                    $sheet->setCellValue('E' . $row, $invoice->SalesInvoice->sales_invoice_no);
                    $sheet->setCellValue('F' . $row, $this->getItemTypeName($invoice->item_type_id));
                    $sheet->setCellValue('G' . $row, number_format($invoice->quantity, 2, '.', ''));
                    $sheet->setCellValue('H' . $row, number_format($invoice->item_unit_price * $invoice->quantity, 2, '.', ''));
                    $sheet->setCellValue('I' . $row, number_format($invoice->discount_A, 2, '.', ''));
                    $sheet->setCellValue('J' . $row, number_format($invoice->subtotal_price_A, 2, '.', ''));

                    // Hitung total
                    $totalQty += $invoice->quantity;
                    $totalJumlah += $invoice->item_unit_price * $invoice->quantity;
                    $totalDiskon += $invoice->discount_A;
                    $totalHarga += $invoice->subtotal_price_A;

                    $row++;
                }

                // Tambahkan baris total
                $sheet->setCellValue('F' . $row, "TOTAL");
                $sheet->setCellValue('G' . $row, number_format($totalQty, 2, '.', ''));
                $sheet->setCellValue('H' . $row, number_format($totalJumlah, 2, '.', ''));
                $sheet->setCellValue('I' . $row, number_format($totalDiskon, 2, '.', ''));
                $sheet->setCellValue('J' . $row, number_format($totalHarga, 2, '.', ''));
            }

            // Hapus sheet default
            $spreadsheet->removeSheetByIndex(0);

            // Export file
            $filename = 'LAPORAN_PENJUALAN_' . date('d_M_Y') . '.xlsx';
            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment;filename="' . $filename . '"');
            header('Cache-Control: max-age=0');

            $writer = \PhpOffice\PhpSpreadsheet\IOFactory::createWriter($spreadsheet, 'Xlsx');
            $writer->save('php://output');
        } else {
            // Tampilkan pesan jika data tidak ditemukan
            return response()->json(['message' => 'Maaf, tidak ada data untuk diekspor!'], 404);
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
