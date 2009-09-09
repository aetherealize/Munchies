class User < ActiveRecord::Base
  has_many :users_meal_plans, :dependent => :destroy
  has_many :meal_plans, :through => :users_meal_plans
end
