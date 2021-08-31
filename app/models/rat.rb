class Rat < ApplicationRecord
  has_many :bookings
  has_one_attached :photo

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  # validates :photo, presence: true
end
