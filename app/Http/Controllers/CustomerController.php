<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Validator;
use App\Customer;
use App\CustomerSosContact;
use App\Currency;
use App\Country;
use App\Models\Package;
use App\Models\Subscription;
use App\Models\CustomerSubscriptionHistory;
use App\PaymentMethod;
use App\VehicleCategory;
use App\Models\CustomerOffer;
use App\CustomerWalletHistory;
use App\InstantOffer;
use App\PromoCode;
use App\CustomerFavourite;
use App\AppSetting;
use App\Trip;
use Cartalyst\Stripe\Stripe;
use Illuminate\Support\Facades\DB;
use Kreait\Firebase;
use Kreait\Firebase\Factory;
use Kreait\Firebase\ServiceAccount;
use Kreait\Firebase\Database;
use Mail;
use DateTime;
class CustomerController extends Controller
{
    public function check_phone(Request $request){

        $input = $request->all();
        $validator = Validator::make($input, [
        	'phone_with_code' => 'required',
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        $data = array();
        $customer = Customer::where('phone_with_code',$input['phone_with_code'])->first();

        if(is_object($customer)){
            $data['is_available'] = 1;
            $data['otp'] = "";
            return response()->json([
                "result" => $data,
                "message" => 'Success',
                "status" => 1
            ]);
        }else{
            $data['is_available'] = 0;
            $data['otp'] = rand(1000,9999);
            if(env('MODE') != 'DEMO'){
                $message = $message = "Hi ".env('APP_NAME'). "  , Your OTP code is:".$data['otp'];
                $this->sendSms($input['phone_with_code'],$message);
            }
            return response()->json([
                "result" => $data,
                "message" => 'Success',
                "status" => 1
            ]);
        }

    }
    
    public function check_email(Request $request){
        $input = $request->all();
        $validator = Validator::make($input, [
        	'email' => 'required'
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        
        if(@$input['id']){
            
            $customer = Customer::where('id',$input['id'])->first();
            if($customer->email_verification_status == 0){
                $email = $customer->email;
                $token = md5($email.time());
                $mail_header = array("token" => $token);
                $this->send_verification_email($mail_header,'Verify your email',$email);
                Customer::where('id',$input['id'])->update([ 'email_verification_code' => $token] );
                return response()->json([
                    "message" => 'Success',
                    "status" => 1
                ]); 
            }else{
                return response()->json([
                    "message" => 'Your email account already verified',
                    "status" => 1
                ]);
            }
            
        }else{
            //Check mail
            $exist = Customer::where('email',$input['email'])->value('id');
            if(!$exist){
                return response()->json([
                    "message" => 'Success',
                    "status" => 1
                ]);
            }else{
                return response()->json([
                    "message" => 'Sorry already exist',
                    "status" => 0
                ]);
            }   
        }
    }
    
    public function update_email(Request $request){
        
        $input = $request->all();
        $validator = Validator::make($input, [
        	'email' => 'required',
        	'id' => 'required'
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        
        $exist = Customer::where('email',$input['email'])->where('id','!=',$input['id'])->value('id');
        if(!$exist){
            $token = md5($input['email'].time());
            $check_verified = Customer::where('email',$input['email'])->where('id',$input['id'])->where('email_verification_status',1)->value('id');
            if(!$check_verified){
               $mail_header = array("token" => $token);
                $this->send_verification_email($mail_header,'Verify your email',$input['email']);
                Customer::where('id',$input['id'])->update(['email_verification_status' => 0, 'email_verification_code' => $token, 'email' => $input['email']]);
                return response()->json([
                    "message" => 'Success',
                    "status" => 1
                ]); 
            }else{
                return response()->json([
                    "message" => 'Success',
                    "status" => 1
                ]);
            }
        }else{
            return response()->json([
                "message" => 'Sorry already exist',
                "status" => 0
            ]);
        }
    }
    
    public function update_phone_number(Request $request){
        
        $input = $request->all();
        $validator = Validator::make($input, [
        	'phone_number' => 'required',
        	'id' => 'required'
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        
        $exist = Customer::where('email',$input['email'])->where('id','!=',$input['id'])->value('id');
        if(!$exist){
            $token = md5($input['email'].time());
            $check_verified = Customer::where('email',$input['email'])->where('id',$input['id'])->where('email_verification_status',1)->value('id');
            if(!$check_verified){
               $mail_header = array("token" => $token);
                $this->send_verification_email($mail_header,'Verify your email',$input['email']);
                Customer::where('id',$input['id'])->update(['email_verification_status' => 0, 'email_verification_code' => $token, 'email' => $input['email']]);
                return response()->json([
                    "message" => 'Success',
                    "status" => 1
                ]); 
            }else{
                return response()->json([
                    "message" => 'Success',
                    "status" => 1
                ]);
            }
        }else{
            return response()->json([
                "message" => 'Sorry already exist',
                "status" => 0
            ]);
        }
    }
    
    public function verify_email($token){
        $customer = Customer::where('email_verification_code',$token)->first();   
        if(is_object($customer)){
            if($customer->email_verification_status == 0){
                Customer::where('id',$customer->id)->update([ 'email_verification_status' => 1 ]);
                echo "Successfully verified";
            }else{
                echo "This email already verified";
            }    
        }else{
            echo "Sorry invalid link";
        }
        
    }
    
    public function forgot(Request $request){

        $input = $request->all();
        $validator = Validator::make($input, [
        	'phone_with_code' => 'required',
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        $customer = Customer::where('phone_with_code',$input['phone_with_code'])->first();
        $data['id'] = $customer->id;

        if(is_object($customer)){
            $otp = rand(1000,9999);
            $data['otp'] = $otp;
            $message = "Hi".env('APP_NAME')." , Your OTP code is:".$otp;
            $this->sendSms($input['phone_with_code'],$message);
            return response()->json([
                "result" => $data,
                "message" => 'Success',
                "status" => 1
            ]);
        }else{
            return response()->json([
                "message" => 'Please enter valid phone number',
                "status" => 0
            ]);
        }

    }
    
    public function reset_password(Request $request){

        $input = $request->all();
        $validator = Validator::make($input, [
            'id' => 'required',
            'password' => 'required'
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }

        $options = [
            'cost' => 12,
        ];
        $input['password'] = password_hash($input["password"], PASSWORD_DEFAULT, $options);

        if(Customer::where('id',$input['id'])->update($input)){
            return response()->json([
                "message" => 'Success',
                "status" => 1
            ]);
        }else{
            return response()->json([
                "message" => 'Sorry something went wrong',
                "status" => 0
            ]);
        }
    }
    
   public function register(Request $request)
    {
        $input = $request->all();
        $refered_by = $input['referral_code'];
        
        $validator = Validator::make($input, [
            'first_name' => 'required',
            'last_name' => 'required',
            'country_code' => 'required',
            'phone_with_code' => 'required',
            'phone_number' => 'required|numeric|digits_between:6,20|unique:customers,phone_number',
            'email' => 'required|email|regex:/^[a-zA-Z]{1}/|unique:customers,email',
            'password' => 'required',
            'fcm_token' => 'required'
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }

        $options = [
            'cost' => 12,
        ];
        $input['password'] = password_hash($input["password"], PASSWORD_DEFAULT, $options);
        $input['status'] = 1;
        $input['referral_code'] = '';
        $referrel_id = Customer::where('referral_code',$refered_by)->value('id');
        if($referrel_id){
            $input['refered_by'] = $refered_by;
        }else{
            $input['refered_by'] = '';
        }
        $data = Country::where('phone_code',$input['country_code'])->value('id');
        $input['country_id'] = $data;
        $input['currency'] = Currency::where('country_id',$input['country_id'])->value('currency');
        $input['currency_short_code'] = Currency::where('country_id',$input['country_id'])->value('currency_short_code');
        $input['profile_picture'] = "customers/avatar.jpg";
        $customer = Customer::create($input);
        
        //$factory = (new Factory)->withServiceAccount(config_path().'/'.env('FIREBASE_FILE'));
        $factory = (new Factory())->withDatabaseUri(env('FIREBASE_DB'));
        $database = $factory->createDatabase();
        //$database = $firebase->getDatabase();
        

        if (is_object($customer)) {
            
            if($refered_by != '' && $referrel_id){

                $referral_amount = AppSetting::where('id',1)->value('referral_amount');
                //print_r($referral_amount);exit;
                $existing_wallet_amount = Customer::where('referral_code',$refered_by)->value('wallet');
                $wallet = $existing_wallet_amount + $referral_amount;
                Customer::where('referral_code',$refered_by)->update(['wallet' => $wallet]);
                Customer::where('id',$customer->id)->update(['refered_by' => $referrel_id]);
                $content = "Referral Bonus";
                $refered_country_id = Customer::where('id',$referrel_id)->value('country_id');
                CustomerWalletHistory::create([ 'country_id' => $refered_country_id, 'customer_id' => $referrel_id, 'type' => 3, 'message' => $content, 'amount' => $referral_amount, 'transaction_type' => 1  ]);
            }

            $customer->referral_code = 'CAB'.str_pad($customer->id,5,"0",STR_PAD_LEFT);
            Customer::where('id',$customer->id)->update(['referral_code' => $customer->referral_code]);
            
            $token = md5($input['email'].time());
            $mail_header = array("token" => $token);
            $this->send_verification_email($mail_header,'Verify your email',$input['email']);
            
            $newPost = $database
            ->getReference('customers/'.$customer->id)
            ->update([
                'booking_id' => 0,
                'booking_status' => 0,
                 'customer_name' => $customer->first_name
            ]);
        
            return response()->json([
                "result" => $customer,
                "message" => 'Registered Successfully',
                "status" => 1
            ]);
        } else {
            return response()->json([
                "message" => 'Sorry, something went wrong !',
                "status" => 0
            ]);
        }

    }
    /*public function register(Request $request)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'first_name' => 'required',
            'last_name' => 'required',
            'country_code' => 'required',
            'phone_with_code' => 'required',
            'phone_number' => 'required|numeric|digits_between:9,20|unique:customers,phone_number',
            'email' => 'required|email|regex:/^[a-zA-Z]{1}/|unique:customers,email',
            'password' => 'required',
            'fcm_token' => 'required'
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }

        $options = [
            'cost' => 12,
        ];
        $input['password'] = password_hash($input["password"], PASSWORD_DEFAULT, $options);
        $input['status'] = 1;
        $data = Country::where('phone_code',$input['country_code'])->value('id');
        $input['country_id'] = $data;
        $input['currency'] = Currency::where('country_id',$input['country_id'])->value('currency');
        $input['currency_short_code'] = Currency::where('country_id',$input['country_id'])->value('currency_short_code');
        $customer = Customer::create($input);
        
        //$factory = (new Factory)->withServiceAccount(config_path().'/'.env('FIREBASE_FILE'));
        $factory = (new Factory())->withDatabaseUri(env('FIREBASE_DB'));
        $database = $factory->createDatabase();
        //$database = $firebase->getDatabase();
        

        if (is_object($customer)) {
            
            $newPost = $database
            ->getReference('customers/'.$customer->id)
            ->update([
                'booking_id' => 0,
                'booking_status' => 0,
                 'customer_name' => $customer->first_name
            ]);
        
            return response()->json([
                "result" => $customer,
                "message" => 'Registered Successfully',
                "status" => 1
            ]);
        } else {
            return response()->json([
                "message" => 'Sorry, something went wrong !',
                "status" => 0
            ]);
        }

    }*/
    
    public function login(Request $request){

        $input = $request->all();
        $validator = Validator::make($input, [
            'phone_with_code' => 'required',
            'password' => 'required',
            'fcm_token' => 'required'
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }

        $credentials = request(['phone_with_code', 'password']);
        $customer = Customer::where('phone_with_code',$credentials['phone_with_code'])->first();

        if(!($customer)){
            return response()->json([
                "message" => 'Invalid phone number or password',
                "status" => 0
            ]);
        }
        
        if(Hash::check($credentials['password'], $customer->password)) {
            if($customer->status == 1){
                
                Customer::where('id',$customer->id)->update([ 'fcm_token' => $input['fcm_token']]);
                
                return response()->json([
                    "result" => $customer,
                    "message" => 'Success',
                    "status" => 1
                ]);   
            }else{
                return response()->json([
                    "message" => 'Your account has been blocked',
                    "status" => 0
                ]);
            }
        }else{
            return response()->json([
                "message" => 'Invalid phone number or password',
                "status" => 0
            ]);
        }

    }
    public function profile_image_upload(Request $request){

        $input = $request->all();
        $validator = Validator::make($input, [
            'image' => 'required'
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }

        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $name = time().'.'.$image->getClientOriginalExtension();
            $destinationPath = public_path('/uploads/customers');
            $image->move($destinationPath, $name);
            return response()->json([
                "result" => 'customers/'.$name,
                "message" => 'Success',
                "status" => 1
            ]);
            
        }
    }
    public function profile_picture_update(Request $request)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'id' => 'required',
            'profile_picture' => 'required'
            
        ]);

        if ($validator->fails()) {
          return $this->sendError($validator->errors());
        }
        
        if (Customer::where('id',$input['id'])->update($input)) {
            return response()->json([
                "message" => 'Success',
                "status" => 1
            ]);
        } else {
            return response()->json([
                "message" => 'Sorry, something went wrong...',
                "status" => 0
            ]);
        }

    }
    
    public function profile(Request $request)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'customer_id' => 'required',
            'lang' => 'required'
            
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        
        $result = Customer::select('id','current_sub_id', 'first_name', 'last_name','phone_number', 'phone_with_code','gender','email','profile_picture','password','status','email_verification_status')->where('id',$input['customer_id'])->first();
        if($result->current_sub_id){
            $result->current_sub = Subscription::where('id',$result->current_sub_id)->value('sub_name');
        }else{
            $result->current_sub = "";
        }
        if (is_object($result)) {
            if($input['lang'] == 'ar'){
                if($result->gender == 0){
                    $result->gender_name = "قم بتحدي جنس";
                }else if($result->gender == 1){
                    $result->gender_name = "ذر";
                }else if($result->gender == 2){
                    $result->gender_name = "أنثى";
                }
            }else{
                if($result->gender == 0){
                    $result->gender_name = "Update your gender";
                }else if($result->gender == 1){
                    $result->gender_name = "Male";
                }else if($result->gender == 2){
                    $result->gender_name = "Female";
                }
            }
            return response()->json([
                "result" => $result,
                "message" => 'Success',
                "status" => 1
            ]);
        } else {
            return response()->json([
                "message" => 'Sorry, something went wrong...',
                "status" => 0
            ]);
        }
    }
    
    public function profile_update(Request $request)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'id' => 'required'
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        if($request->password){
            $options = [
                'cost' => 12,
            ];
            $input['password'] = password_hash($input["password"], PASSWORD_DEFAULT, $options);
            $input['status'] = 1;
        }else{
            unset($input['password']);
        }
        
        if(@$input['email']){
            
        }
        
        if (Customer::where('id',$input['id'])->update($input)) {
            return response()->json([
                "result" => Customer::select('id', 'first_name','last_name','email','gender','phone_with_code')->where('id',$input['id'])->first(),
                "message" => 'Success',
                "status" => 1
            ]);
        } else {
            return response()->json([
                "message" => 'Sorry, something went wrong...',
                "status" => 0
            ]);
        }

    }
    
    public function get_wallet(Request $request){
        
        $input = $request->all();
        $validator = Validator::make($input, [
            'id' => 'required',
            'lang' => 'required'
        ]);
        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        if($input['lang'] == 'en'){
            $data['wallet'] = Customer::where('id',$input['id'])->value('wallet');
            
            $data['wallet_histories'] = CustomerWalletHistory::select('id','type','message','amount')->where('customer_id',$input['id'])->orderBy('id', 'desc')->get();
        }else{
            $data['wallet'] = Customer::where('id',$input['id'])->value('wallet');
            
            $data['wallet_histories'] = CustomerWalletHistory::select('id','type','message_ar as message','amount')->where('customer_id',$input['id'])->orderBy('id', 'desc')->get();
        }
        
        if($data){
            return response()->json([
                "result" => $data,
                "count" => count($data['wallet_histories']),
                "message" => 'Success',
                "status" => 1
            ]);
        }else{
            return response()->json([
                "message" => 'Something went wrong',
                "status" => 0
            ]);
        }
    }
    
    public function add_wallet(Request $request){
        
        $input = $request->all();
        $validator = Validator::make($input, [
            'id' => 'required',
            'country_id' => 'required',
            'amount' => 'required'
        ]);
        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        
        $data['customer_id'] = $input['id'];
        $data['country_id'] = $input['country_id'];
        $data['type'] = 1;
        $data['message'] ="Added to wallet";
        $data['message_ar'] ="يا إى المحفظة";
        $data['amount'] = $input['amount'];
        $data['transaction_type'] = 1;
        CustomerWalletHistory::create($data);
        
        $old_wallet = Customer::where('id',$input['id'])->value('wallet');
        $new_wallet = $old_wallet + $input['amount'];
        Customer::where('id',$input['id'])->update([ 'wallet' => $new_wallet ]);
        return response()->json([
            "message" => 'Success',
            "status" => 1
        ]);
    }
    
     public function get_vehicle_categories(Request $request)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'country_id' => 'required',
            'lang' => 'required',
            'vehicle_mode' => 'required'
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        if($input['lang'] == 'en'){
            $data = VehicleCategory::select('id','vehicle_type','base_fare','price_per_km','active_icon','inactive_icon','description','status')->where('country_id',$input['country_id'])->where('vehicle_mode',$input['vehicle_mode'])->get();
        }else{
            $data = VehicleCategory::select('id','vehicle_type_ar as vehicle_type','base_fare','price_per_km','active_icon','inactive_icon','description_ar as description','status')->where('country_id',$input['country_id'])->where('vehicle_mode',$input['vehicle_mode'])->get();
        }


            return response()->json([
                "result" => $data,
                "count" => count($data),
                "message" => 'Success',
                "status" => 1
            ]);
        
    }
    
    public function payment_method(Request $request)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'country_id' => 'required',
            'lang' => 'required'
        ]);
        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        if($input['lang'] == 'en'){
            $data = PaymentMethod::select('id','payment','payment_type','icon','status')->where('status',1)->where('payment_type',1)->where('country_id',$input['country_id'])->get();
        }else{
            $data = PaymentMethod::select('id','payment_ar as payment','payment_type','icon','status')->where('status',1)->where('payment_type',1)->where('country_id',$input['country_id'])->get();
        }
        
        return response()->json([
            "result" => $data,
            "count" => count($data),
            "message" => 'Success',
            "status" => 1
        ]);
    }
    
    public function wallet_payment_methods(Request $request)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'country_id' => 'required',
            'lang' => 'required'
        ]);
        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        if($input['lang'] == 'en'){
            $data = PaymentMethod::select('id','payment','payment_type','icon','status')->where('status',1)->whereNotIn('payment_type', [1,2,3,4])->where('country_id',$input['country_id'])->get();
        }else{
            $data = PaymentMethod::select('id','payment_ar as payment','payment_type','icon','status')->where('status',1)->whereNotIn('payment_type', [1,2,3,4])->where('country_id',$input['country_id'])->get();
        }
        
        return response()->json([
            "result" => $data,
            "count" => count($data),
            "message" => 'Success',
            "status" => 1
        ]);
    }
    
    public function customer_offers(Request $request)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'customer_id' => 'required',
            'lang' => 'required'
        ]);
        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        if($input['lang'] == 'en'){
            $data = CustomerOffer::select('id','title','description','image','view_status','type','ref_id','status')->where('customer_id',$input['customer_id'])->where('status',1)->orderBy('view_status', 'DESC')->get();
        }else{
            $data = CustomerOffer::select('id','title_ar as title','description_ar as description','image','view_status','type','ref_id','status')->where('customer_id',$input['customer_id'])->where('status',1)->orderBy('view_status', 'DESC')->get();
        }
        
        return response()->json([
            "result" => $data,
            "count" => count($data),
            "message" => 'Success',
            "status" => 1
        ]);
    }
    
    public function update_view_status(Request $request)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'customer_id' => 'required',
            'offer_id' => 'required',
            'status' => 'required'
        ]);
        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        CustomerOffer::where('customer_id',$input['customer_id'])->where('id',$input['offer_id'])->update([ 'view_status' => $input['status']]);
        $offer = CustomerOffer::where('id',$input['offer_id'])->first();
        if(is_object($offer) && $offer->type == 1){
            $instant = InstantOffer::where('id',$offer->ref_id)->first();
            $data['country_id'] = Customer::where('id',$input['customer_id'])->value('country_id');
            $data['customer_id'] = $input['customer_id'];
            $data['promo_name'] = $instant->offer_name;
            $data['promo_code'] = $this->getToken(8);
            $data['description'] = $instant->offer_description;
            $data['promo_type'] = $instant->discount_type;
            $data['discount'] = $instant->discount;
            $data['redemptions'] = 1;
            $data['status'] = 1;
            PromoCode::create($data);
        }
        return response()->json([
            "message" => 'Success',
            "status" => 1
        ]);
    }
    
    public function crypto_rand_secure($min, $max)
    {
        $range = $max - $min;
        if ($range < 1) return $min; // not so random...
        $log = ceil(log($range, 2));
        $bytes = (int) ($log / 8) + 1; // length in bytes
        $bits = (int) $log + 1; // length in bits
        $filter = (int) (1 << $bits) - 1; // set all lower bits to 1
        do {
            $rnd = hexdec(bin2hex(openssl_random_pseudo_bytes($bytes)));
            $rnd = $rnd & $filter; // discard irrelevant bits
        } while ($rnd > $range);
        return $min + $rnd;
    }

    public function getToken($length)
    {
        $token = "";
        $codeAlphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        $codeAlphabet.= "0123456789";
        $max = strlen($codeAlphabet); // edited
    
        for ($i=0; $i < $length; $i++) {
            $token .= $codeAlphabet[$this->crypto_rand_secure(0, $max-1)];
        }
    
        return $token;
    }

     public function stripe_payment(Request $request){
        $input = $request->all();
        $stripe = new Stripe();
        $currency_code = AppSetting::value('currency_short_code');
        
        try {
            $charge = $stripe->charges()->create([
                'source' => $input['token'],
                'currency' => $currency_code,
                'amount'   => $input['amount'],
                'description' => 'For booking'
            ]);
            
            $data['order_id'] = 0;
            $data['customer_id'] = $input['customer_id'];
            $data['payment_mode'] = 2;
            $data['payment_response'] = $charge['id'];
            
                return response()->json([
                    "result" => $charge['id'],
                    "message" => 'Success',
                    "status" => 1
                ]);
            
        }
        catch (customException $e) {
            return response()->json([
                "message" => 'Sorry something went wrong',
                "status" => 0
            ]);
        }
    }
    
     public function add_sos_contact(Request $request)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'customer_id' =>'required',
            'name' => 'required',
            'phone_number' => 'required|numeric|digits_between:6,20'
            
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }

        $input['status'] = 1;
        $contact = CustomerSosContact::create($input);
        
        if($contact){
            return response()->json([
                "result" => $contact,
                "message" => 'Registered Successfully',
                "status" => 1
            ]);
        } else {
            return response()->json([
                "message" => 'Sorry, something went wrong !',
                "status" => 0
            ]);
        }

    }
     public function delete_sos_contact(Request $request)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'customer_id' =>'required',
            'contact_id' => 'required'
            
            
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }

        CustomerSosContact::where('customer_id',$input['customer_id'])->where('id',$input['contact_id'])->delete();
            return response()->json([
                "message" => 'Registered Successfully',
                "status" => 1
            ]);

    }
     public function sos_contact_list(Request $request)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'customer_id' =>'required'
            
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }

        $contact = CustomerSosContact::where('customer_id',$input['customer_id'])->get();
        
        if($contact){
            return response()->json([
                "result" => $contact,
                "message" => 'success',
                "status" => 1
            ]);
        } else {
            return response()->json([
                "message" => 'Sorry, something went wrong !',
                "status" => 0
            ]);
        }

    }
    
    public function sos_sms(Request $request)
    {
        $input = $request->all();
        $validator = Validator::make($input, [
            'customer_id' =>'required',
            'booking_id' => 'required',
            'latitude' => 'required',
            'longitude' => 'required',
            'lang' => 'required'
            
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        
        if(env('MODE') == 'DEMO'){
            return response()->json([
                "message" => 'Now your project in demo mode, please swith to thre production or contact admin',
                "status" => 2
            ]);
        }
        
        if($input['lang'] == 'en'){
        $customer = Customer::where('id',$input['customer_id'])->first();
        $contacts = CustomerSosContact::where('customer_id',$input['customer_id'])->get();
        $trip = Trip::where('id',$input['booking_id'])->first();
        $location = "https://maps.google.com/?ll=".$input['latitude'].",".$input['longitude'];
        $message = "Hi, this is  ".$customer->first_name."  i believe i am in danger near ".$location." . Please help me by contacting the authorities.";
        
        $country_code = $customer->country_code;
        if(count($contacts) > 0){
            foreach($contacts as $key => $value){
                $this->sendSms($country_code.$value->phone_number,$message);
            }
            return response()->json([
                "message" => 'SOS activated',
                "status" => 1
            ]);
        }else{
            return response()->json([
                "message" => 'Please add emergency numbers in sos settings page',
                "status" => 0
            ]);
        }
        }else{
        $customer = Customer::where('id',$input['customer_id'])->first();
        $contacts = CustomerSosContact::where('customer_id',$input['customer_id'])->get();
        $trip = Trip::where('id',$input['booking_id'])->first();
        $location = "https://maps.google.com/?ll=".$input['latitude'].",".$input['longitude'];
        $message = "محبا .. ه ".$customer->first_name."  عد أنني في طر قر ".$location." . لرجاء معدت ن طري الاتصال باسلطا.";
        
        $country_code = $customer->country_code;
        if(count($contacts) > 0){
            foreach($contacts as $key => $value){
                $this->sendSms($country_code.$value->phone_number,$message);
            }
            return response()->json([
                "message" => 'ت تعيل SOS',
                "status" => 1
            ]);
        }else{
            return response()->json([
                "message" => 'الرا إضاة أقام الطورئ في صفح إعدادات sos',
                "status" => 0
            ]);
        }
        }
    }
    
    public function get_gender(Request $request){
        $input = $request->all();
        $validator = Validator::make($input, [
            'customer_id' =>'required',
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        
        $gender = Customer::where('id',$input['customer_id'])->value('gender');
        
        return response()->json([
            "result" => $gender,
            "message" => 'Success',
            "status" => 1
        ]);
        
    }
    
    public function add_favourite(Request $request){
        $input = $request->all();
        $validator = Validator::make($input, [
            'customer_id' =>'required',
            'address' => 'required',
            'type' => 'required',
            'lat' => 'required',
            'lng' => 'required',
        ]); 
        
        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        
        $data = CustomerFavourite::create($input);
        
        return response()->json([
            "result" => $data,
            "message" => 'Success',
            "status" => 1
        ]);
        
    }
    
    public function get_subscription_list(Request $request){
        $input = $request->all();
        $validator = Validator::make($input, [
            'customer_id' =>'required',
        ]); 
        if($validator->fails()){
            return $this->sendError($validator->errors());
        }
        $data = Subscription::get();
        $sub_id = Customer::where('id',$input['customer_id'])->value('current_sub_id');
        $subscription = "";
        if($sub_id){
            $subscription = Subscription::where('id',$sub_id)->first();
        }
        return response()->json([
            "result" => $data,
            "current_subscription" => $subscription,
            "message" => 'Success',
            "status" => 1
        ]);
    }
    
    public function add_subscription(Request $request){
        $input = $request->all();
        $validator = Validator::make($input, [
            'customer_id' =>'required',
            'sub_id' =>'required',
        ]); 
        if($validator->fails()){
            return $this->sendError($validator->errors());
        }
        
        $data['customer_id'] = $input['customer_id'];
        $data['sub_id'] = $input['sub_id'];
        $sub = DB::table('subscriptions')->where('id',$input['sub_id'])->first();
        $data['purchased_at'] = date("Y/m/d");
        $data['expiry_at'] = date('Y-m-d', strtotime($data['purchased_at']. ' + '.$sub->validity.' days'));
        CustomerSubscriptionHistory::create($data);
        
        Customer::where('id',$input['customer_id'])->update([ 'current_sub_id' => $input['sub_id'], 'subscription_trips' => $sub->free_bookings, 'sub_purchased_at' => date("Y-m-d"), 'sub_expired_at' => date('Y/m/d', strtotime("+".$sub->validity." days"))]);
        
        return response()->json([
            "result" => Customer::where('id',$input['customer_id'])->select('current_sub_id','subscription_trips','sub_purchased_at','sub_expired_at')->first(),
            "message" => 'Success',
            "status" => 1
        ]);
    }
    
    public function get_subscription_details(Request $request){
        $input = $request->all();
        $validator = Validator::make($input, [
            'customer_id' =>'required',
        ]); 
        if($validator->fails()){
            return $this->sendError($validator->errors());
        }
        $customer = Customer::where('id',$input['customer_id'])->select('current_sub_id','subscription_trips','sub_purchased_at','sub_expired_at')->first();

        if($customer->current_sub_id != 0){
            //Expiry check
            $today = (new DateTime())->format('Y-m-d'); 
            $expiry = (new DateTime($customer->sub_expired_at))->format('Y-m-d');
            if(strtotime($today) > strtotime($expiry)){
                $customer = Customer::where('id',$input['customer_id'])->update([ 'current_sub_id' => 0, 'subscription_trips' => 0, 'sub_purchased_at' => '', 'sub_expired_at' => ''])->first();
            }else if($customer->subscription_trips == 0){
                $customer = Customer::where('id',$input['customer_id'])->update([ 'current_sub_id' => 0, 'subscription_trips' => 0, 'sub_purchased_at' => '', 'sub_expired_at' => ''])->first();
            }
        }
        
        return response()->json([
            "result" => $customer,
            "message" => 'Success',
            "status" => 1
        ]);
    }
    
    public function delete_favourite(Request $request){
        $input = $request->all();
        $validator = Validator::make($input, [
            'id' => 'required'
        ]); 
        
        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        
        CustomerFavourite::where('id',$input['id'])->delete();
        
        return response()->json([
            "message" => 'Success',
            "status" => 1
        ]);
        
    }
    
    public function get_favourites(Request $request){
        $input = $request->all();
        $validator = Validator::make($input, [
            'customer_id' =>'required',
            'type' => 'required'
        ]); 
        
        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        
        $data = CustomerFavourite::where('customer_id',$input['customer_id'])->where('type',$input['type'])->get();
        
        return response()->json([
            "result" => $data,
            "message" => 'Success',
            "status" => 1
        ]);
        
    }
    
    public function get_package(Request $request)
    {
        $input = $request->all();
        if($input['lang'] == 'en'){
            $data = Package::select('id','package_name','hours','kilometers')->get();
        }else{
            $data = Package::select('id','package_name_ar as package_name','hours','kilometers')->get();
        }
        return response()->json([
            "result" => $data,
            "message" => 'Success',
            "status" => 1
        ]);
    }
    
    public function alert_message(Request $request){

        $input = $request->all();
        $validator = Validator::make($input, [
        	'trip_id' => 'required',
        ]);

        if ($validator->fails()) {
            return $this->sendError($validator->errors());
        }
        $customer_id = Trip::where('id',$input['trip_id'])->value('customer_id');
        $customer = Customer::where('id',$customer_id)->value('phone_with_code');
        //print_r($customer);exit;

        if($customer){
            $message = "Hi, from".env('APP_NAME'). "  , Your driver will reach within 2mins, Hurry up!";
            $this->sendSms($customer,$message);
            return response()->json([
                "message" => 'Success',
                "status" => 1
            ]);
        }

    }
    
    public function customer_chat($id)
    {
       return view('customer_chat');
    }
    
    public function sendError($message) {
        $message = $message->all();
        $response['error'] = "validation_error";
        $response['message'] = implode('',$message);
        $response['status'] = "0";
        return response()->json($response, 200);
    } 

}
