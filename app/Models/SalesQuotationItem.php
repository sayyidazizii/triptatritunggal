<?php

namespace App\Models;

use App\Models\InvItemType;
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

}
