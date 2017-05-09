class Conversation < ApplicationRecord
  validates :question, presence: true
  has_many :message
  has_many :review
end
