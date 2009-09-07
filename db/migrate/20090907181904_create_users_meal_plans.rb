class CreateUsersMealPlans < ActiveRecord::Migration
  def self.up
    create_table :users_meal_plans do |t|
      t.references :user
      t.references :meal_plan
      t.timestamps
    end
  end

  def self.down
    drop_table :users_meal_plans
  end
end
