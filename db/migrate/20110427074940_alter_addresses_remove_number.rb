class AlterAddressesRemoveNumber < ActiveRecord::Migration

  # Having a separate 'number' field is overkill, I think.

  def self.up
    change_table :addresses do |t|
      t.remove :number
    end
  end

  def self.down
    change_table :addresses do |t|
      t.integer :number
    end
  end
end
