class Job < ActiveRecord::Base

  # A Customer will create a Job, and advertise it for a Trader. Once a Trader accepts the job
  # (by means of submitting a Quote and the Customer accepting it), the association between 
  # job and trader is made.
  
  belongs_to :customer
  belongs_to :trader
  has_one :address, :as => :locatable
  has_many :images, :as => :imageable
  has_many :videos, :as => :videoable
  has_many :reviews, :as => :reviewable
  has_many :quotes
  has_and_belongs_to_many :professions, :join_table => :professions_jobs

  validates_presence_of :title
  validates_presence_of :description
  
  accepts_nested_attributes_for :address, :videos, :reviews
  
  before_create :set_completed_to_false

  def as_json(options)
    job = {
      'id' => self.id,
      'title' => self.title,
      'description' => self.description
    }
    job['customer_id'] = self.customer_id if defined?(self.customer_id) and !self.customer_id.nil?
    job['trader_id'] = self.trader_id if defined?(self.trader_id) and !self.trader_id.nil?
    job['address_id'] = self.address.id if defined?(self.address) and !self.address.nil?
    job
  end
  
  def set_completed_to_false
    self.completed = false
    true
  end
  
  # The New Job form, at /reviews/quick, Ajaxly uploads images for this job - but of course,
  # they're uploaded before the Job object is created. How do you associate those images with this Job?
  # Simple - create a token for each image; send the token along with the Ajax upload, and when
  # the New Job form is submitted, send every token generated along with it. After the Job object
  # is created, match the token list against the tokens for all Image objects, and matches mean
  # associations. This function does that.
  def set_images(tokens)
    self.images = Image.where('token IN (?)', "#{tokens}").to_a
  end
end
