class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  attr_accessible :email, :password, :password_confirmation, :activation_code, :user_department

  has_many :physicians

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
