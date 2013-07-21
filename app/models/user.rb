class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :rememberable, :trackable, :validatable, :registerable, :recoverable
  # attr_accessible :title, :body

  attr_accessible :email, :password, :password_confirmation, :remember_me

end
