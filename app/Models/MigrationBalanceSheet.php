<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MigrationBalanceSheet extends Model
{
    use HasFactory;

    protected $fillable = [
        'balance_sheet_report_id',
        'company_id',
        'report_no',
        'account_id1',
        'account_code1',
        'account_name1',
        'account_id2',
        'account_code2',
        'account_name2',
        'report_formula1',
        'report_operator1',
        'report_type1',
        'report_tab1',
        'report_bold1',
        'report_formula2',
        'report_operator2',
        'report_type2',
        'report_tab2',
        'report_bold2',
        'report_formula3',
        'report_operator3',
        'balance_report_type',
        'balance_report_type1',
        'data_state',
        'created_id',
        'created_on',
        'last_update'
    ];
}
