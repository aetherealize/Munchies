class CreateFoods < ActiveRecord::Migration
  def self.up
    create_table :foods do |t|
      t.string :name
      t.float :energy
      t.float :protein
      t.float :total_fats
      t.float :carbohydrate
      t.float :total_dietary_fiber
      t.float :total_sugars
      t.float :calcium
      t.float :iron
      t.float :magnesium
      t.float :phosphorus
      t.float :potassium
      t.float :sodium
      t.float :zinc
      t.float :copper
      t.float :manganese
      t.float :fluoride
      t.float :selenium
      t.float :vitamin_c
      t.float :thiamin
      t.float :riboflavin
      t.float :niacin
      t.float :vitamin_b6
      t.float :vitamin_b12
      t.float :vitamin_a_rae
      t.float :vitamin_a_iu
      t.float :beta_carotene
      t.float :alpha_carotene
      t.float :lycopene
      t.float :vitamin_e
      t.float :vitamin_k
      t.float :total_saturated_fats
      t.float :total_unsaturated_fats
      t.float :total_polyunsaturated_fats
      t.float :alcohol
      t.float :caffeine
      t.float :water

      t.timestamps
    end
  end

  def self.down
    drop_table :foods
  end
end
