<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AcctDebtRepayment extends Model
{
    // use HasFactory;
    protected $table        = 'acct_debt_repayment';
    protected $primaryKey   = 'debt_repayment_id';
    protected $guarded = [
        'created_at',
        'updated_at'
    ];
}