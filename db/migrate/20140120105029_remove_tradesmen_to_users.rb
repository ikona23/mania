class RemoveTradesmenToUsers < ActiveRecord::Migration
  def up
    remove_column :users, :tradesmen
  end

  def down
    add_column :users, :tradesmen, :string
  end
end
