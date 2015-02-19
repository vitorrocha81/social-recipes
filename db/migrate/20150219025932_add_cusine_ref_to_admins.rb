class AddCusineRefToAdmins < ActiveRecord::Migration
  def change
    add_reference :cuisines, :admin, index: true
  end
end
