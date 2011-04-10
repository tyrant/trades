class Address < ActiveRecord::Base

  belongs_to :locatable, :polymorphic => :true
  
end
