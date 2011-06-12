class AddReviewableReviewerReferencesToReview < ActiveRecord::Migration
  def self.up
    change_table :reviews do |t|
      t.references :reviewable, :polymorphic => {:default => 'Job'}
      t.references :reviewer, :polymorphic => {:default => 'Customer'}
    end
  end

  def self.down
    remove_column :reviews, :reviewable_id
    remove_column :reviews, :reviewable_type
    remove_column :reviews, :reviewer_id
    remove_column :reviews, :reviewer_type
  end
end
