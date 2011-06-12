class Address < ActiveRecord::Base
  # Is the Google Maps geocoding API not a wondrous thing? Simply plug lat+lng into it on the client,
  # and you get all sorts of goodies, including locally-formatted human-readable address strings.

  belongs_to :locatable, :polymorphic => :true
  belongs_to :imageable, :polymorphic => :true
  
  validates_presence_of :latitude
  validates_presence_of :longitude
  
end
