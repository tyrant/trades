class RemoveEmailFromTradersToPreventDeviseScrewingUp < ActiveRecord::Migration
  def self.up
    change_table :traders do |t|
      t.remove :email
    end
  end

  def self.down
    change_table :traders do |t|
      t.string :email
    end
  end
end
