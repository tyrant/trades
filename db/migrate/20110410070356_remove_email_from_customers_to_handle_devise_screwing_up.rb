class RemoveEmailFromCustomersToHandleDeviseScrewingUp < ActiveRecord::Migration
  def self.up
    change_table :customers do |t|
      t.remove :email
    end
  end

  def self.down
    change_table :customers do |t|
      t.string :email
    end
  end
end
