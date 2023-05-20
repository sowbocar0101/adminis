<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class CustomerFavourite extends Model
{
     protected $fillable = [
        'id','customer_id','type','address','lat','lng','created_at','updated_at'
    ];
}
