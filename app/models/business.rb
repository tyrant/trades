class Business < ActiveRecord::Base

  has_many :traders
  has_many :reviews, :as => :reviewable
end
