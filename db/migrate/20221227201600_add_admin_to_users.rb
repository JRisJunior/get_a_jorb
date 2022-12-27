class AddAdminToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :admin_level, :boolean
  end
end
