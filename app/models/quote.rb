class Quote < ActiveRecord::Base

  belongs_to :trader
  belongs_to :job
  has_many :videos, :as => :videoable
  has_many :images, :as => :imageable
  has_many :reviews, :as => :reviewable
  
end
