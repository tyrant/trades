class AlterAddressesChangeAddressDataToLatPlusLng < ActiveRecord::Migration
  def self.up
    change_table :addresses do |t|
      t.remove :street
      t.remove :suburb
      t.remove :city
      t.remove :country
      t.float :latitude
      t.float :longitude
    end
  end

  def self.down
    change_table :addresses do |t|
      t.remove :latitude
      t.remove :longitude
      t.string :street
      t.string :suburb
      t.string :city
      t.string :country
    end
  end
end
