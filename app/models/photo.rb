class Photo < ApplicationRecord
  belongs_to :styleboard
  belongs_to :user
  has_many :comment
  # belongs_to :owner , class_name: 'User'
  # Photo.owner
  mount_uploader :location, PhotoUploader
  has_many :likes, class_name: 'PhotoLike'
end
