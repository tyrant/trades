class Job < ActiveRecord::Base

  # A Customer will create a Job, and advertise it for a Trader. Once a Trader accepts the job
  # (by means of submitting a Quote and the Customer accepting it), the association is made.
  

  belongs_to :customer
  belongs_to :trader
  has_one :address, :as => :locatable
  has_many :images, :as => :imageable
  has_many :videos, :as => :videoable
  has_many :reviews, :as => :reviewable

  validates_presence_of :title
  validates_presence_of :description
  
  accepts_nested_attributes_for :address, :images, :videos, :reviews
  
  before_create :set_completed_to_false

  def as_json(options)
    job = {
      'id' => self.id,
      'title' => self.title,
      'description' => self.description
    }
    job['customer_id'] = self.customer_id if defined?(self.customer_id) and !self.customer_id.nil?
    job['trader_id'] = self.trader_id if defined?(self.trader_id) and !self.trader_id.nil?
    job['address_id'] = self.address.id if defined?(self.address_id) and self.address_id.nil?
    job
  end
  
  def set_completed_to_false
    self.completed = false
  end
end
