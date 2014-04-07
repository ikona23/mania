class AddUserTypeToUser < ActiveRecord::Migration
  def change
    add_column :users, :is_admin, :boolean
    add_column :users, :is_vendor, :boolean
  end
end
