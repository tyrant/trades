class Profession < ActiveRecord::Base

  has_and_belongs_to_many :traders, :join_table => :professions_traders
  
end
