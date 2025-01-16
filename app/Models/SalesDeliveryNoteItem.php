<?php

namespace App\Models;

use App\Models\SalesDeliveryNote;
use App\Models\SalesQuotationItem;
use Illuminate\Database\Eloquent\Model;

class SalesDeliveryNoteItem extends Model
{

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */

    protected $table        = 'sales_delivery_note_item';
    protected $primaryKey   = 'sales_delivery_note_item_id';

    protected $guarded = [
        'sales_delivery_note_item_id',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array
     */
    protected $hidden = [
    ];

    public function deliveryNote()
    {
        return $this->belongsTo(SalesDeliveryNote::class, 'sales_delivery_note_id', 'sales_delivery_note_id');
    }

    public function quotationItem()
    {
        return $this->belongsTo(SalesQuotationItem::class, 'sales_quotation_item_id', 'sales_quotation_item_id');
    }

}
