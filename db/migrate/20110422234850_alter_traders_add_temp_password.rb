class AlterTradersAddTempPassword < ActiveRecord::Migration
  def self.up
    change_table :traders do |t|
      t.string :temp_password
    end
  end

  def self.down
    change_table :traders do |t|
      t.remove :temp_password
    end
  end
end
