class Trader < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :remember_me, :question, :sprightly

  has_many :jobs
  has_many :customers, :through => :jobs
  has_and_belongs_to_many :professions, :join_table => :professions_traders
  belongs_to :business
  has_many :addresses, :as => :locatable
  has_many :reviews, :as => :reviewer
  has_many :reviews, :as => :reviewable
  has_many :images, :as => :imageable

  cattr_reader :per_page
  @@per_page = 10

  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_presence_of :question, :if => "sprightly?"

  before_create :set_login_and_temp_password

  def set_login_and_temp_password
    unless self.sprightly?
      self.login = Digest::SHA1.hexdigest(Time.now.to_f.to_s)[0,8]
      self.temp_password = Digest::SHA1.hexdigest(Time.now.to_f.to_s + "blah blah blah salt salt")[0,8]
    end
  end

  def as_json(options)
    trader = {
      'id' => self.id,
      'name' => self.name,
    }
    trader['business_id'] = self.business_id unless self.business_id.nil?
    trader
  end

  def name
    "#{self.first_name} #{self.last_name}"
  end
end
