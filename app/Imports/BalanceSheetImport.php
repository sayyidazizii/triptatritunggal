<?php

namespace App\Imports;

use App\Models\MigrationBalanceSheet;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class BalanceSheetImport implements ToModel, WithHeadingRow
{
    public function model(array $row)
    {
        return new MigrationBalanceSheet([
            'balance_sheet_report_id' => $row['balance_sheet_report_id'],
            'company_id' => $row['company_id'],
            'report_no' => $row['report_no'],
            'account_id1' => $row['account_id1'],
            'account_code1' => $row['account_code1'],
            'account_name1' => $row['account_name1'],
            'account_id2' => $row['account_id2'] ?? null,
            'account_code2' => $row['account_code2'] ?? null,
            'account_name2' => $row['account_name2'] ?? null,
            'report_formula1' => $row['report_formula1'] ?? null,
            'report_operator1' => $row['report_operator1'] ?? null,
            'report_type1' => $row['report_type1'] ?? null,
            'report_tab1' => $row['report_tab1'] ?? null,
            'report_bold1' => $row['report_bold1'] ?? null,
            'report_formula2' => $row['report_formula2'] ?? null,
            'report_operator2' => $row['report_operator2'] ?? null,
            'report_type2' => $row['report_type2'] ?? null,
            'report_tab2' => $row['report_tab2'] ?? null,
            'report_bold2' => $row['report_bold2'] ?? null,
            'report_formula3' => $row['report_formula3'] ?? null,
            'report_operator3' => $row['report_operator3'] ?? null,
            'balance_report_type' => $row['balance_report_type'] ?? null,
            'balance_report_type1' => $row['balance_report_type1'] ?? null,
            'data_state' => $row['data_state'],
            'created_id' => $row['created_id'],
            'created_on' => $row['created_on'],
            'last_update' => $row['last_update'],
        ]);
    }
}
