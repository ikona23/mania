class AddTradesmenToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tradesmen, :string
  end
end
