<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\CoreCustomer;
use Illuminate\Http\Request;
use App\Models\AcctDebtRepayment;
use App\Models\PreferenceCompany;
use Illuminate\Support\Facades\DB; 
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Models\AcctDebtRepaymentItem;
use Illuminate\Support\Facades\Session;
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;

class CoreCustomerController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index()
    {
        Session::forget('datacustomer');
        $data = CoreCustomer::select('*')
        ->where('data_state',0)
        ->get();
        return view('content.CoreCustomer.ListCoreCustomer', compact('data'));
    }

    public function addElementsCoreCustomer(Request $request)
    {
        $datacustomer = Session::get('datacustomer');
        if(!$datacustomer || $datacustomer == ''){
            $datacustomer['customer_number']    = '';
            $datacustomer['customer_name']      = '';   
            $datacustomer['debt_limit']         = '';   
        }
        $datacustomer[$request->name] = $request->value;
        Session::put('datacustomer', $datacustomer);
    }

    public function resetElementsCoreCustomer()
    {
        Session::forget('datacustomer');

        return redirect()->back();
    }

    public function addCoreCustomer()
    {
        $customer = Session::get('datacustomer');

        return view('content.CoreCustomer.AddCoreCustomer', compact('customer'));
    }

    public function processAddCoreCustomer(Request $request)
    {
        $request->validate(['customer_name' => 'required']);

        try {
            DB::beginTransaction();
            
            $data = $request->all();
            
                CoreCustomer::create($data);

                $msg = 'Tambah Pegawai Berhasil';

            DB::commit();

                return redirect()->back()->with('msg', $msg);

        } catch (\Exception $e) {
            DB::rollBack();
            report($e);
            
            $msg = 'Tambah Pegawai Gagal';
            return redirect()->back()->with('msg', $msg);
        }
    }

    public function editCoreCustomer($customer_id)
     {
         $data = CoreCustomer::select('customer_number','customer_name','debt_limit','customer_id')
         ->where('customer_id', $customer_id)
         ->first();

         return view('content.CoreCustomer.EditCoreCustomer', compact('data'));
     }

    public function processEditCoreCustomer(Request $request)
     {
         $table                     = CoreCustomer::findOrFail($request->customer_id);
         $table->customer_number    = $request->customer_number;
         $table->customer_name      = $request->customer_name;
         $table->debt_limit         = $request->debt_limit;
         $table->updated_id         = Auth::id();

        //  echo json_encode( $table); exit;
         
         if ($table->save()) {
             $msg = 'Ubah Pegawai Berhasil';
             return redirect()->back()->with('msg', $msg);
         } else {
             $msg = 'Ubah Pegawai Gagal';
             return redirect()->back()->with('msg', $msg);
         }


     }

    public function processEditLimitCoreCustomer(Request $request)
    {
        // print_r($request); exit;
        $customer = CoreCustomer::select('debt_limit','customer_id','amount_debt','remaining_limit')
        ->where('data_state',0)
        ->get();

            foreach ($customer as $p) {
                $p->remaining_limit     = $request->debt_limit - $p['amount_debt'] ;  
                $p->debt_limit          = $request->debt_limit;  
                $p->updated_id          = Auth::id();    
                $p->save();
             }
                
            if ($p->save()) {
                $msg = 'Ubah Limit Berhasil';
                return redirect()->back()->with('msg', $msg);
                } else {
                        $msg = 'Ubah Limit Gagal';
                        return redirect()->back()->with('msg', $msg);
                }
    }

    public function editlimitCoreCustomer()
     {
         $customer = CoreCustomer::select('customer_number','customer_name','debt_limit','customer_id')
         ->where('data_state',0)
         ->get();
        
         return view('content.CoreCustomer.EditLimitCoreCustomer', compact('customer'));
     }

    public function deleteCoreCustomer($customer_id)
    {
        $table              = CoreCustomer::findOrFail($customer_id);
        $table->data_state  = 1;
        $table->updated_id  = Auth::id();

        if ($table->save()) {
            $msg = 'Hapus Pegawai Berhasil';
            return redirect()->back()->with('msg', $msg);
        } else {
            $msg = 'Hapus Pegawai Gagal';
            return redirect()->back()->with('msg', $msg);
        }
    }

    public function deletedebtCoreCustomer(Request $request)
    {
        // mentotal jumlah hutang pegaawai 
        $customer = CoreCustomer::select('amount_debt','customer_id')
        ->where('data_state',0)
        ->get();

            //looping
            foreach($customer as $p){
                $amount_debt = $request['total_repayment'] += $p['amount_debt'] ;
                $p->amount_debt = $amount_debt;
            }

          $debtrepayment = array(
              'total_repayment'                 => $request->total_repayment,
              'debt_repayment_date'             => Carbon::now(),
              'updated_id'                      => Auth::id(),
              'created_id'                      => Auth::id(),
          );
             
        if(AcctDebtRepayment::create($debtrepayment)){
                $lastdebtrepayment = AcctDebtRepayment::where('created_id',Auth::id())
                ->orderBy('created_at', 'DESC')
                ->first();

                $customer = CoreCustomer::select('amount_debt','customer_id')
                ->where('data_state',0)
                ->get();
         
                foreach($customer as $p){
                    $amount_debt    = $request['debt_repayment_amount'] = $p['amount_debt'];
                    $customer_id    = $request['customer_id'] = $p['customer_id'];
                    $p->amount_debt = $amount_debt;
                    $p->customer_id = $customer_id;
             
                    $debtrepayment = array(
                        'debt_repayment_id'     => $lastdebtrepayment['debt_repayment_id'],
                        'customer_id'           =>  $request->customer_id,
                        'debt_repayment_amount' => $request->debt_repayment_amount,
                        'updated_id'            => Auth::id(),
                        'created_id'            => Auth::id(),    
                    );
                    AcctDebtRepaymentItem::create($debtrepayment);
                }
        }
                // echo json_encode($debtrepayment); exit;
                

            // hapus pelunasan hutang customer
                $customer = CoreCustomer::select('amount_debt','remaining_limit','customer_id')
                ->where('data_state',0)
                ->get();
                
                foreach ($customer as $p) {
                    $p->remaining_limit = $p['amount_debt'] + $p['remaining_limit'];
                    $p->amount_debt     = 0;
                    $p->updated_id      = Auth::id();
                    $p->save();
                }
                
            if ($p->save()) {
             $msg = 'Pelunasan Hutang Berhasil';
             return redirect()->back()->with('msg', $msg);
            } else {
                $msg = 'Pelunasan Hutang Gagal';
                return redirect()->back()->with('msg', $msg);
            }            
    }

    public function exportCoreCustomer()
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
                        $sheet->setCellValue('D'.$j, $val->amount_debt);
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
}

