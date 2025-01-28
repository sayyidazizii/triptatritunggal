<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MigrationProfitLoss extends Model
{
    use HasFactory;

    protected $fillable = [
        'company_id',
        'format_id',
        'report_no',
        'account_type_id',
        'account_id',
        'account_code',
        'account_name',
        'report_formula',
        'report_operator',
        'report_type',
        'report_tab',
        'report_bold',
        'data_state',
        'created_id'
    ];
}
