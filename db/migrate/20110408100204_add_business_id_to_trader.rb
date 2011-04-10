class AddBusinessIdToTrader < ActiveRecord::Migration
  def self.up
    add_column :traders, :business_id, :integer
  end

  def self.down
    remove_column :traders, :business_id
  end
end
