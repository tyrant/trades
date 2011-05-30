class Profession < ActiveRecord::Base

  has_and_belongs_to_many :traders, :join_table => :professions_traders
  has_and_belongs_to_many :jobs, :join_table => :professions_jobs
  
  validates_uniqueness_of :name
end
