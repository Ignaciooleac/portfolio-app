class AddAdminToUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :admin, :boolean
    add_column :users, :admin, :boolean
  end
end
