<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SalesQuotation extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $table        = 'sales_quotation';
    protected $primaryKey   = 'sales_quotation_id';

    protected $guarded = [
        'sales_quotation_id',
    ];
}
