class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :cidade
      t.string :email
      t.string :facebook
      t.string :twitter
      t.string :favorite_cuisine

      t.timestamps null: false
    end
  end
end
