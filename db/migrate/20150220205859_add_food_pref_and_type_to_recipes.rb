class AddFoodPrefAndTypeToRecipes < ActiveRecord::Migration
  def change
    add_reference :recipes, :food_type, index: true
    add_reference :recipes, :food_preference, index: :true
    add_reference :food_preferences, :admin, index: true
    add_reference :food_types, :admin, index: true
  end
end