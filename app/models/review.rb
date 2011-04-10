class Review < ActiveRecord::Base

  belongs_to :reviewable, :polymorphic => :true
  belongs_to :reviewer, :polymorphic => :true

end
