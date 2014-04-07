class AddTradesmenToRoles < ActiveRecord::Migration
  def change
    add_column :roles, :tradesmen, :string
  end
end
