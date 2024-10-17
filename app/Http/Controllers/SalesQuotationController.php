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
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;


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
}
