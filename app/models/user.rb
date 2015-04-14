class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,:name,:city,:state,:country,:is_disabled,:role
  has_many :designer_likeds
  has_many :designers, :through=> :designer_likeds
  has_many :products
  has_many :product_saveds
  
end
