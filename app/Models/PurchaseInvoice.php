<?php

namespace App\Models;

use Carbon\Carbon;
use App\Models\CoreSupplier;
use Illuminate\Database\Eloquent\Model;

class PurchaseInvoice extends Model
{

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */

    protected $table        = 'purchase_invoice'; 
    protected $primaryKey   = 'purchase_invoice_id';
    
    protected $guarded = [
        'purchase_invoice_id',
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array
     */
    protected $hidden = [
    ];

    /* Create Accessor purchase_invoice_date */  
    public function getFormattedDateAttribute()
    {
        return Carbon::parse($this->purchase_invoice_date)->format('d-m-Y');
    }

    /* Relationship */
    public function CoreSupplier()
    {
        return $this->belongsTo(CoreSupplier::class, 'supplier_id', 'supplier_id');
    }


}
