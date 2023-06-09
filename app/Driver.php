<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Driver extends Model
{
    protected $fillable = [
        'id', 'first_name','last_name','phone_number','country_id','phone_with_code','email','gender','password','date_of_birth','licence_number','fcm_token','currency','overall_ratings', 'no_of_ratings','shared_ride_status','status','zone', 'id_proof_status','referral_code','refered_by','driver_hiring_status'
    ];
}
