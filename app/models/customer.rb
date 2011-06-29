class Customer < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :login, :password, :password_confirmation, :remember_me

  has_many :jobs
  has_many :traders, :through => :jobs
  has_many :addresses, :as => :locatable
  has_many :reviews, :as => :reviewer
  
  def name
    "#{self.first_name} #{self.last_name}"
  end
  
  # 'first last' becomes 'first', 'last'; 'first middle last' becomes 'first middle', 'last'.
  def name=(full_name)
    self.first_name = full_name.split(' ').delete_last.join(' ')
    self.last_name = full_name.split(' ').last
  end
end
