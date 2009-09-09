class UsersMealPlansController < ApplicationController
  def index
    if (params[:user_id])
      @user = User.find(params[:user_id])
    elsif (params[:meal_plan_id])
      @meal_plan = MealPlan.find(params[:meal_plan_id])
    else
      redirect_to('http://www.google.com')
    end
  end
  
  def new
    if(params[:user_id])
      @user = User.find(params[:user_id])
    elsif(params[:meal_plan_id])
      @meal_plan = MealPlan.find(params[:meal_plan_id])
    elsif(params[:user_id] && params[:meal_plan_id])
      redirect_to(create_users_meal_plan_path)
    end
    @users_meal_plan = UsersMealPlan.new

  end
  
  def create
    @users_meal_plan = UsersMealPlan.new(params[:users_meal_plan])
    if @users_meal_plan.save
      flash[:notice] = 'Association created...'
      redirect_to(@users_meal_plan.user)
    else
      render "new"
    end
  end
  
end 
