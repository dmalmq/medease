class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :user

  alias_attribute :start_time, :date

  enum :status, [ :pending, :confirmed, :rejected ]
  validates :hours, presence: true, numericality: { greater_than_or_equal_to: 1 }

  def pending?
    status == 'pending'
  end
end
