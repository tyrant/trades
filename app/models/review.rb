class Review < ActiveRecord::Base

  # For form select boxes.
  REVIEWABLE_TYPES = [['All', 'All'], ['Job', 'Job'], ['Trader', 'Trader'], ['Quote', 'Quote']] # Add in 'business' later.
  REVIEWER_TYPES = [['All', 'All'], ['Customer', 'Customer'], ['Trader', 'Trader']]

  belongs_to :reviewable, :polymorphic => :true
  belongs_to :reviewer, :polymorphic => :true

  validates_presence_of :description
  validates_numericality_of :mark
  
  cattr_reader :per_page
  @@per_page = 10

  def self.marks
    [1, 2, 3, 4, 5]
  end
  
  def as_json(options = {})
    {
      'review' => {
        'id' => self.id,
        'title' => self.title,
        'description' => self.description,
        'mark' => self.mark,
        'reviewer_id' => self.reviewer_id,
        'reviewer_type' => self.reviewer_type,
        'reviewable_id' => self.reviewer_id,
        'reviewable_type' => self.reviewable_type
      }
    }
  end
  
  def set_reviewable(type, id)
    write_attribute(:reviewable_type, type)
    write_attribute(:reviewable_id, id)
  end
end
