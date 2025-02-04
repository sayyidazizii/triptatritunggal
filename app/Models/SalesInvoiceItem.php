<?php

namespace App\Models;

use App\Models\InvItemType;
use App\Models\SalesInvoice;
use App\Models\SalesQuotationItem;
use App\Models\SalesDeliveryNoteItem;
use Illuminate\Database\Eloquent\Model;

class SalesInvoiceItem extends Model
{

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */

    protected $table        = 'sales_invoice_item';
    protected $primaryKey   = 'sales_invoice_item_id';

    protected $guarded = [
        'sales_invoice_item_id',
    ];

    public function SalesQuotationItems(){
        return  $this->belongsTo(SalesQuotationItem::class, 'sales_quotation_item_id', 'sales_quotation_item_id');
    }

    public function SalesDeliveryNoteItems(){
        return  $this->belongsTo(SalesDeliveryNoteItem::class, 'sales_delivery_note_item_id', 'sales_delivery_note_item_id');
    }

    public function SalesInvoice()
    {
        return $this->belongsTo(SalesInvoice::class, 'sales_invoice_id', 'sales_invoice_id');
    }

    public function itemType()
    {
        return $this->belongsTo(InvItemType::class, 'item_type_id', 'item_type_id');
    }

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array
     */
    protected $hidden = [
    ];

}
