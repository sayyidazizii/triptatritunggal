<?php

namespace App\Exports;

use Maatwebsite\Excel\Concerns\FromArray;

class BalanceSheetExport implements FromArray
{
    public function array(): array
    {
        return [
            [
                'Balance Sheet Report ID', 'Company ID', 'Report No', 'Account ID1', 'Account Code1', 'Account Name1',
                'Account ID2', 'Account Code2', 'Account Name2', 'Report Formula1', 'Report Operator1', 'Report Type1',
                'Report Tab1', 'Report Bold1', 'Report Formula2', 'Report Operator2', 'Report Type2', 'Report Tab2',
                'Report Bold2', 'Report Formula3', 'Report Operator3', 'Balance Report Type', 'Balance Report Type1',
                'Data State', 'Created ID', 'Created On', 'Last Update'
            ],
            // Example row (replace with actual data as needed)
            [
                1, 1, 'RPT001', 101, 'ACC001', 'Assets', 102, 'ACC002', 'Liabilities', 'SUM', '+', 'Type A', 1,
                false, 'SUBTRACT', '-', 'Type B', 2, true, 'MULTIPLY', '*', 'Main', 'Sub', 'active', 201, now(), now()
            ],
            [
                2, 2, 'RPT002', 103, 'ACC003', 'Equity', 104, 'ACC004', 'Revenue', 'SUM', '+', 'Type C', 1,
                true, 'SUBTRACT', '-', 'Type D', 2, false, 'DIVIDE', '/', 'Main', 'Sub', 'inactive', 202, now(), now()
            ],
            // Add more rows as needed for the template
        ];
    }
}
