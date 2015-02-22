class FixColumName < ActiveRecord::Migration
  def self.up
    rename_column :recipes, :type_food, :food_type
  end

  def self.down
    # rename back if you need or do something else or do nothing
  end
end