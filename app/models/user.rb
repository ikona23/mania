class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me, :username, :is_customer, :is_vendor
  validates_presence_of :name
  validates_uniqueness_of :name
  has_many :posts

  def user_type
    self.is_vendor ? 'vendor' : 'customer'
  end

end
