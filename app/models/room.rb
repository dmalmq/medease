class Room < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_many_attached :photos
  validates :name, presence: true, uniqueness: true
  # include PgSearch::Model
  # pg_search_scope :search_by_equipment,
  #   against: [ :equipment ],
  #   using: {
  #     tsearch: { prefix: true }
  #   }

  # include PgSearch::Model
  # pg_search_scope :search_by_category,
  #   against: [ :facility_name ],
  #   using: {
  #     tsearch: { prefix: true }
  #   }

  # include PgSearch::Model
  # pg_search_scope :search_by_location,
  #   against: [ :location ],
  #   using: {
  #     tsearch: { prefix: true }
  #   }
end
