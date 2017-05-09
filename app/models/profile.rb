class Profile < ApplicationRecord
  belongs_to :user
  has_many :professional_profile
  mount_uploader :profile_pic, PhotoUploader

  validates :first_name, presence: true
  validates :last_name, presence: true
  #turn off when seeding
  # validates :profile_pic, presence: true
  validates :username, presence: true, uniqueness: true
end
