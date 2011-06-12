class AddImageableReferenceToImage < ActiveRecord::Migration
  def self.up
    change_table :images do |t|
     t.references :imageable, :polymorphic => {:default => 'Job'}
    end
  end

  def self.down
    remove_column :images, :imageable_id
    remove_column :images, :imageable_type
  end
end
