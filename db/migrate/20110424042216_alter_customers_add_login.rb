class AlterCustomersAddLogin < ActiveRecord::Migration
  def self.up
    change_table :customers do |t|
      t.string :login
    end
  end

  def self.down
    change_table :customers do |t|
      t.remove :login
    end
  end
end
