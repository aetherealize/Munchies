class AddNameToMealPlans < ActiveRecord::Migration
 def self.up 
   add_column :meal_plans, :name, :string
 end
 
 def self.down
   remove_column :meal_pans, :name
 end
 
end
