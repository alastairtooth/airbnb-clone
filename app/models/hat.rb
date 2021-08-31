class Hat < ApplicationRecord
  belongs_to :rat
  has_many :bookings
  has_one_attached :photo

  SIZES = ["S", "M", "L"]

  validates :title, presence: true
  validates :description, presence: true

  validates :price, presence: true, numericality: { only_integer: true }
  validates :size, presence: true, inclusion: { in: SIZES }

  validates :available, presence: true
  # validates :photo, presence: true
end
