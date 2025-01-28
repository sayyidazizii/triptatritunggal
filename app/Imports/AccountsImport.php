<?php

namespace App\Imports;

use App\Models\MigrationAccount;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithHeadingRow;

class AccountsImport implements ToModel, WithHeadingRow
{
    public function model(array $row)
    {
        return new MigrationAccount([
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
            'created_at' => $row['created_at'],
            'updated_at' => $row['updated_at'],
        ]);
    }
}
