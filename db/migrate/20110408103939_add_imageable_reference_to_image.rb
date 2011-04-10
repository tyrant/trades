class AddImageableReferenceToImage < ActiveRecord::Migration
  def self.up
    alter_table :images do |t|
     t.references :imageable, :polymorphic => {:default => 'Job'}
    end
  end

  def self.down
    remove_column :images, :imageable_id
    remove_column :images, :imageable_type
  end
end
