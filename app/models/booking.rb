class Booking < ApplicationRecord
  belongs_to :hat
  belongs_to :rat

  enum status: [:pending, :accepted, :declined]
end
