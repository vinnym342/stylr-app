class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :styleboard
  has_many :photos
  has_one :profile
  has_one :follower
  has_many :comments
  has_one :professional_profile

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
