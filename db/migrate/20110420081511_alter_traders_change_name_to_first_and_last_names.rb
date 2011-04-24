class AlterTradersChangeNameToFirstAndLastNames < ActiveRecord::Migration
  def self.up
    change_table :traders do |t|
      t.remove :name
      t.string :first_name
      t.string :last_name
    end
  end

  def self.down
    change_table :traders do |t|
      t.remove :first_name
      t.remove :last_name
      t.string :name
    end
  end
end
