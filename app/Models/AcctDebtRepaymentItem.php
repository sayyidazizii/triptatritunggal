<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class AcctDebtRepaymentItem extends Model
{
    // use HasFactory;
    protected $table        = 'acct_debt_repayment_item';
    protected $primaryKey   = 'debt_repayment_item_id';
    protected $guarded = [
        'created_at',
        'updated_at'
    ];
}