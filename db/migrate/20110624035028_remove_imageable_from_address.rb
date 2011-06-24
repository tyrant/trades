class RemoveImageableFromAddress < ActiveRecord::Migration
  def self.up
    change_table :addresses do |t|
      t.remove :imageable_id
      t.remove :imageable_type
    end
  end

  def self.down
    change_table :addresses do |t|
      t.references :imageable
    end
  end
end
