class Address < ActiveRecord::Base

  belongs_to :locatable, :polymorphic => :true
  
  validates_presence_of :street
  validates_presence_of :suburb
  validates_presence_of :city
  validates_presence_of :country
  
end
