class AlterTradersAddActiveBoolean < ActiveRecord::Migration
  def self.up
    change_table :traders do |t|
      t.boolean :active
    end
  end

  def self.down
    change_table :traders do |t|
      t.remove :active
    end
  end
end
