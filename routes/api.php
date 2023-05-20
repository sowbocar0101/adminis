<?php

use Illuminate\Http\Request;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:api')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('promo', 'PromoCodeController@promo');
Route::get('test/{id}', 'App\Http\Controllers\BookingController@fare_calculation');
//Customer
Route::post('customer/check_phone', 'App\Http\Controllers\CustomerController@check_phone');
Route::post('customer/register', 'App\Http\Controllers\CustomerController@register');
Route::post('customer/login', 'App\Http\Controllers\CustomerController@login');
Route::post('customer/profile_image_upload', 'App\Http\Controllers\CustomerController@profile_image_upload');
Route::post('customer/check_email', 'App\Http\Controllers\CustomerController@check_email');
Route::post('customer/update_email', 'App\Http\Controllers\CustomerController@update_email');
Route::post('customer/profile_picture_update', 'App\Http\Controllers\CustomerController@profile_picture_update');
Route::post('customer/profile', 'App\Http\Controllers\CustomerController@profile');
Route::post('customer/profile_update', 'App\Http\Controllers\CustomerController@profile_update');
Route::post('customer/faq', 'App\Http\Controllers\FaqController@customer_faq');
Route::post('customer/policy', 'App\Http\Controllers\PrivacyPolicyController@customer_policy');
Route::get('app_setting', 'App\Http\Controllers\AppSettingController@index');
Route::post('customer/add_wallet', 'App\Http\Controllers\CustomerController@add_wallet');
Route::post('customer/get_wallet', 'App\Http\Controllers\CustomerController@get_wallet');
Route::post('customer/get_complaint_sub_category', 'App\Http\Controllers\ComplaintController@get_complaint_sub_categories');
Route::post('customer/get_complaint_category', 'App\Http\Controllers\ComplaintController@get_complaint_categories');
Route::post('customer/add_complaint', 'App\Http\Controllers\ComplaintController@add_complaint');
Route::post('customer/get_notification_messages', 'App\Http\Controllers\NotificationController@get_customer_notification_messages');
Route::post('customer/ride_list', 'App\Http\Controllers\RideDetailsController@ride_list');
Route::post('customer/ride_details', 'App\Http\Controllers\RideDetailsController@ride_details');
Route::post('customer/get_referral_message', 'App\Http\Controllers\ReferralController@get_referral_message');
Route::post('customer/get_about', 'App\Http\Controllers\AboutController@get_about');
Route::post('customer/get_cancellation_reasons', 'App\Http\Controllers\RideDetailsController@get_cancellation_reasons');
Route::post('customer/forgot', 'App\Http\Controllers\CustomerController@forgot');
Route::post('customer/reset_password', 'App\Http\Controllers\CustomerController@reset_password');
Route::post('customer/get_categories', 'App\Http\Controllers\CustomerController@get_vehicle_categories');
Route::post('customer/ride_confirm', 'App\Http\Controllers\BookingController@ride_confirm');
Route::post('customer/get_fare', 'App\Http\Controllers\BookingController@get_fare');
Route::post('customer/my_bookings', 'App\Http\Controllers\BookingController@customer_bookings');
Route::post('customer/payment_method', 'App\Http\Controllers\CustomerController@payment_method');
Route::post('customer/wallet_payment_methods', 'App\Http\Controllers\CustomerController@wallet_payment_methods');
Route::post('customer/trip_cancel', 'App\Http\Controllers\BookingController@trip_cancel_by_customer');
Route::post('driver/trip_cancel', 'App\Http\Controllers\BookingController@trip_cancel_by_driver');
Route::post('customer/add_favourite', 'App\Http\Controllers\CustomerController@add_favourite');
Route::post('customer/get_favourite', 'App\Http\Controllers\CustomerController@get_favourites');
Route::post('customer/delete_favourite', 'App\Http\Controllers\CustomerController@delete_favourite');
Route::post('customer/get_recent_places', 'App\Http\Controllers\BookingController@get_recent_places');
Route::post('customer/get_promo_codes', 'App\Http\Controllers\BookingController@get_promo_codes');
Route::post('customer/get_tips', 'App\Http\Controllers\BookingController@get_tips');
Route::post('customer/add_tip', 'App\Http\Controllers\BookingController@add_tip');
Route::post('get_subscription_list', 'App\Http\Controllers\CustomerController@get_subscription_list');
Route::post('add_subscription', 'App\Http\Controllers\CustomerController@add_subscription');
Route::post('customer/get_subscription_details', 'App\Http\Controllers\CustomerController@get_subscription_details');

