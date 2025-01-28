<?php

namespace App\Http\Controllers;

use Log;
use App\Models\AcctAccount;
use Illuminate\Http\Request;
use App\Exports\AccountExport;
use App\Imports\AccountsImport;
use App\Models\MigrationAccount;
use App\Exports\ProfitLossExport;
use App\Imports\ProfitLossImport;
use Illuminate\Support\Facades\DB;
use App\Models\MigrationProfitLoss;
use App\Models\AcctProfitLossReport;
use Maatwebsite\Excel\Facades\Excel;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Validator;

class MigrationController extends Controller
{
    public function index()
    {
        return view('content.Migration.index'); // Buat view untuk form upload
    }

    // * account
    public function account()
    {
        $accounts = MigrationAccount::all();
        return view('content.Migration.account', compact('accounts'));
    }

    public function importAccount(Request $request)
    {
        try {
            // Validate incoming request data
            $validator = Validator::make($request->all(), [
                'file' => 'required|mimes:xlsx,xls',
            ]);

            if ($validator->fails()) {
                return redirect()->back()->withErrors($validator)->withInput();
            }

            MigrationAccount::truncate();

            // Get the uploaded file
            $file = $request->file('file');
            $path = $file->store('temp'); // Store the file temporarily

            // Import the data from the file
            Excel::import(new AccountsImport, storage_path('app/' . $path));

            // Delete the temporary file after import
            Storage::delete($path);

            return redirect()->route('migration.account')->with('success', 'Akun berhasil diperbarui!');
        } catch (\Exception $e) {
            // Log the error message
            Log::error('Account import failed: ' . $e->getMessage());

            // Return a message to the user
            return redirect()->route('migration.account')->with('error', 'Terjadi kesalahan saat mengimpor akun: ' . $e->getMessage());
        }
    }

    public function insertAccount(Request $request)
    {
        try {
            // Temporarily disable foreign key checks
            DB::statement('SET FOREIGN_KEY_CHECKS=0;');

            // Truncate the table to delete all existing records
            AcctAccount::truncate();

            // Prepare an empty array for the data to be inserted
            $data = [];

            $importedAccounts = MigrationAccount::all();
            // Assuming $importedAccounts contains the data you want to insert
            foreach ($importedAccounts as $accountData) {
                // Prepare each record for insertion
                $data[] = [
                    'account_id' => $accountData['account_id'],
                    'company_id' => $accountData['company_id'],
                    'account_code' => $accountData['account_code'],
                    'account_name' => $accountData['account_name'],
                    'account_group' => $accountData['account_group'],
                    'account_suspended' => $accountData['account_suspended'],
                    'account_default_status' => $accountData['account_default_status'],
                    'account_remark' => $accountData['account_remark'],
                    'account_status' => $accountData['account_status'],
                    'account_token' => $accountData['account_token'],
                    'parent_account_status' => $accountData['parent_account_status'],
                    'account_type_id' => $accountData['account_type_id'],
                    'data_state' => $accountData['data_state'],
                    'created_id' => $accountData['created_id'],
                    'updated_id' => $accountData['updated_id'],
                    'created_at' => now(),
                    'updated_at' => now(),
                ];
            }

            // Insert the data into the 'acct_account' table
            AcctAccount::insert($data);

            // Re-enable foreign key checks
            DB::statement('SET FOREIGN_KEY_CHECKS=1;');

            return redirect()->route('migration.account')->with('success', 'Akun berhasil dimasukkan!');
        } catch (\Exception $e) {
            // Log the error message
            Log::error('Insert Account failed: ' . $e->getMessage());

            // Re-enable foreign key checks in case of an error
            DB::statement('SET FOREIGN_KEY_CHECKS=1;');

            // Return a message to the user
            return redirect()->route('migration.account')->with('error', 'Terjadi kesalahan saat memasukkan akun: ' . $e->getMessage());
        }
    }

    // * profit loss
    public function profitLoss()
    {
        $profitLoss = MigrationProfitLoss::all();
        return view('content.Migration.profitLoss', compact('profitLoss'));
    }

    public function importProfitLoss(Request $request)
    {
        try {
            // Validate incoming request data
            $validator = Validator::make($request->all(), [
                'file' => 'required|mimes:xlsx,xls',
            ]);

            if ($validator->fails()) {
                return redirect()->back()->withErrors($validator)->withInput();
            }

            MigrationProfitLoss::truncate();

            // Get the uploaded file
            $file = $request->file('file');
            $path = $file->store('temp'); // Store the file temporarily

            // Import the data from the file
            Excel::import(new ProfitLossImport, storage_path('app/' . $path));

            // Delete the temporary file after import
            Storage::delete($path);

            return redirect()->route('migration.profit-loss')->with('success', 'Laba Rugi berhasil diperbarui!');
        } catch (\Exception $e) {
            // Log the error message
            Log::error('profit-loss import failed: ' . $e->getMessage());

            // Return a message to the user
            return redirect()->route('migration.profit-loss')->with('error', 'Terjadi kesalahan saat mengimpor Laba Rugi: ' . $e->getMessage());
        }
    }

    public function insertProfitLoss(Request $request)
    {
        try {
            // Temporarily disable foreign key checks
            DB::statement('SET FOREIGN_KEY_CHECKS=0;');

            // Truncate the table to delete all existing records
            AcctProfitLossReport::truncate();

            // Prepare an empty array for the data to be inserted
            $data = [];

            $importedProfitLoss = MigrationProfitloss::all();
            // Assuming $importedProfitLoss contains the data you want to insert
            foreach ($importedProfitLoss as $row) {
                // Prepare each record for insertion
                $data[] = [
                    'account_id' => $row['account_id'],
                    'company_id' => $row['company_id'],
                    'account_code' => $row['account_code'],
                    'account_name' => $row['account_name'],
                    'account_group' => $row['account_group'],
                    'account_suspended' => $row['account_suspended'],
                    'account_default_status' => $row['account_default_status'],
                    'account_remark' => $row['account_remark'],
                    'account_status' => $row['account_status'],
                    'account_token' => $row['account_token'],
                    'parent_account_status' => $row['parent_account_status'],
                    'account_type_id' => $row['account_type_id'],
                    'data_state' => $row['data_state'],
                    'created_id' => $row['created_id'],
                    'updated_id' => $row['updated_id'],
                    'created_at' => now(),
                    'updated_at' => now(),
                ];
            }

            // Insert the data into the 'acct_account' table
            AcctProfitLossReport::insert($data);

            // Re-enable foreign key checks
            DB::statement('SET FOREIGN_KEY_CHECKS=1;');

            return redirect()->route('migration.profit-loss')->with('success', 'Laba Rugi berhasil dimasukkan!');
        } catch (\Exception $e) {
            // Log the error message
            Log::error('Insert profit-loss failed: ' . $e->getMessage());

            // Re-enable foreign key checks in case of an error
            DB::statement('SET FOREIGN_KEY_CHECKS=1;');

            // Return a message to the user
            return redirect()->route('migration.profit-loss')->with('error', 'Terjadi kesalahan saat memasukkan Laba Rugi: ' . $e->getMessage());
        }
    }

    // * downloadTemplate
    public function downloadTemplate($template)
    {
        // Generate the template using the export class
        if ($template == 'account'){
            return Excel::download(new AccountExport, 'account-template.xlsx');
        } else if ($template == 'profit-loss'){
            return Excel::download(new ProfitLossExport, 'profit-loss-template.xlsx');
        } else {
            return Excel::download(new AccountExport, 'account-template.xlsx');
        }
    }
}

