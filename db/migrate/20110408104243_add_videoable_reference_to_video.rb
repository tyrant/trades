class AddVideoableReferenceToVideo < ActiveRecord::Migration
  def self.up
    change_table :videos do |t|
      t.references :videoable, :polymorphic => {:default => 'Quote'}
    end
  end

  def self.down
    remove_column :videos, :videoable_id
    remove_column :videos, :videoable_type
  end
end
