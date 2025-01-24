<?php

namespace App\Models;

use App\Models\CoreCustomer;
use App\Models\SalesDeliveryNote;
use Illuminate\Database\Eloquent\Model;
use App\Models\BuyersAcknowledgmentItem;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class BuyersAcknowledgment extends Model
{
    protected $table        = 'buyers_acknowledgment';
    protected $primaryKey   = 'buyers_acknowledgment_id';

    protected $guarded = [
        'buyers_acknowledgment_id',
    ];

    protected $hidden = [
    ];

    public function salesDelivery()
    {
        return $this->belongsTo(SalesDeliveryNote::class, 'sales_delivery_note_id', 'sales_delivery_note_id');
    }

    public function items()
    {
        return $this->hasMany(BuyersAcknowledgmentItem::class, 'buyers_acknowledgment_id', 'buyers_acknowledgment_id');
    }

    public function customer()
    {
        return $this->belongsTo(CoreCustomer::class, 'customer_id', 'customer_id');
    }
}
