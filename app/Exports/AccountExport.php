<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromArray;

class AccountExport implements FromArray
{
    public function array(): array
    {
        // Define the headers based on the model's $fillable fields
        return [
            ['Account ID', 'Company ID', 'Account Code', 'Account Name', 'Account Group', 'Account Suspended',
            'Account Default Status', 'Account Remark', 'Account Status', 'Account Token', 'Parent Account Status',
            'Account Type ID', 'Data State', 'Created ID', 'Updated ID', 'Created At', 'Updated At'],
            // Example row (replace with actual data as needed)
            [1, 1, 'ACC001', 'Sample Account', 'Group A', 'No', 'Active', 'Remark', 'Active', 'token123', 'Status', 1, 'Active', 101, 102, now(), now()],
            [2, 1, 'ACC002', 'Another Account', 'Group B', 'Yes', 'Inactive', 'Remark', 'Inactive', 'token124', 'Status', 2, 'Inactive', 103, 104, now(), now()],
            // Add more rows as needed for the template
        ];
    }
}
