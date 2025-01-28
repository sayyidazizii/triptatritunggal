<?php

namespace App\Http\Controllers;

use Log;
use App\Models\AcctAccount;
use Illuminate\Http\Request;
use App\Exports\AccountExport;
use App\Imports\AccountsImport;
use App\Models\MigrationAccount;
use Illuminate\Support\Facades\DB;
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

    public function downloadTemplateAccount()
    {
        // Generate the template using the export class
        return Excel::download(new AccountExport, 'account-template.xlsx');
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
}

