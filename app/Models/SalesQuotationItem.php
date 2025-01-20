<?php

namespace App\Models;

use App\Models\InvItemType;
use App\Models\InvItemUnit;
use App\Models\SalesQuotation;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

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

    public function itemType()
    {
        return $this->belongsTo(InvItemType::class, 'item_type_id', 'item_type_id');
    }

    public function salesQuotation()
    {
        return $this->belongsTo(SalesQuotation::class, 'sales_quotation_id', 'sales_quotation_id');
    }

    public function itemUnit()
    {
        return $this->belongsTo(InvItemUnit::class, 'item_unit_id', 'item_unit_id');
    }
}
