class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :user
  enum :status, [ :pending, :confirmed, :rejected ]
  validates :hours, presence: true, numericality: { greater_than_or_equal_to: 1 }
end
