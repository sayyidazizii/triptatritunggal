<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromArray;

class ProfitLossExport implements FromArray
{
    public function array(): array
    {
        // Define the headers based on the model's $fillable fields
        return [
            [
                'Profit Loss Report ID', 'Company ID', 'Format ID', 'Report No', 'Account Type ID', 'Account ID',
                'Account Code', 'Account Name', 'Report Formula', 'Report Operator', 'Report Type', 'Report Tab',
                'Report Bold', 'Data State', 'Created ID', 'Updated ID', 'Created At', 'Updated At'
            ],
            // Example row (replace with actual data as needed)
            [
                1, 1, 1, 1001, 1, 101, 'ACC001', 'Revenue', 'SUM', '+', 'Type A', 'Tab 1',
                false, 'active', 101, 102, now(), now()
            ],
            [
                2, 1, 2, 1002, 2, 102, 'ACC002', 'Expenses', 'SUBTRACT', '-', 'Type B', 'Tab 2',
                true, 'inactive', 103, 104, now(), now()
            ],
            // Add more rows as needed for the template
        ];
    }
}
