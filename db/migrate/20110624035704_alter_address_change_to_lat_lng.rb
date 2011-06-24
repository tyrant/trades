class AlterAddressChangeToLatLng < ActiveRecord::Migration
  def self.up
    rename_column :addresses, :latitude, :lat
    rename_column :addresses, :longitude, :lng
  end

  def self.down
    rename_column :addresses, :lat, :latitude
    rename_column :addresses, :lng, :longitude
  end
end
