<?php

namespace App\Http\Controllers;

use App\Models\PurchaseInvoice;
use App\Models\SalesInvoice;
use Illuminate\Http\Request;
use App\Models\SystemMenuMapping;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Auth;

class HomeController extends Controller
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
        // Fetch the menus for the current user
        $menus = User::select('system_menu_mapping.*', 'system_menu.*')
            ->join('system_user_group', 'system_user_group.user_group_id', '=', 'system_user.user_group_id')
            ->join('system_menu_mapping', 'system_menu_mapping.user_group_level', '=', 'system_user_group.user_group_level')
            ->join('system_menu', 'system_menu.id_menu', '=', 'system_menu_mapping.id_menu')
            ->where('system_user.user_id', '=', Auth::id())
            ->orderBy('system_menu_mapping.id_menu', 'ASC')
            ->get();

        // Define start and end date for invoices to check due dates within this range (7 days)
        $startDate = Carbon::today();
        $endDate = Carbon::today()->addDays(7);

        // Fetch Purchase Invoices that are due within the next 7 days
        $purchaseinvoice = PurchaseInvoice::select('*')
            ->whereBetween('purchase_invoice_due_date', [$startDate, $endDate])
            ->simplePaginate(3);

        // Fetch Sales Invoices that are due within the next 7 days
        $salesinvoice = SalesInvoice::select('*')
            ->whereBetween('sales_invoice_due_date', [$startDate, $endDate])
            ->simplePaginate(3);

        // Ensure they are collections even if no data is found
        $purchaseinvoice = $purchaseinvoice ?? collect();
        $salesinvoice = $salesinvoice ?? collect();

        // Count the number of invoices, ensuring no null values are passed to count()
        $purchaseinvoiceCount = $purchaseinvoice->count();
        $salesinvoiceCount = $salesinvoice->count();

        // If no invoices are found in the next 7 days, check for past due invoices
        if ($purchaseinvoiceCount == 0) {
            $purchaseinvoice = PurchaseInvoice::select('*')
                ->where('purchase_invoice_due_date', '<', $startDate)
                ->simplePaginate(3);
        }

        if ($salesinvoiceCount == 0) {
            $salesinvoice = SalesInvoice::select('*')
                ->where('sales_invoice_due_date', '<', $startDate)
                ->simplePaginate(3);
        }

        // Fetch sales invoices, grouped by month, based on sales_invoice_date
        $salesInvoices = SalesInvoice::selectRaw('MONTH(sales_invoice_date) as month, SUM(total_amount) as total_sales')
            ->groupBy('month')
            ->get();

        // Fetch purchase invoices, grouped by month, based on purchase_invoice_date
        $purchaseInvoices = PurchaseInvoice::selectRaw('MONTH(purchase_invoice_date) as month, SUM(total_amount) as total_purchase')
            ->groupBy('month')
            ->get();

        // Initialize arrays with zeros for all 12 months
        $salesInvoicesData = array_fill(0, 12, 0); // For sales data
        $purchaseInvoicesData = array_fill(0, 12, 0); // For purchase data

        // Fill in the data for sales invoices
        foreach ($salesInvoices as $invoice) {
            // Month is 1-based (1 = Jan, 2 = Feb, etc.), so we need to subtract 1 for 0-based index
            $salesInvoicesData[$invoice->month - 1] = $invoice->total_sales;
        }

        // Fill in the data for purchase invoices
        foreach ($purchaseInvoices as $invoice) {
            // Month is 1-based (1 = Jan, 2 = Feb, etc.), so we need to subtract 1 for 0-based index
            $purchaseInvoicesData[$invoice->month - 1] = $invoice->total_purchase;
        }

        // Prepare data for the chart
        $labels = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
        $salesData = $salesInvoicesData; // Updated sales data
        $purchaseData = $purchaseInvoicesData; // Updated purchase data

        // Return the view with all data
        return view('home', compact('menus', 'purchaseinvoice', 'salesinvoice', 'purchaseinvoiceCount', 'salesinvoiceCount', 'labels', 'salesData', 'purchaseData'));
    }
}
