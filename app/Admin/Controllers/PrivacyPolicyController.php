<?php

namespace App\Admin\Controllers;

use App\PrivacyPolicy;
use App\UserType;
use App\Status;
use App\Country;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class PrivacyPolicyController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Privacy Policies';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new PrivacyPolicy);

        $grid->column('id', __('Id'));
        $grid->column('country_id', __('Country'))->display(function($countries){
            $country_name = Country::where('id',$countries)->value('country_name');
                return "$country_name";
        });
        $grid->column('user_type_id', __('User Type'))->display(function($types){
            $types = UserType::where('id',$types)->value('type_name');
                return "$types";
        });
        $grid->column('title', __('Title'));
        $grid->column('status', __('Status'))->display(function($status){
            $status_name = Status::where('id',$status)->value('name');
            if ($status == 1) {
                return "<span class='label label-success'>$status_name</span>";
            } else {
                return "<span class='label label-danger'>$status_name</span>";
            }
        });
        //$grid->column('created_at', __('Created at'))->hide();
        //$grid->column('updated_at', __('Updated at'))->hide();
        $grid->disableActions();
        $grid->disableRowSelector();
        $grid->disableCreateButton();
        $grid->disableExport();
        $grid->actions(function ($actions) {
           $actions->disableView();
        });
        $grid->filter(function ($filter) {
            $statuses = Status::where('type','general')->pluck('name','id');
            $countries = Country::pluck('country_name', 'id');
            
            $filter->disableIdFilter();
            $filter->equal('country_id', 'Country')->select($countries);
            $filter->like('title', 'Title');
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
        $show = new Show(PrivacyPolicy::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('title', __('Title'));
        $show->field('description', __('Description'));
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
        $form = new Form(new PrivacyPolicy);
        $statuses = Status::where('type','general')->pluck('name','id');
        $countries = Country::pluck('country_name', 'id');
        $types = UserType::pluck('type_name', 'id');
        
        $form->select('country_id','Country')->options($countries)->rules('required');
        $form->select('user_type_id','User Type')->options($types)->rules('required');
        $form->text('slug', __('Slug'))->rules('required|max:100');
        $form->text('title', __('Title'))->rules('required|max:250');
        $form->textarea('description', __('Description'))->rules('required');
        $form->text('title_ar', __('Title Arabic'));
        $form->textarea('description_ar', __('Description Arabic'));
        $form->select('status', __('Status'))->options($statuses)->rules('required');
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
