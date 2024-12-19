<?php

namespace App\Models;

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

    public function SalesOrder(){   
        return  $this->belongsTo(SalesOrder::class, 'sales_order_id', 'sales_order_id');
    }

    public function Customer(){
        return $this->belongsTo(CoreCustomer::class, 'customer_id','customer_id');
    }
    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array
     */
    protected $hidden = [
    ];

}
