class Job < ActiveRecord::Base

  belongs_to :customer
  belongs_to :trader
  has_one :address, :as => :locatable
  has_many :images, :as => :imageable
  has_many :reviews, :as => :reviewable

  validates_presence_of :description

  def as_json
    job = {
      'id' => self.id,
      'title' => self.title,
      'description' => self.description
    }
    job.merge!({ 'customer_id' => self.customer_id }) if defined?(self.customer_id) and !self.customer_id.nil?
    job.merge!({ 'trader_id' => self.trader_id }) if defined?(self.trader_id) and !self.trader_id.nil?
    job.merge!({ 'address_id' => self.address.id }) if defined?(self.address_id) and self.address_id.nil?
    job
  end

end
