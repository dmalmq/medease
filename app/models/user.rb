class User < ApplicationRecord
  has_many :bookings # bookings as a client
  has_many :rooms
  has_many :bookings_as_hospital, through: :rooms, source: :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
