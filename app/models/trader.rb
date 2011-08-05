class Trader < ActiveRecord::Base

  # Purpose of attribute "sprightly": Customers use the Create Trader form on the Quick Review page
  # when they're Reviewing a Job and the Trader doing this Job doesn't yet exist on the site. The Trader
  # object is created, but at that point isn't controlled by an actual person. If that person uses the
  # website, sees their profile and thinks "hey, that's me!", they answer the security question given by
  # the object's creator, and sprightly = true.

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
  
  define_index do
    indexes [first_name, last_name], :as => :name, :sortable => true
    indexes addresses.readable, :as => :address
    
    # Index reviews about this trader
    indexes reviews.title, :as => 'review_title'
    indexes reviews.description, :as => 'review_description'
    indexes reviews.mark, :as => 'review_mark', :sortable => true
    indexes reviews.created_at, :as => 'review_date', :sortable => true
    indexes reviews.reviewable_type, :as => 'reviewable_type'
    
    # Index jobs this trader's done
    indexes jobs.title, :as => 'job_title'
    indexes jobs.description, :as => 'job_description'
    indexes jobs.created_at, :as => 'job_date', :sortable => true
    
    #has professions(:name), :as => 'profession_name'
  end

  cattr_reader :per_page
  @@per_page = 10

  validates_presence_of :first_name
  validates_presence_of :last_name
  #validates_presence_of :question, :unless => "sprightly?"

  #before_create :set_login_and_temp_password


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
  
  # 'first last' becomes 'first', 'last'; 'first middle last' becomes 'first middle', 'last'.
  def name=(full_name)
    self.first_name = full_name.split(' ').delete_last.join(' ')
    self.last_name = full_name.split(' ').last
  end
  
  # Send an email to this Trader, letting them know that the owner of Job.find(job_id) would like them to
  # submit a Quote.
  def request_quote(job_id, content)
    
  end
  
  def to_param
    "#{self.name.slugify}-#{self.id}"
  end
  
  private


    # ----- CALLBACKS ----- #

    # before_create

    def set_login_and_temp_password
      unless self.sprightly?
        self.login = Digest::SHA1.hexdigest(Time.now.to_f.to_s)[0,8]
        self.temp_password = Digest::SHA1.hexdigest(Time.now.to_f.to_s + "blah blah blah salt salt")[0,8]
      end
    end
end
