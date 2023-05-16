class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :user
  enum :status, [ :pending, :confirmed, :rejected ]
end
