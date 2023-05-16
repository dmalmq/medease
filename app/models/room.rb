class Room < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :users, through: :bookings
  validates :name, presence: true, uniqueness: true
  # validates :facility_name, presence: true
  # validates :location, presence: true
  # validates :price_per_hour, presence: true
  # validates :capacity, inclusion: { in: (1..10).to_a }
end