//driver
Route::post('driver/check_phone', 'App\Http\Controllers\DriverController@check_phone');
Route::post('driver/login', 'App\Http\Controllers\DriverController@login');
Route::post('driver/get_zones', 'App\Http\Controllers\DriverController@get_zones');
Route::post('driver/get_vehicles', 'App\Http\Controllers\DriverController@get_vehicles');
Route::post('vehicle_type_list', 'App\Http\Controllers\DriverController@vehicle_type_list');
Route::post('vehicle_update', 'App\Http\Controllers\DriverController@vehicle_update');
Route::post('driver/register', 'App\Http\Controllers\DriverController@register');
Route::post('driver/get_documents', 'App\Http\Controllers\DriverController@get_documents');
Route::post('driver/update_document', 'App\Http\Controllers\DriverController@update_document');
Route::post('driver/profile_image_upload', 'App\Http\Controllers\DriverController@profile_image_upload');
Route::post('driver/profile_picture_update', 'App\Http\Controllers\DriverController@profile_picture_update');
Route::post('driver/profile', 'App\Http\Controllers\DriverController@profile');
Route::post('driver/profile_update', 'App\Http\Controllers\DriverController@profile_update');
Route::post('driver/faq', 'App\Http\Controllers\FaqController@driver_faq');
Route::get('driver/ride_list', 'App\Http\Controllers\RideDetailsController@driver_ride_list');
Route::get('driver/ride_details', 'App\Http\Controllers\RideDetailsController@driver_ride_details');
Route::post('driver/get_notification_messages', 'App\Http\Controllers\NotificationController@get_driver_notification_messages');
Route::post('driver/add_wallet', 'App\Http\Controllers\DriverController@add_wallet');
Route::post('driver/withdrawal_request', 'App\Http\Controllers\DriverController@driver_withdrawal_request');
Route::post('driver/withdrawal_history', 'App\Http\Controllers\DriverController@driver_withdrawal_history');
Route::post('driver/earning', 'App\Http\Controllers\DriverController@driver_earning');
Route::post('driver/wallet', 'App\Http\Controllers\DriverController@driver_wallet');
Route::post('driver/policy', 'App\Http\Controllers\PrivacyPolicyController@driver_policy');
Route::post('driver/get_kyc', 'App\Http\Controllers\DriverController@get_bank_kyc_details');
Route::post('driver/update_kyc', 'App\Http\Controllers\DriverController@bank_kyc_update');
Route::post('driver/change_online_status', 'App\Http\Controllers\DriverController@change_online_status');
Route::post('driver_tutorials', 'App\Http\Controllers\DriverController@get_tutorials');
Route::post('driver/forgot_password', 'App\Http\Controllers\DriverController@forgot_password');
Route::post('driver/reset_password', 'App\Http\Controllers\DriverController@reset_password');
Route::post('driver/my_bookings', 'App\Http\Controllers\BookingController@driver_bookings');
Route::post('driver/dashboard', 'App\Http\Controllers\DriverController@driver_dashboard');
Route::post('driver/rating_upload', 'App\Http\Controllers\DriverController@driver_ratings');
Route::post('driver/accept', 'App\Http\Controllers\BookingController@trip_accept');
Route::post('driver/reject', 'App\Http\Controllers\BookingController@trip_reject');
Route::post('driver/change_statuses', 'App\Http\Controllers\BookingController@change_statuses');
Route::get('calculate_earnings/{id}', 'App\Http\Controllers\BookingController@calculate_earnings');
Route::post('driver/customer_rating', 'App\Http\Controllers\DriverController@customer_ratings');
//Route::post('booking/send_mail', 'App\Http\Controllers\BookingController@ride_completeion_mail');
Route::post('stripe_payment', 'App\Http\Controllers\CustomerController@stripe_payment');
Route::post('customer_offers', 'App\Http\Controllers\CustomerController@customer_offers');
Route::post('update_view_status', 'App\Http\Controllers\CustomerController@update_view_status');
Route::post('direct_booking', 'App\Http\Controllers\BookingController@direct_booking');
Route::get('create_reward/{id}', 'App\Http\Controllers\BookingController@create_reward');
Route::post('spot_booking_otp', 'App\Http\Controllers\BookingController@spot_booking_otp');
Route::post('send_invoice', 'App\Http\Controllers\BookingController@send_invoice');
Route::post('driver/register', 'App\Http\Controllers\DriverController@register');
Route::post('driver/register_query', 'App\Http\Controllers\DriverController@register_query');
Route::post('add_sos_contact', 'App\Http\Controllers\CustomerController@add_sos_contact');
Route::post('delete_sos_contact', 'App\Http\Controllers\CustomerController@delete_sos_contact');
Route::post('sos_contact_list', 'App\Http\Controllers\CustomerController@sos_contact_list');
Route::post('sos_sms', 'App\Http\Controllers\CustomerController@sos_sms');
Route::post('get_gender', 'App\Http\Controllers\CustomerController@get_gender');
Route::post('get_trip_type', 'App\Http\Controllers\RideDetailsController@get_trip_type');
Route::post('get_package', 'App\Http\Controllers\CustomerController@get_package');
Route::get('ride_later','App\Http\Controllers\BookingController@ride_later');
Route::post('vehicle_details', 'App\Http\Controllers\DriverController@vehicle_details');
Route::get('driver_earnings/{id}', 'App\Http\Controllers\BookingController@get_today_driver_earnings');
Route::post('get_access_token', 'App\Http\Controllers\BookingController@get_access_token');
Route::get('make_call/{type}/{trip_id}', 'App\Http\Controllers\BookingController@make_call');
Route::get('verify_caller_id', 'App\Http\Controllers\BookingController@verify_caller_id');
Route::post('get_drop_addresses', 'App\Http\Controllers\BookingController@get_drop_addresses');
Route::post('get_stops', 'App\Http\Controllers\BookingController@get_stops');
Route::post('driver/get_referral_message', 'App\Http\Controllers\ReferralController@get_driver_referral_message');
Route::post('customer/alert_message', 'App\Http\Controllers\CustomerController@alert_message');
Route::post('trip_request_cancel', 'App\Http\Controllers\BookingController@trip_request_cancel_by_customer');
Route::post('cancellation_policy', 'App\Http\Controllers\BookingController@get_cancellation_policy');
Route::post('image_upload', 'App\Http\Controllers\CommonController@image_upload');
Route::post('get_zone', 'App\Http\Controllers\CommonController@get_zone');
Route::post('get_driver_settings', 'App\Http\Controllers\DriverController@get_driver_settings');
Route::post('change_driver_settings', 'App\Http\Controllers\DriverController@change_driver_settings');
Route::post('get_ongoing_trip_details', 'App\Http\Controllers\BookingController@get_ongoing_trip_details');
Route::post('get_ongoing_trip_details_shared', 'App\Http\Controllers\BookingController@get_ongoing_trip_details_shared');
Route::post('driver/get_heatmap_coordinates', 'App\Http\Controllers\BookingController@get_heatmap_coordinates');
Route::post('check_surge', 'App\Http\Controllers\BookingController@check_surge');
Route::post('hiring_booking_details', 'App\Http\Controllers\BookingController@hiring_booking_details');
Route::post('driver/hiring_status_change', 'App\Http\Controllers\BookingController@hiring_status_change');
Route::post('driver/hiring_accept_reject', 'App\Http\Controllers\BookingController@hiring_accept_reject');
Route::post('customer/get_hire_bookings', 'App\Http\Controllers\BookingController@get_customer_hire_bookings');
Route::post('driver/get_hire_bookings', 'App\Http\Controllers\BookingController@get_driver_hire_bookings');
Route::post('customer/get_hiring_drivers_list', 'App\Http\Controllers\BookingController@get_hiring_drivers_list');
Route::post('customer/driver_hiring_request', 'App\Http\Controllers\BookingController@driver_hiring_request');