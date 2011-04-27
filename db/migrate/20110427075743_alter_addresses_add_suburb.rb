class AlterAddressesAddSuburb < ActiveRecord::Migration
  def self.up
    change_table :addresses do |t|
      t.string :suburb
    end
  end

  def self.down
    change_table :addresses do |t|
      t.remove :suburb
    end
  end
end
