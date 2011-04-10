class Trader < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me

  has_many :jobs
  has_many :customers, :through => :jobs
  has_and_belongs_to_many :professions, :join_table => :professions_traders
  belongs_to :business
  has_many :addresses, :as => :locatable
  has_many :reviews, :as => :reviewer
  has_many :reviews, :as => :reviewable
  
end
