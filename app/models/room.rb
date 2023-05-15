class Room < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, uniqueness: true
  validates :facility_name, presence: true
  validates :location, presence: true
  validates :price_per_hour, presence: true
end
