class CreateReports < ActiveRecord::Migration
  def self.up
    create_table :reports do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.text :hours
      t.integer :price_range
      t.boolean :vegan
      t.boolean :vegetarian
      t.boolean :gluten_free
      t.text :comments
      t.text :food_types

      t.timestamps
    end
  end

  def self.down
    drop_table :reports
  end
end
