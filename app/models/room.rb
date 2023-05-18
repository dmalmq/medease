CATEGORIES = [
  "General Surgery",
  "Orthopedic Surgery",
  "Neurosurgery",
  "Cardiothoracic Surgery",
  "Gynecological Surgery",
  "Urological Surgery",
  "Ophthalmic Surgery",
  "ENT (Ear, Nose, and Throat) Surgery",
  "Plastic and Reconstructive Surgery",
  "Pediatric Surgery"
]

EQUIPMENTS = [
  "",
  "Operating Table",
  "Surgical Lights",
  "Anesthesia Machine",
  "Electrocautery Device",
  "Surgical Instruments",
  "Surgical Microscope",
  "Laparoscopic Equipment",
  "Patient Monitoring System",
  "Surgical Drapes",
  "Suction System"
]

class Room < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_many_attached :photos
  validates :name, presence: true, uniqueness: { scope: :facility_name }
  validates :facility_name, presence: true
  validates :location, presence: true
  validates :price_per_hour, presence: true
  validates :capacity, presence: true
end
