class AddDietFriendlinessToReports < ActiveRecord::Migration
  def self.up
    add_column :reports, :diet_friendliness, :text
    remove_column :reports, :vegan
    remove_column :reports, :vegetarian
    remove_column :reports, :gluten_free
  end

  def self.down
    add_column :reports, :vegetarian, :boolean
    add_column :reports, :vegan, :boolean
    add_column :reports, :gluten_free, :boolean
    remove_column :reports, :diet_friendliness
  end
end
