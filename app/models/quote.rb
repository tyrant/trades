class Quote < ActiveRecord::Base

  # A Trader makes a Quote for a potential Job - they see one as advertised by a Customer,
  # knock together a Quote, using as media both the images and videos included in the Job,
  # and images and videos of their own.

  belongs_to :trader
  belongs_to :job
  has_many :videos, :as => :videoable
  has_many :images, :as => :imageable
  has_many :reviews, :as => :reviewable
  
end
