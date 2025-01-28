<?php

namespace App\Http\Controllers;

use Log;
use Illuminate\Http\Request;
use App\Exports\AccountExport;
use App\Imports\AccountsImport;
use App\Models\MigrationAccount;
use Maatwebsite\Excel\Facades\Excel;

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
            $request->validate([
                'file' => 'required|mimes:xlsx,xls',
            ]);

            $file = $request->file('file');
            $path = $file->store('temp'); // Simpan file sementara

            // Attempt to import the data
            Excel::import(new AccountsImport, Storage::path($path));

            // Hapus file setelah proses import selesai
            Storage::delete($path);

            return redirect()->route('migration.account')->with('success', 'Data berhasil diimpor!');
        } catch (\Exception $e) {
            // Log the error message (optional)
            Log::error('Import Account Error: ' . $e->getMessage());

            return redirect()->route('migration.account')->with('error', 'Terjadi kesalahan saat mengimpor data: ' . $e->getMessage());
        }
    }

}

