class Review < ActiveRecord::Base

  belongs_to :reviewable, :polymorphic => :true
  belongs_to :reviewer, :polymorphic => :true

  validates_presence_of :description
  validates_numericality_of :mark

  @@marks = [1, 2, 3, 4, 5]

  def self.marks
    @@marks
  end
  
  def as_json(options)
    review = {
      'id' => self.id,
      'title' => self.title,
      'description' => self.description,
      'mark' => self.mark,
      'reviewer_id' => self.reviewer_id,
      'reviewer_type' => self.reviewer_type,
      'reviewable_id' => self.reviewer_id,
      'reviewable_type' => self.reviewable_type
    }
    review
  end
end
