<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class SalesQuotationItem extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $table        = 'sales_quotation_item';
    protected $primaryKey   = 'sales_quotation_item_id';

    protected $guarded = [
        'sales_quotation_item_id',
    ];
    
}
