<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Models\CoreCustomer;
use App\Models\AcctDebtRepayment;
use App\Models\AcctDebtRepaymentItem;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\DB; 
use Carbon\Carbon;

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
    }

