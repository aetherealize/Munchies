class ServingSizesController < ApplicationController
  def index
     @food = Food.find(params[:food_id])
     @serving_sizes = @food.serving_sizes 
  end

  def show
     @food = Food.find(params[:food_id])
     @serving_size = @food.serving_sizes.find(params[:id])
  end

  def new
     @food = Food.find(params[:food_id])
     @serving_size = @food.serving_sizes.build
  end

  def create 
     @food = Food.find(params[:food_id])
     @serving_size = @food.serving_sizes.build(params[:serving_size])
     if @serving_size.save 
        redirect_to food_serving_size_url(@food, @serving_size)
     else
        render :action => "new"
     end
  end  
  
  def edit 
     @food = Food.find(params[:food_id])
     @serving_size = @food.serving_sizes.find(params[:id])
  end

  def update
     @food = Food.find(params[:food_id])
     @serving_size = Serving_Size.find(params[:id])
     if @serving_size.update_attributes(params[:serving_size])
        redirect_to food_serving_size_url(@food, @serving_size)
     else
        render :action => "edit"
     end
  end
  
  def destroy
     @food = Food.find(params[:food_id])
     @serving_size = Serving_Size.find(params[:id])
     @serving_size.destroy
     redirect_to food_serving_sizes_path(@food)
  end 

end
