<?php

namespace App\Models;

use App\Models\CoreCustomer;
use App\Models\SalesQuotationItem;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class SalesQuotation extends Model
{
    use HasFactory;
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

    public function customer()
{
    return $this->belongsTo(CoreCustomer::class, 'customer_id', 'customer_id');
}

public function items()
{
    return $this->hasMany(SalesQuotationItem::class, 'sales_quotation_id', 'sales_quotation_id');
}

}
