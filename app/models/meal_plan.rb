class MealPlan < ActiveRecord::Base
  has_many :users_meal_plans
  has_many :users, :through => :users_meal_plans
end
