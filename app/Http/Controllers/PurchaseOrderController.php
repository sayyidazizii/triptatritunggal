<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\User;
use App\Models\CoreCity;
use App\Models\InvItemType;
use App\Models\InvItemUnit;
use App\Models\CoreProvince;
use App\Models\CoreSupplier;
use App\Models\InvItemStock;
use App\Models\InvWarehouse;
use Illuminate\Http\Request;
use App\Models\PurchaseOrder;
use App\Models\InvItemCategory;
use Elibyy\TCPDF\Facades\TCPDF;
use App\Models\PreferenceCompany;
use App\Models\PurchaseOrderItem;
use App\Models\PurchaseOrderType;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use App\Models\InvWarehouseLocation;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Providers\RouteServiceProvider;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;

class PurchaseOrderController extends Controller
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

        Session::put('editarraystate', 0);
        Session::forget('purchaseorderitem');
        Session::forget('purchaseorderelements');


        $purchaseorder = PurchaseOrder::where('data_state', '=', 0)
            ->where('purchase_order_date', '>=', $start_date)
            ->where('purchase_order_date', '<=', $end_date)
            ->get();

        return view('content/PurchaseOrder/ListPurchaseOrder', compact('purchaseorder', 'start_date', 'end_date'));
    }

    public function filterPurchaseOrder(Request $request)
    {

        $start_date     = $request->start_date;
        $end_date       = $request->end_date;

        Session::put('start_date', $start_date);
        Session::put('end_date', $end_date);

        return redirect('/purchase-order');
    }

    public function resetFilterPurchaseOrder()
    {
        Session::forget('start_date');
        Session::forget('end_date');

        return redirect('/purchase-order');
    }

    public function addPurchaseOrder()
    {
        $purchaseorderelements  = Session::get('purchaseorderelements');
        $purchaseorderitem      = Session::get('purchaseorderitem');


        $warehouse              = InvWarehouse::where('data_state', '=', 0)->pluck('warehouse_name', 'warehouse_id');
        $supplier               = CoreSupplier::where('data_state', '=', 0)->pluck('supplier_name', 'supplier_id');
        $itemcategory           = InvItemCategory::where('data_state', '=', 0)->pluck('item_category_name', 'item_category_id');
        $itemunit               = InvItemUnit::where('data_state', '=', 0)->pluck('item_unit_name', 'item_unit_id');
        $coreprovince           = CoreProvince::where('data_state', '=', 0)->pluck('province_name', 'province_id');
        $corecity               = CoreCity::where('data_state', '=', 0)->pluck('city_name', 'city_id');
        $location               = InvWarehouseLocation::where('inv_warehouse_location.data_state', 0)
            ->join('core_city', 'inv_warehouse_location.city_id', 'core_city.city_id')
            ->pluck('city_name', 'warehouse_location_id');
        $itemtype               = [];

        $ppnIn                    = PreferenceCompany::select('ppn_amount_in')->first();

        $null_warehouse_id = Session::get('warehouse_id');
        $null_supplier_id = Session::get('supplier_id');
        $null_item_category_id = Session::get('item_category_id');
        $null_item_type_id = Session::get('item_type_id');
        $null_item_unit_id = Session::get('item_unit_id');

        return view('content/PurchaseOrder/FormAddPurchaseOrder', compact('ppnIn', 'warehouse', 'supplier', 'itemcategory', 'itemtype', 'purchaseorderitem', 'itemunit', 'purchaseorderelements', 'coreprovince', 'corecity', 'location', 'null_warehouse_id', 'null_supplier_id', 'null_item_type_id', 'null_item_category_id', 'null_item_unit_id'));
    }

    public function editPurchaseOrder($purchase_order_id)
    {
        $editarraystate = Session::get('editarraystate');

        $purchaseorder = PurchaseOrder::where('data_state', 0)
            ->where('purchase_order_id', $purchase_order_id)
            ->first();


        if ($editarraystate == 0) {
            Session::forget('purchaseorderitem');
            $purchaseorderitem = PurchaseOrderItem::where('data_state', 0)
                ->where('purchase_order_id', $purchase_order_id)
                ->get();

            foreach ($purchaseorderitem as $key => $val) {

                $purchaseorderitem = array(
                    'purchase_order_item_id'    => $val['purchase_order_item_id'],
                    'item_category_id'            => $val['item_category_id'],
                    'item_type_id'                => $val['item_type_id'],
                    'item_unit_id'                => $val['item_unit_id'],
                    'quantity'                    => $val['quantity'],
                    'price'                        => $val['item_unit_cost'],
                    'total_price'                => $val['subtotal_amount'],
                );

                $lastpurchaseorderitem = Session::get('purchaseorderitem');
                if ($lastpurchaseorderitem !== null) {
                    array_push($lastpurchaseorderitem, $purchaseorderitem);
                    Session::put('purchaseorderitem', $lastpurchaseorderitem);
                } else {
                    $lastpurchaseorderitem = [];
                    array_push($lastpurchaseorderitem, $purchaseorderitem);
                    Session::push('purchaseorderitem', $purchaseorderitem);
                }
            }
        }

        $purchaseorderitem = Session::get('purchaseorderitem');

        $warehouse = InvWarehouse::where('data_state', '=', 0)->pluck('warehouse_name', 'warehouse_id');
        $supplier = CoreSupplier::where('data_state', '=', 0)->pluck('supplier_name', 'supplier_id');
        $itemcategory = InvItemCategory::where('data_state', '=', 0)->pluck('item_category_name', 'item_category_id');
        $itemunit = InvItemUnit::where('data_state', '=', 0)->pluck('item_unit_name', 'item_unit_id');
        $itemtype = InvItemType::where('data_state', 0)->where('item_category_id', $purchaseorder['item_category_id'])->pluck('item_type_name', 'item_type_id');

        return view('content/PurchaseOrder/FormEditPurchaseOrder', compact('warehouse', 'supplier', 'itemcategory', 'itemtype', 'purchaseorderitem', 'itemunit', 'purchaseorder', 'editarraystate'));
    }

    public function detailPurchaseOrder($purchase_order_id)
    {
        $purchaseorder = PurchaseOrder::where('data_state', 0)
            ->where('purchase_order_id', $purchase_order_id)
            ->first();

        $purchaseorderitem = PurchaseOrderItem::where('data_state', 0)
            ->where('purchase_order_id', $purchase_order_id)
            ->get();

        return view('content/PurchaseOrder/FormDetailPurchaseOrder', compact('purchaseorderitem', 'purchaseorder'));
    }

    public function cetakPurchaseOrder($purchase_order_id)
    {
        $purchaseorder = PurchaseOrder::select('*')
            ->join('core_supplier', 'core_supplier.supplier_id', 'purchase_order.supplier_id')
            ->where('purchase_order.data_state', 0)
            ->where('purchase_order.purchase_order_id', $purchase_order_id)
            ->first();

        $purchaseorderitem = PurchaseOrderItem::where('data_state', 0)
            ->where('purchase_order_id', $purchase_order_id)
            ->get();

        $company = PreferenceCompany::select('*')->first();

        $pdf = new TCPDF('P', PDF_UNIT, 'F4', true, 'UTF-8', false);
        $pdf::SetPrintHeader(false);
        $pdf::SetPrintFooter(false);
        $pdf::SetMargins(10, 10, 10, 10);
        $pdf::setImageScale(PDF_IMAGE_SCALE_RATIO);
        $pdf::SetFont('helvetica', '', 8);

        // Modify date format with month name
        $bulan = [
            '01' => 'Januari', '02' => 'Februari', '03' => 'Maret', '04' => 'April',
            '05' => 'Mei', '06' => 'Juni', '07' => 'Juli', '08' => 'Agustus',
            '09' => 'September', '10' => 'Oktober', '11' => 'November', '12' => 'Desember'
        ];
        $tanggal = date('d') . ' ' . $bulan[date('m')] . ' ' . date('Y');

        // Header
        $pdf::AddPage();
        $tbl = "
            <table width=\"100%\">
                <tr>
                    <td style=\"text-align:left; font-size:16px;\"><b>" . $company['company_name'] . "</b></td>
                    <td style=\"text-align:right; font-size:12px;\">Tanggal: " . $tanggal . "</td>
                </tr>
                <tr>
                    <td style=\"text-align:left; font-size:12px;\">" . $company['company_address'] . "</td>
                    <td></td>
                </tr>
            </table>
            <table width=\"100%\">
                <tr>
                    <td style=\"text-align:left; font-size:12px;\"><b>Purchasing Order</b></td>
                    <td style=\"text-align:left; font-size:12px;\"></td>
                </tr>
                <tr>
                    <td style=\"text-align:left; font-size:12px;\"><b>No. PO: ".$purchaseorder['purchase_order_no']."</b></td>
                    <td style=\"text-align:left; font-size:12px;\"><b>Kepada:</b></td>
                </tr>
                <tr>
                    <td style=\"text-align:left; font-size:12px;\"><b>Tgl. PO: ".$purchaseorder['purchase_order_date']."</b></td>
                    <td style=\"text-align:left; font-size:12px;\"><b>" . $purchaseorder['supplier_name'] . "</b></td>
                </tr>
                <tr>
                    <td></td>
                    <td style=\"text-align:left; font-size:12px;\">" . $purchaseorder['supplier_address'] . "</td>
                </tr>
            </table>
            <br>
        ";
        $pdf::writeHTML($tbl, true, false, false, false, '');

        // Item Table
        $tbl = "
            <table border=\"1\" cellspacing=\"0\" cellpadding=\"4\" width=\"100%\">
                <tr>
                    <th style=\"text-align:center; font-size:12px;\" width=\"5%\">No</th>
                    <th style=\"text-align:center; font-size:12px;\" width=\"25%\">Nama Barang</th>
                    <th style=\"text-align:center; font-size:12px;\" width=\"10%\">Qty</th>
                    <th style=\"text-align:center; font-size:12px;\" width=\"15%\">Harga</th>
                    <th style=\"text-align:center; font-size:12px;\" width=\"10%\">Diskon</th>
                    <th style=\"text-align:center; font-size:12px;\" width=\"10%\">Jumlah (DPP)</th>
                    <th style=\"text-align:center; font-size:12px;\" width=\"10%\">Total</th>
                    <th style=\"text-align:center; font-size:12px;\" width=\"15%\">Ket</th>
                </tr>
        ";
        $no = 1;
        $total = 0;
        $totalJumlah = 0;
        foreach ($purchaseorderitem as $key => $val) {
            $Jumlah = $val['quantity'] * $val['item_unit_cost'] - $val['discount_amount'];
            $totalJumlah += $Jumlah;
            $total = $totalJumlah + $purchaseorder['ppn_in_amount'];
            $tbl .= "
                <tr>
                    <td style=\"text-align:center; font-size:12px;\">" . $no . "</td>
                    <td style=\"text-align:left; font-size:12px;\">" . $this->getItemCategoryName($val['item_category_id']) . "-" . $this->getItemTypeName($val['item_type_id']) . "</td>
                    <td style=\"text-align:right; font-size:12px;\">" . $val['quantity'] . "</td>
                    <td style=\"text-align:right; font-size:12px;\">" . number_format($val['item_unit_cost'], 2) . "</td>
                    <td style=\"text-align:right; font-size:12px;\">" . $val['discount_percentage'] . "%</td>
                    <td style=\"text-align:right; font-size:12px;\">" . number_format($val['subtotal_amount'], 2) . "</td>
                    <td style=\"text-align:right; font-size:12px;\">" . number_format($Jumlah, 2) . "</td>
                    <td style=\"text-align:right; font-size:12px;\">" . $purchaseorder['purchase_order_remark'] . "</td>
                </tr>
            ";
            $no++;
        }

        $tbl .= "
            <tr>
                <td colspan=\"6\" style=\"text-align:center;font-weight: bold\">PPN</td>
                <td style=\"text-align:right;\">" . number_format($purchaseorder['ppn_in_amount'], 2) . "</td>
                <td></td>
            </tr>
            <tr>
                <td colspan=\"6\" style=\"text-align:center;font-weight: bold\">Total</td>
                <td style=\"text-align:right;\">" . number_format($total, 2) . "</td>
                <td></td>
            </tr>
        </table>";
        $pdf::writeHTML($tbl, true, false, false, false, '');

        // Footer
        $path = '<img width="60"; height="60" src="resources/assets/img/ttd.png">';
        $footer = "
            <table style=\"text-align:center; font-weight: bold\" cellspacing=\"20\">
                <tr>
                    <th>Disiapkan Oleh:</th>
                    <th>Disetujui Oleh:</th>
                    <th>Diketahui Oleh:</th>
                </tr>
            </table>
            <table style=\"text-align:center;\" cellspacing=\"0\">
                <tr>
                    <th></th>
                    <th></th>
                    <th></th>
                </tr>
            </table>
            <table style=\"text-align:center; font-weight: bold\" cellspacing=\"0\">
                <tr>
                    <th>(____________________)</th>
                    <th>(____________________)</th>
                    <th>(____________________)</th>
                </tr>
            </table>
        ";
        $pdf::writeHTML($footer, true, false, false, false, '');

        ob_clean();
        $filename = 'PO_' . $purchaseorder['purchase_order_no'] . '.pdf';
        $pdf::Output($filename, 'I');
    }


    public function elements_add(Request $request)
    {
        $purchaseorderelements = Session::get('purchaseorderelements');
        if (!$purchaseorderelements || $purchaseorderelements == '') {
            $purchaseorderelements['purchase_order_date'] = '';
            $purchaseorderelements['purchase_order_shipment_date'] = '';
            $purchaseorderelements['warehouse_id'] = '';
            $purchaseorderelements['supplier_id'] = '';
            $purchaseorderelements['payment_method'] = '';
            $purchaseorderelements['purchase_order_remark'] = '';
        }
        $purchaseorderelements[$request->name] = $request->value;
        Session::put('purchaseorderelements', $purchaseorderelements);
    }

    public function processAddArrayPurchaseOrderItem(Request $request)
    {
        $fields = $request->validate([
            'item_category_id'          => 'required',
            'item_type_id'              => 'required',
            'item_unit_id'              => 'required',
            'quantity'                  => 'required',
            'price'                     => 'required',
            'total_price'               => 'required',
            // 'discount_percentage'       => 'required',
        ]);

        $purchaseorderitem = array(
            'item_category_id'        => $request->item_category_id,
            'item_type_id'            => $request->item_type_id,
            'item_unit_id'            => $request->item_unit_id,
            'quantity'                => $request->quantity,
            'price'                    => $request->price,
            'total_price'            => $request->total_price,
            'discount_percentage'    => $request['discount_percentage_item'],
            'discount_amount'        => $request['discount_amount_item'],
        );
        //dd($purchaseorderitem);

        $lastpurchaseorderitem = Session::get('purchaseorderitem');
        if ($lastpurchaseorderitem !== null) {
            array_push($lastpurchaseorderitem, $purchaseorderitem);
            Session::put('purchaseorderitem', $lastpurchaseorderitem);
        } else {
            $lastpurchaseorderitem = [];
            array_push($lastpurchaseorderitem, $purchaseorderitem);
            Session::push('purchaseorderitem', $purchaseorderitem);
        }

        Session::put('editarraystate', 1);

        return redirect('/purchase-order/add');
    }

    public function deleteArrayPurchaseOrderItem($record_id)
    {
        $arrayBaru            = array();
        $dataArrayHeader    = Session::get('purchaseorderitem');

        foreach ($dataArrayHeader as $key => $val) {
            if ($key != $record_id) {
                $arrayBaru[$key] = $val;
            }
        }
        Session::forget('purchaseorderitem');
        Session::put('purchaseorderitem', $arrayBaru);

        return redirect('/purchase-order/add');
    }

    public function deletePurchaseOrder($purchase_order_id)
    {
        $purchaseorder = PurchaseOrder::findOrFail($purchase_order_id);
        $purchaseorder->data_state = 1;
        if ($purchaseorder->save()) {
            $msg = 'Hapus Purchase Order Berhasil';
            return redirect('/purchase-order')->with('msg', $msg);
        } else {
            $msg = 'Hapus Purchase Order Gagal';
            return redirect('/purchase-order')->with('msg', $msg);
        }
    }

    public function getItemCategoryName($item_category_id)
    {
        $itemcategory = InvItemCategory::where('data_state', 0)
            ->where('item_category_id', $item_category_id)
            ->first();

        if ($itemcategory == null) {
            return "-";
        }


        return $itemcategory['item_category_name'];
    }

    public function getItemTypeName($item_type_id)
    {
        $itemtype = InvItemType::where('data_state', 0)
            ->where('item_type_id', $item_type_id)
            ->first();

        if ($itemtype == null) {
            return "-";
        }


        return $itemtype['item_type_name'];
    }

    public function getPurchaseOrderTypeName($purchase_order_type_id)
    {
        $data = PurchaseOrderType::where('data_state', 0)
            ->where('purchase_order_type_id', $purchase_order_type_id)
            ->first();

        if ($data == null) {
            return "-";
        }

        return $data['purchase_order_type_name'];
    }

    public function getItemUnitName($item_unit_id)
    {
        $itemunit = InvItemUnit::where('data_state', 0)
            ->where('item_unit_id', $item_unit_id)
            ->first();

        if ($itemunit == null) {
            return "-";
        }

        return $itemunit['item_unit_name'];
    }

    public function getCoreSupplierName($supplier_id)
    {
        $supplier = CoreSupplier::where('data_state', 0)
            ->where('supplier_id', $supplier_id)
            ->first();

        if ($supplier == null) {
            return "-";
        }

        return $supplier['supplier_name'];
    }

    public function getInvWarehouseName($warehouse_id)
    {
        $warehouse = InvWarehouse::where('data_state', 0)
            ->where('warehouse_id', $warehouse_id)
            ->first();

        if ($warehouse == null) {
            return "-";
        }

        return $warehouse['warehouse_name'];
    }

    public function getInvItemType(Request $request)
    {
        $item_category_id = $request->item_category_id;
        $data = '';

        $type = InvItemType::where('item_category_id', $item_category_id)
            ->where('data_state', '=', 0)
            ->get();

        $data .= "<option value=''>--Choose One--</option>";
        foreach ($type as $mp) {
            $data .= "<option value='$mp[item_type_id]'>$mp[item_type_name]</option>\n";
        }

        return $data;
    }

    public function getCorecity(Request $request)
    {
        $province_id = $request->province_id;
        $data = '';

        $city = Corecity::where('province_id', $province_id)
            ->where('data_state', '=', 0)
            ->get();

        $data .= "<option value=''>--Choose One--</option>";
        foreach ($city as $mp) {
            $data .= "<option value='$mp[city_id]'>$mp[city_name]</option>\n";
        }

        return $data;
    }

    public function addCoreSupplier(Request $request)
    {
        $supplier_name              = $request->supplier_name;
        $province_id                = $request->province_id;
        $city_id                    = $request->city_id;
        $supplier_address           = $request->supplier_address;
        $supplier_home_phone        = $request->supplier_home_phone;
        $supplier_mobile_phone1     = $request->supplier_mobile_phone1;
        $supplier_mobile_phone2     = $request->supplier_mobile_phone2;
        $supplier_fax_number        = $request->supplier_fax_number;
        $supplier_email             = $request->supplier_email;
        $supplier_contact_person    = $request->supplier_contact_person;
        $supplier_id_number         = $request->supplier_id_number;
        $supplier_tax_no            = $request->supplier_tax_no;
        $supplier_payment_terms     = $request->supplier_payment_terms;
        $supplier_remark            = $request->supplier_remark;
        $data = '';

        $coresupplier = CoreSupplier::create([
            'supplier_name'             => $supplier_name,
            'province_id'               => $province_id,
            'city_id'                   => $city_id,
            'supplier_address'          => $supplier_address,
            'supplier_home_phone'       => $supplier_home_phone,
            'supplier_mobile_phone1'    => $supplier_mobile_phone1,
            'supplier_mobile_phone2'    => $supplier_mobile_phone2,
            'supplier_fax_number'       => $supplier_fax_number,
            'supplier_email'            => $supplier_email,
            'supplier_contact_person'   => $supplier_contact_person,
            'supplier_id_number'        => $supplier_id_number,
            'supplier_tax_no'           => $supplier_tax_no,
            'supplier_payment_terms'    => $supplier_payment_terms,
            'supplier_remark'           => $supplier_remark,
            'created_id'                => Auth::id()
        ]);

        $supplier = CoreSupplier::where('data_state', '=', 0)
            ->get();

        $data .= "<option value=''>--Choose One--</option>";
        foreach ($supplier as $mp) {
            $data .= "<option value='$mp[supplier_id]'>$mp[supplier_name]</option>\n";
        }

        return $data;
    }

    public function addInvWarehouse(Request $request)
    {
        $warehouse_code         = $request->warehouse_code;
        $warehouse_name         = $request->warehouse_name;
        $warehouse_address      = $request->warehouse_address;
        $warehouse_location_id  = $request->warehouse_location_id;
        $warehouse_phone        = $request->warehouse_phone;
        $warehouse_remark       = $request->warehouse_remark;
        $data = '';

        $coresupplier = InvWarehouse::create([
            'warehouse_code'        => $warehouse_code,
            'warehouse_name'        => $warehouse_name,
            'warehouse_address'     => $warehouse_address,
            'warehouse_location_id' => $warehouse_location_id,
            'warehouse_phone'       => $warehouse_phone,
            'warehouse_remark'      => $warehouse_remark,
            'created_id'            => Auth::id()
        ]);

        $warehouse = InvWarehouse::where('data_state', '=', 0)
            ->get();

        $data .= "<option value=''>--Choose One--</option>";
        foreach ($warehouse as $mp) {
            $data .= "<option value='$mp[warehouse_id]'>$mp[warehouse_name]</option>\n";
        }

        return $data;
    }

    public function processAddPurchaseOrder(Request $request)
    {
        // Validate input fields
        $fields = $request->validate([
            'purchase_order_date'               => 'required',
            'purchase_order_shipment_date'      => 'required',
            'warehouse_id'                      => 'required',
            'supplier_id'                       => 'required',
            'total_item_all'                    => 'required',
            'total_amount'                      => 'required',
            'payment_method'                    => 'required',
        ]);

        // Begin transaction to ensure atomicity
        DB::beginTransaction();

        try {
            // Create the purchase order
            $purchaseorder = PurchaseOrder::create([
                'purchase_order_date'           => $fields['purchase_order_date'],
                'purchase_order_shipment_date'  => $fields['purchase_order_shipment_date'],
                'warehouse_id'                  => $fields['warehouse_id'],
                'supplier_id'                   => $fields['supplier_id'],
                'payment_method'                => $fields['payment_method'],
                'total_item'                    => $fields['total_item_all'],
                'total_amount'                  => $fields['total_amount'],
                'ppn_in_percentage'             => $request['ppn_in_percentage'],
                'ppn_in_amount'                 => $request['ppn_in_amount'],
                'subtotal_after_ppn_in'         => $request['subtotal_after_ppn_in'],
                'purchase_order_remark'         => $request->purchase_order_remark,
                'approved'                      => 1,//approve
                'branch_id'                     => Auth::user()->branch_id,
            ]);

            // Get purchase order items from the session
            $purchaseOrderItems = Session::get('purchaseorderitem');

            // Create purchase order items associated with the purchase order
            foreach ($purchaseOrderItems as $item) {
                $purchaseorder->items()->create([
                    'item_category_id'     => $item['item_category_id'],
                    'item_type_id'         => $item['item_type_id'],
                    'item_unit_id'         => $item['item_unit_id'],
                    'quantity'             => $item['quantity'],
                    'quantity_outstanding' => $item['quantity'],
                    'item_unit_cost'       => $item['price'],
                    'subtotal_amount'      => $item['total_price'],
                    'discount_percentage'  => $item['discount_percentage'],
                    'discount_amount'      => $item['discount_amount'],
                ]);
            }

            // Commit the transaction
            DB::commit();

            // Redirect with success message
            return redirect('/purchase-order')->with('msg', 'Tambah Purchase Order Berhasil');

        } catch (\Exception $e) {
            // Rollback transaction in case of error
            DB::rollBack();

            // Redirect with error message
            return redirect('/purchase-order/add')->with('msg', 'Tambah Purchase Order Gagal');
        }
    }

    public function getSelectDataUnit(Request $request){

        // dd($request->all());
        // $item_stock_id  = $request->item_stock_id;
        // $item_type_id   = InvItemStock::select('*')
        // ->where('inv_item_stock.data_state','=',0)
        // ->where('inv_item_stock.item_stock_id', $item_stock_id)
        //
        // ->first();

        $inv_item_type= InvItemType::where('item_type_id', $request->item_type_id)
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
}
