class ProfessionalProfile < ApplicationRecord
  belongs_to :user
  validates :message_price, numericality: { greater_than_or_equal_to: 0 }
end
