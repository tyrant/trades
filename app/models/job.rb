class Job < ActiveRecord::Base

  belongs_to :customer
  belongs_to :trader
  has_one :address, :as => :locatable
  has_many :images, :as => :imageable
  has_many :reviews, :as => :reviewable

end
