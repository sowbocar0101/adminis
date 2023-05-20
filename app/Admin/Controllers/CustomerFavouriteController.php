<?php

namespace App\Admin\Controllers;

use App\Models\CustomerFavourite;
use App\Customer;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class CustomerFavouriteController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Customer Favourites';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new CustomerFavourite());

        $grid->column('id', __('Id'));
        $grid->column('customer_id', __('Customer'))->display(function($customer){
            $customer_name = Customer::where('id',$customer)->value('first_name');
            return $customer_name;
        });
        $grid->column('type', __('Type'))->display(function($type){
            if ($type == 1) {
                return "<span class='label label-warning'>Pickup Location</span>";
            }if ($type == 2) {
                return "<span class='label label-info'>Drop Location</span>";
            } 
        });
        $grid->column('address', __('Address'));
        $grid->column('lat', __('Lat'));
        $grid->column('lng', __('Lng'));
        //$grid->column('created_at', __('Created at'));
        //$grid->column('updated_at', __('Updated at'));
        $grid->disableActions();
        $grid->disableRowSelector();
        $grid->disableCreateButton(); 
        $grid->disableExport();
        $grid->disableCreateButton();
        $grid->actions(function ($actions) {
        $actions->disableView();
        //$actions->disableDelete();
        });
        
         $grid->filter(function ($filter) {
            $customer = Customer::pluck('first_name', 'id');
        
            $filter->equal('customer_id', 'Customer')->select($customer);
            $filter->equal('type', 'Type')->select([1 => 'Pickup Location', 2 => 'Drop Location']);
            
                 
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
        $show = new Show(CustomerFavourite::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('customer_id', __('Customer id'));
        $show->field('type', __('Type'));
        $show->field('address', __('Address'));
        $show->field('lat', __('Lat'));
        $show->field('lng', __('Lng'));
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
        $form = new Form(new CustomerFavourite());

        $form->number('customer_id', __('Customer id'));
        $form->number('type', __('Type'));
        $form->text('address', __('Address'));
        $form->text('lat', __('Lat'));
        $form->text('lng', __('Lng'));

        return $form;
    }
}
