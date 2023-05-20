<?php

namespace App\Admin\Controllers;

use App\VehicleCategory;
use App\Status;
use App\Country;
use App\Models\OutstationFareManagement;
use App\Models\TripSubType;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class OutstationFareManagementController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Outstation Fare Management';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new OutstationFareManagement());

        $grid->column('id', __('Id'));
        $grid->column('country_id', __('Country'))->display(function($countries){
            $country_name = Country::where('id',$countries)->value('country_name');
                return "$country_name";
        });
        $grid->column('vehicle_type', __('Vehicle type'))->display(function($vehicle_type){
            return VehicleCategory::where('id',$vehicle_type)->value('vehicle_type');
        });
        $grid->column('trip_sub_type_id', __('Trip Sub Type'))->display(function($trip_sub_type){
            return TripSubType::where('id',$trip_sub_type)->value('trip_sub_type');
        });
        $grid->column('base_fare', __('Base fare'));
        $grid->column('price_per_km', __('Price per km'));
        $grid->column('driver_allowance', __('Driver allowance'));
        $grid->column('status', __('Status'))->display(function($status){
            $status_name = Status::where('id',$status)->value('name');
            if ($status == 1) {
                return "<span class='label label-success'>$status_name</span>";
            } else {
                return "<span class='label label-danger'>$status_name</span>";
            }
        $grid->column('created_at', __('Created at'))->hide();
        $grid->column('updated_at', __('Updated at'))->hide();
        });
        $grid->disableActions();
        $grid->disableRowSelector();
        $grid->disableCreateButton();
        $grid->disableExport();
        //$grid->disableCreateButton();
        $grid->actions(function ($actions) {
            $actions->disableView();
            $actions->disableDelete();
        });
         $grid->filter(function ($filter) {
        
            $statuses = Status::where('type','general')->pluck('name','id');
            $vehiclecategories = VehicleCategory::pluck('vehicle_type', 'id');
            $countries = Country::pluck('country_name', 'id');
         
            
            $filter->equal('vehicle_type', 'Vehicle Type')->select($vehiclecategories);
            $filter->equal('country_id', 'Country')->select($countries);
            $filter->equal('status', 'Status')->select($statuses);
        
        });

        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(OutstationFareManagement::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('vehicle_type', __('Vehicle type'));
        $show->field('base_fare', __('Base fare'));
        $show->field('price_per_km', __('Price per km'));
        $show->field('driver_allowance', __('Driver allowance'));
        $show->field('status', __('Status'));
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new OutstationFareManagement());

        $statuses = Status::where('type','general')->pluck('name','id');
        $vehiclecategories = VehicleCategory::pluck('vehicle_type', 'id');
        $trip_sub_type = TripSubType::where('trip_type','3')->pluck('trip_sub_type', 'id');
        $countries = Country::pluck('country_name', 'id');

        $form->select('country_id', __('Country'))->load('vehicle_type', '/admin/get_vehicle_type', 'id', 'vehicle_type')->options($countries)->rules(function ($form) {
            return 'required';
            });
            $form->select('vehicle_type', 'Vehicle Type')->options(function ($id) {
                $vehicle_type = VehicleCategory::find($id);

                if ($vehicle_type) {
                    return [$vehicle_type->id => $vehicle_type->vehicle_type];
                }
            })->rules(function ($form) {
                return 'required';
            });
        $form->select('trip_sub_type_id', __('Trip Sub Type'))->options($trip_sub_type)->rules('required');
        $form->decimal('base_fare', __('Base fare'))->rules('required');
        $form->decimal('price_per_km', __('Price per km'))->rules('required');
        $form->decimal('driver_allowance', __('Driver allowance'))->rules('required');
        $form->select('status', __('Status'))->default(1)->options($statuses)->rules('required');
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
