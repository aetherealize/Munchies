class MealPlan < ActiveRecord::Base
  has_many :users_meal_plans, :dependent => :destroy
  has_many :users, :through => :users_meal_plans
end
