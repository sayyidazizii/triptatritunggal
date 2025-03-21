<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class UserLocations extends Model
{

    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */

    protected $table        = 'user_locations'; 
    protected $primaryKey   = 'id';
    
    protected $fillable = [
        'latitude',
        'longitude',
        'created_at',
        'updated_at',
    ];

    protected $guarded = [
    ];

    /**
     * The attributes that should be hidden for serialization.
     *
     * @var array
     */
    protected $hidden = [
    ];

}
