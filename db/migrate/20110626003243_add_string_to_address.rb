class AddStringToAddress < ActiveRecord::Migration
  def self.up
    change_table :addresses do |t|
      t.text :readable
    end
  end

  def self.down
    change_table :addresses do |t|
      t.remove :readable
    end
  end
end
