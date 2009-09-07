# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090907194205) do

  create_table "foods", :force => true do |t|
    t.string   "name"
    t.float    "energy"
    t.float    "protein"
    t.float    "total_fats"
    t.float    "carbohydrate"
    t.float    "total_dietary_fiber"
    t.float    "total_sugars"
    t.float    "calcium"
    t.float    "iron"
    t.float    "magnesium"
    t.float    "phosphorus"
    t.float    "potassium"
    t.float    "sodium"
    t.float    "zinc"
    t.float    "copper"
    t.float    "manganese"
    t.float    "fluoride"
    t.float    "selenium"
    t.float    "vitamin_c"
    t.float    "thiamin"
    t.float    "riboflavin"
    t.float    "niacin"
    t.float    "vitamin_b6"
    t.float    "vitamin_b12"
    t.float    "vitamin_a_rae"
    t.float    "vitamin_a_iu"
    t.float    "beta_carotene"
    t.float    "alpha_carotene"
    t.float    "lycopene"
    t.float    "vitamin_e"
    t.float    "vitamin_k"
    t.float    "total_saturated_fats"
    t.float    "total_unsaturated_fats"
    t.float    "total_polyunsaturated_fats"
    t.float    "alcohol"
    t.float    "caffeine"
    t.float    "water"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "meal_plans", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
  end

  create_table "serving_sizes", :force => true do |t|
    t.integer  "food_id"
    t.string   "description"
    t.float    "mass"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users_meal_plans", :force => true do |t|
    t.integer  "user_id"
    t.integer  "meal_plan_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
