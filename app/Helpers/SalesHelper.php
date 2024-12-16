<?php

namespace App\Helpers;

class SalesHelper
{
    public static function getSalesPaymentMethodList()
    {
        return [
            1 => 'Cash',
            2 => 'Kredit',
        ];
    }
}