<?php

namespace App\Admin\Controllers;

use App\CancellationReason;
use App\Status;
use App\UserType;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class CancellationReasonController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Cancellation Reasons';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new CancellationReason);

        $grid->column('id', __('Id'));
        $grid->column('reason', __('Reason'));
        $grid->column('type', __('Type'))->display(function($types){
            $types = UserType::where('id',$types)->value('type_name');
                return "$types";
        });
        $grid->disableActions();
        $grid->disableRowSelector();
        $grid->disableCreateButton();
        $grid->disableExport();
        $grid->actions(function ($actions) {
           $actions->disableView();
        });

        $grid->filter(function ($filter) { 

           $filter->disableIdFilter();
           $filter->like('reason', 'Reason');
           $filter->like('type', 'Type');        
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
        $show = new Show(CancellationReason::findOrFail($id));

        $show->field('id', __('Id'));
        $show->field('reason', __('Reason'));
        $show->field('type', __('Type'));
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
        $form = new Form(new CancellationReason);
        $types = UserType::pluck('type_name', 'id');
        
        $form->select('type', __('Type'))->options($types)->rules('required');
        $form->text('reason', __('Reason'))->rules('required|max:250');
        $form->text('reason_ar', __('Reason Arabic'));
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