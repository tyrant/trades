class Profession < ActiveRecord::Base

  has_and_belongs_to_many :traders, :join_table => :professions_traders
  has_and_belongs_to_many :jobs, :join_table => :professions_jobs
  has_many :children, :class_name => 'Profession', :foreign_key => 'parent_id'
  belongs_to :parent, :class_name => 'Profession'
  
  #validates_uniqueness_of :name
end
