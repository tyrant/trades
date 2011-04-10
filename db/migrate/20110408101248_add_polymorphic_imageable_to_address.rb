class AddPolymorphicImageableToAddress < ActiveRecord::Migration
  def self.up
    change_table :addresses do |t|
      t.references :imageable, :polymorphic => {:default => 'Customer'}
    end
  end

  def self.down
    change_table :addresses do |t|
      t.remove :imageable_id, :imageable_type
    end
  end
end
