class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.string :number
      t.string :street
      t.string :city
      t.string :state
      t.string :country
      t.references :locatable

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
