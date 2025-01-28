<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MigrationAccount extends Model
{
    use HasFactory;

    protected $fillable = [
        'account_id',
        'company_id',
        'account_code',
        'account_name',
        'account_group',
        'account_suspended',
        'account_default_status',
        'account_remark',
        'account_status',
        'account_token',
        'parent_account_status',
        'account_type_id',
        'data_state',
        'created_id',
        'updated_id',
        'created_at',
        'updated_at',
    ];
}
