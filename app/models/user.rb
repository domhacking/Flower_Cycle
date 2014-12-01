class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role, :house_number, :road_name, :postcode, :company_name, :website, :contact_number
  # attr_accessible :title, :body
  has_many :purchases
  has_many :events, as: :supplier
  has_many :events, as: :customer

end