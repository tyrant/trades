class AlterJobAddCustomerTraderForeignKeys < ActiveRecord::Migration
  def self.up
   alter_table :jobs do |t|
     t.references :customer
     t.references :trader
   end
  end

  def self.down
    remove_column :jobs, :customer_id
    remove_column :jobs, :trader_id
  end
end
