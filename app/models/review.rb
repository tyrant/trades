class Review < ActiveRecord::Base

  belongs_to :reviewable, :polymorphic => :true
  belongs_to :reviewer, :polymorphic => :true

  validates_presence_of :description
  validates_numericality_of :mark

  @@marks = [1, 2, 3, 4, 5]

  def self.marks
    @@marks
  end
  
end
