<?php

namespace App\Models;

use App\Models\CoreExpedition;
use App\Models\SalesQuotation;
use App\Models\SalesDeliveryNoteItem;
use Illuminate\Database\Eloquent\Model;

class SalesDeliveryNote extends Model
{

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */

    protected $table        = 'sales_delivery_note';
    protected $primaryKey   = 'sales_delivery_note_id';

    protected $guarded = [
        'sales_delivery_note_id',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array
     */
    protected $hidden = [
    ];


    public function salesQuotation()
    {
        return $this->belongsTo(SalesQuotation::class, 'sales_quotation_id', 'sales_quotation_id');
    }

    public function items()
    {
        return $this->hasMany(SalesDeliveryNoteItem::class, 'sales_delivery_note_id', 'sales_delivery_note_id');
    }

    public function expedition()
    {
        return $this->belongsTo(CoreExpedition::class, 'expedition_id', 'expedition_id');
    }
}
