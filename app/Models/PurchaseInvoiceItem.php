<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PurchaseInvoiceItem extends Model
{

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */

    protected $table        = 'purchase_invoice_item'; 
    protected $primaryKey   = 'purchase_invoice_item_id';
    
    protected $guarded = [
        'purchase_invoice_item_id',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array
     */
    protected $hidden = [
    ];

    public function purchaseInvoice()
    {
        return $this->belongsTo(PurchaseInvoice::class, 'purchase_invoice_id', 'purchase_invoice_id');
    }

    public function InvItemType()
    {
        return $this->belongsTo(InvItemType::class, 'item_type_id', 'item_type_id');
    }


    public function InvItemUnit()
    {
        return $this->belongsTo(InvItemUnit::class, 'item_unit_id', 'item_unit_id');
    }

}
