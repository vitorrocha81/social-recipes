class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :type_kitchen
      t.string :preference
      t.integer :serves_people
      t.integer :time_preper
      t.string :level
      t.text :ingredients
      t.text :steps

      t.timestamps null: false
    end
  end
end
