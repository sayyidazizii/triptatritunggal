<?php

namespace App\Helpers;

class PurchaseHelper
{
    public static function getPaymentMethodList()
    {
        return [
            1 => 'Cash',
            2 => 'Kredit',
        ];
    }
}
