<?php

namespace App\Models;

use App\Models\CoreCustomer;
use App\Models\CoreExpedition;
use App\Models\SalesQuotation;
use App\Models\SalesInvoiceItem;
use App\Models\SalesDeliveryNote;
use Illuminate\Database\Eloquent\Model;

class SalesInvoice extends Model
{

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */

    protected $table        = 'sales_invoice';
    protected $primaryKey   = 'sales_invoice_id';

    protected $guarded = [
        'sales_invoice_id',
    ];

    public function Items(){
        return $this->belongsTo(SalesInvoiceItem::class, 'sales_invoice_id','sales_invoice_id');
    }

    public function Customer(){
        return $this->belongsTo(CoreCustomer::class, 'customer_id','customer_id');
    }

    public function Expedition(){
        return $this->belongsTo(CoreExpedition::class, 'expedition_id','expedition_id');
    }

    public function SalesQuotation(){
        return  $this->belongsTo(SalesQuotation::class, 'sales_quotation_id', 'sales_quotation_id');
    }

    public function SalesDeliveryNote(){
        return  $this->belongsTo(SalesDeliveryNote::class, 'sales_delivery_note_id', 'sales_delivery_note_id');
    }
    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array
     */
    protected $hidden = [
    ];

}
