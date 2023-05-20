<?php

namespace App\Admin\Controllers;

use App\AppSetting;
use App\Country;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class AppSettingController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'App Settings';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new AppSetting);

        $grid->column('id', __('Id'));
        $grid->column('app_name', __('App name'));
        $grid->column('app_version', __('App version'));
        $grid->column('default_currency', __('Default currency'));
        $grid->column('default_currency_symbol', __('Default currency symbol'));
        $grid->column('subscription_status', __('Subscription Status'))->display(function($subscription_status){
            if($subscription_status == 1){
                return "Enable";
            }else{
                return "Disable";
            }
        });
        $grid->disableCreateButton();
        $grid->disableFilter();
        $grid->disableActions();
        $grid->disableRowSelector();
        $grid->disableCreateButton();
        $grid->disableExport();
        $grid->disableRowSelector();
        if(env('MODE') == 'DEMO'){
            $grid->disableActions();
        }else{
            $grid->actions(function ($actions) {
                $actions->disableDelete();
                $actions->disableView();
            });
        }
        
        return $grid;
    }
    
    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new AppSetting);
        $countries = Country::pluck('country_name', 'id');
        
        $form->text('app_name', __('App name'))->rules('required|max:250');
        $form->image('logo',__('App Logo'))->uniqueName()->rules('required');
        $form->text('app_version', __('App version'))->rules('required|max:10');
        $form->select('app_type', __('App Type'))->options([ "1" => "Single Type", "2" => "Multi Type"]);
        $form->text('default_currency', __('Default currency'))->rules('required|max:100');
        $form->text('default_currency_symbol', __('Default currency symbol'))->rules('required|max:10');
        $form->text('currency_short_code', __('Currency Short Code'))->rules('required|max:10');
        //$form->text('razorpay_key', __('Razorpay Key'))->rules('required');
        $form->select('subscription_status', __('Subscription Status'))->options([ 1 => "Enable", 0 => "Disable"])->rules('required');
        $form->image('login_image', __('Login image'))->uniqueName()->rules('required');
        $form->textarea('about_us', __('About Us'))->rules('required');
        $form->text('referral_amount', __('Referral Amount'))->rules('required');
        $form->select('default_country', __('Default Country'))->options($countries)->rules('required');
        $form->number('driver_trip_time', __('Driver Trip Request Time'))->rules('required');
        $form->text('driver_referral_amount', __('Driver Referral Amount'))->rules('required');


        $form->tools(function (Form\Tools $tools) {
            $tools->disableDelete(); 
            $tools->disableView();
        });
        $form->footer(function ($footer) {
            $footer->disableViewCheck();
            $footer->disableEditingCheck();
            $footer->disableCreatingCheck();
        });

        return $form;
    }
}
