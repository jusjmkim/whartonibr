class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, authentication_keys: [ :username ]
  attr_accessible :username, :password, :password_confirmation, :confirmed_at, :email
end
