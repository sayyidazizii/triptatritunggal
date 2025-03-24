<?php

namespace App\Http\Controllers;

use App\Models\InvItem;
use App\Models\CoreCity;
use App\Models\CoreGrade;
use App\Models\InvItemType;
use App\Models\CoreProvince;
use App\Models\CoreSupplier;
use Illuminate\Http\Request;
use Elibyy\TCPDF\Facades\TCPDF;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Providers\RouteServiceProvider;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Validator;

class CoreSupplierController extends Controller
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
        $coresupplier = CoreSupplier::where('data_state','=',0)->get();

        return view('content/CoreSupplier/ListCoreSupplier',compact('coresupplier'));
    }

    public function addCoreSupplier(Request $request)
    {
        $province = CoreProvince::where('data_state',0)
        ->pluck('province_name', 'province_id');

        return view('content/CoreSupplier/FormAddCoreSupplier', compact('province'));
    }

    public function processAddCoreSupplier(Request $request)
    {
        $fields = $request->validate([
            'supplier_name' => 'required',
            'province_id'   => 'required',
            'city_id'       => 'required',
        ]);
        

        $item = CoreSupplier::create([
            'supplier_name'                 => $fields['supplier_name'], 
            'province_id'                   => $fields['province_id'],   
            'city_id'                       => $fields['city_id'],
            'supplier_address'              => $request->supplier_address,
            'supplier_home_phone'           => $request->supplier_home_phone,
            'supplier_mobile_phone1'        => $request->supplier_mobile_phone1,
            'supplier_mobile_phone2'        => $request->supplier_mobile_phone2,
            'supplier_fax_number'           => $request->supplier_fax_number,
            'supplier_email'                => $request->supplier_email,
            'supplier_contact_person'       => $request->supplier_contact_person,
            'supplier_id_number'            => $request->supplier_id_number,
            'supplier_tax_no'               => $request->supplier_tax_no,
            'supplier_tax_no'               => $request->supplier_tax_no,
            'supplier_npwp_no'              => $request->supplier_npwp_no,
            'supplier_npwp_address'         => $request->supplier_npwp_address,
            'supplier_payment_terms'        => $request->supplier_payment_terms,
            'supplier_bank_acct_name'       => $request->supplier_bank_acct_name,
            'supplier_bank_acct_no'         => $request->supplier_bank_acct_no,
            'supplier_remark'               => $request->supplier_remark,
            'created_id'                    => Auth::id(),
            'data_state'                    => 0
        ]);

        $msg = 'Tambah Pemasok Berhasil';
        return redirect('/supplier')->with('msg',$msg);
    }

    public function editCoreSupplier($supplier_id)
    {
        $province = CoreProvince::where('data_state',0)
        ->pluck('province_name', 'province_id');

        $supplier = CoreSupplier::where('supplier_id',$supplier_id)->first();

        $city     = CoreCity::where('data_state',0)
        ->where('province_id', $supplier['province_id'])
        ->pluck('city_name', 'city_id');

        return view('content/CoreSupplier/FormEditCoreSupplier',compact('supplier', 'province', 'city'));
    }

    public function processEditCoreSupplier(Request $request)
    {
        $fields = $request->validate([
            'supplier_id'   => 'required',
            'supplier_name' => 'required',
            'province_id'   => 'required',
            'city_id'       => 'required',
        ]);

        $item = CoreSupplier::findOrFail($fields['supplier_id']);
        $item->supplier_name                    = $fields['supplier_name'];
        $item->province_id                      = $fields['province_id'];
        $item->city_id                          = $fields['city_id'];
        $item->supplier_address                 = $request->supplier_address;
        $item->supplier_home_phone              = $request->supplier_home_phone;
        $item->supplier_mobile_phone1           = $request->supplier_mobile_phone1;
        $item->supplier_mobile_phone2           = $request->supplier_mobile_phone2;
        $item->supplier_fax_number              = $request->supplier_fax_number;
        $item->supplier_email                   = $request->supplier_email;
        $item->supplier_contact_person          = $request->supplier_contact_person;
        $item->supplier_id_number               = $request->supplier_id_number;
        $item->supplier_tax_no                  = $request->supplier_tax_no;
        $item->supplier_npwp_no                 = $request->supplier_npwp_no;
        $item->supplier_npwp_address            = $request->supplier_npwp_address;
        $item->supplier_payment_terms           = $request->supplier_payment_terms;
        $item->supplier_bank_acct_name          = $request->supplier_bank_acct_name;
        $item->supplier_bank_acct_no            = $request->supplier_bank_acct_no;
        $item->supplier_remark                  = $request->supplier_remark;

        if($item->save()){
            $msg = 'Edit Pemasok Berhasil';
            return redirect('/supplier')->with('msg',$msg);
        }else{
            $msg = 'Edit Pemasok Gagal';
            return redirect('/supplier')->with('msg',$msg);
        }
    }

    public function deleteCoreSupplier($item_unit_id)
    {
        $item = CoreSupplier::findOrFail($item_unit_id);
        $item->data_state = 1;
        if($item->save())
        {
            $msg = 'Hapus Pemasok Berhasil';
        }else{
            $msg = 'Hapus Pemasok Gagal';
        }

        return redirect('/supplier')->with('msg',$msg);
    }

    public function getCoreCity(Request $request){
        $province_id = $request->province_id;
        $data='';

        $city = CoreCity::where('province_id', $province_id)
        ->where('data_state','=',0)
        ->get();

        $data .= "<option value=''>--Choose One--</option>";
        foreach ($city as $mp){
            $data .= "<option value='$mp[city_id]'>$mp[city_name]</option>\n";	
        }

        return $data;
    }

    public function exportCoreSupplier()
    {

        $customer = CoreCustomer::select('*')->where('data_state',0)->get();

        $spreadsheet = new Spreadsheet();

        if(count($customer)>=0){
            $spreadsheet->getProperties()->setCreator("CIPTASOLUTINDO")
                                        ->setLastModifiedBy("CIPTASOLUTINDO")
                                        ->setTitle("LAPORAN PENJUALAN")
                                        ->setDescription("LAPORAN PENJUALAN");

            $sheet = $spreadsheet->getActiveSheet(0);
            $spreadsheet->getActiveSheet()->getPageSetup()->setFitToWidth(1);
            $spreadsheet->getActiveSheet()->getPageSetup()->setFitToWidth(1);
            $spreadsheet->getActiveSheet()->getColumnDimension('B')->setWidth(5);
            $spreadsheet->getActiveSheet()->getColumnDimension('C')->setWidth(45);
            $spreadsheet->getActiveSheet()->getColumnDimension('D')->setWidth(20);
    
            $spreadsheet->getActiveSheet()->mergeCells("B1:D1");
            $spreadsheet->getActiveSheet()->getStyle('B1')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
            $spreadsheet->getActiveSheet()->getStyle('B1')->getFont()->setBold(true)->setSize(16);

            $spreadsheet->getActiveSheet()->getStyle('B3:D3')->getBorders()->getAllBorders()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN);
            $spreadsheet->getActiveSheet()->getStyle('B3:D3')->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);

            $sheet->setCellValue('B1',"Laporan Piutang Perusahaan");	
            $sheet->setCellValue('B3',"No");
            $sheet->setCellValue('C3',"Nama Perusahaan");
            $sheet->setCellValue('D3',"Jumlah Piutang");

            
            $j  =   4;
            $no =   0;
            $subtotal_amount = 0;
            $subtotal_amount_ppn = 0;

            foreach($customer as $key=>$val){

                if(is_numeric($key)){
                    
                    $sheet = $spreadsheet->getActiveSheet(0);
                    $spreadsheet->getActiveSheet()->setTitle("Laporan Penjualan");
                    $spreadsheet->getActiveSheet()->getStyle('B'.$j.':D'.$j)->getBorders()->getAllBorders()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN);

            
                    $spreadsheet->getActiveSheet()->getStyle('B'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_CENTER);
                    $spreadsheet->getActiveSheet()->getStyle('C'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_LEFT);
                    $spreadsheet->getActiveSheet()->getStyle('D'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_RIGHT);

                        $no++;
                        $sheet->setCellValue('B'.$j, $no);
                        $sheet->setCellValue('C'.$j, $val->customer_name);
                        $sheet->setCellValue('D'.$j, number_format($val->amount_debt, 2, ',', '.'));
                }

                $j++;
        
            }
            // $spreadsheet->getActiveSheet()->getStyle('H'.$j.':M'.$j)->getNumberFormat()->setFormatCode('0.00');

            // $spreadsheet->getActiveSheet()->getStyle('B'.$j.':M'.$j)->getBorders()->getAllBorders()->setBorderStyle(\PhpOffice\PhpSpreadsheet\Style\Border::BORDER_THIN);
            // $spreadsheet->getActiveSheet()->mergeCells('B'.$j.':I'.$j);
            // $spreadsheet->getActiveSheet()->mergeCells('K'.$j.':L'.$j);
            // $spreadsheet->getActiveSheet()->getStyle('B'.$j.':I'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_RIGHT);
            // $spreadsheet->getActiveSheet()->getStyle('B'.$j.':M'.$j)->getFont()->setBold(true);
            // $spreadsheet->getActiveSheet()->getStyle('G'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_RIGHT);
            // $spreadsheet->getActiveSheet()->getStyle('H'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_RIGHT);
            // $spreadsheet->getActiveSheet()->getStyle('I'.$j.':L'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_RIGHT);
            // $spreadsheet->getActiveSheet()->getStyle('M'.$j)->getAlignment()->setHorizontal(\PhpOffice\PhpSpreadsheet\Style\Alignment::HORIZONTAL_RIGHT);
            
            // $sheet->setCellValue('B'.$j,'Total Sebelum Discount');
            // $sheet->setCellValue('J'.$j, number_format($subtotal_amount,2,'.',','));
            // $sheet->setCellValue('K'.$j,'Total Sesudah Discount');
            // $sheet->setCellValue('M'.$j, number_format($subtotal_amount_ppn,2,'.',','));
            // ob_clean();
            $filename='Laporan_Piutang_.xls';
            header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
            header('Content-Disposition: attachment;filename="'.$filename.'"');
            header('Cache-Control: max-age=0');

            $writer = \PhpOffice\PhpSpreadsheet\IOFactory::createWriter($spreadsheet, 'Xls');
            $writer->save('php://output');
        }else{
            echo "Maaf data yang di eksport tidak ada !";
        }
    }

    public function printCoreSupplier()
    {
        $customer = CoreSupplier::where('data_state', 0)->get();

        // Create new PDF instance
        $pdf = new TCPDF('P', PDF_UNIT, 'A4', true, 'UTF-8', false);

        $pdf::SetPrintHeader(false);
        $pdf::SetPrintFooter(false);

        $pdf::SetMargins(10, 10, 10, 10);

        $pdf::setImageScale(PDF_IMAGE_SCALE_RATIO);

        if (@file_exists(dirname(__FILE__).'/lang/eng.php')) {
            require_once(dirname(__FILE__).'/lang/eng.php');
            $pdf::setLanguageArray($l);
        }

        $pdf::SetFont('helvetica', 'B', 20);


                    
        $pdf::AddPage('P', 'A4');


        // Add watermark background
        $pdf::SetAlpha(0.2); // Set transparency level
        $pdf::Image(asset('img/logo_tripta.png'), 60, 90, 110, 100, '', '', '', false, 300, '', false, false, 0);
        $pdf::SetAlpha(1); // Reset transparency

        $pdf::SetFont('helvetica', '', 12);

        // Define table style
        $html = '<h2 style="text-align:center;">Laporan Hutang Perusahaan</h2>';
        $html .= '<table border="1" cellpadding="5" cellspacing="0" style="width:100%; text-align:center;">
                    <thead>
                        <tr style="font-weight:bold; background-color:#ddd;">
                            <th width="10%">No</th>
                            <th width="60%">Nama Perusahaan</th>
                            <th width="30%">Jumlah Hutang</th>
                        </tr>
                    </thead>
                    <tbody>';

            $no = 1;
            foreach ($customer as $val) {
                $html .= '<tr>
                            <td width="10%">' . $no . '</td>
                            <td width="60%" style="text-align:left;">' . $val->supplier_name . '</td>
                            <td width="30%" style="text-align:right;">' . number_format($val->amount_debt, 2, ',', '.') . '</td>
                        </tr>';
                $no++;
            }

        $html .= '</tbody></table>';

        // Output HTML to PDF
        $pdf::writeHTML($html, true, false, true, false, '');

        // Output PDF
        $filename = 'Laporan_Hutang.pdf';
        $pdf::Output($filename, 'I');
    }
}
