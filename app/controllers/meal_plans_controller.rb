class MealPlansController < ApplicationController
  def index
      @meal_plans = MealPlan.all
  end

  def show
    @meal_plan = MealPlan.find(params[:id])
  end

  def new
    @meal_plan = MealPlan.new
  end

  def edit
    @meal_plan = MealPlan.find(params[:id])
  end

  def create
    @meal_plan = MealPlan.new(params[:meal_plan])
    if @meal_plan.save
      flash[:notice] = 'Meal plan created successfully'
      redirect_to(@meal_plan)
    else
      render "new"
    end
  end

  def update
    @meal_plan = MealPlan.find(params[:id])

    if @meal_plan.update_attributes(params[:meal_plan])
        flash[:notice] = 'Meal plan was successfully updated.'
        redirect_to(@meal_plan)
    else
        render "edit"
    end
  end

  def destroy
    @meal_plan = MealPlan.find(params[:id])
    @meal_plan.destroy
    redirect_to(meal_plans_url)
  end

end
