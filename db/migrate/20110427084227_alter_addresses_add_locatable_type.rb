class AlterAddressesAddLocatableType < ActiveRecord::Migration
  def self.up
    change_table :addresses do |t|
      t.string :locatable_type, :default => 'Job'
    end
  end

  def self.down
    change_table :addresses do |t|
      t.remove :locatable_type
    end
  end
end
