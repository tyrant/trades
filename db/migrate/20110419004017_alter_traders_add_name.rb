class AlterTradersAddName < ActiveRecord::Migration
  def self.up
    change_table :traders do |t|
      t.string :name
    end
  end

  def self.down
    change_table :traders do |t|
      t.remove :name
    end
  end
end
