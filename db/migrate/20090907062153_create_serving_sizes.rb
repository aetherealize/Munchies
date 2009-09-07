class CreateServingSizes < ActiveRecord::Migration
  def self.up
    create_table :serving_sizes do |t|
      t.references :food
      t.string :description
      t.float :mass

      t.timestamps
    end
  end

  def self.down
    drop_table :serving_sizes
  end
end
