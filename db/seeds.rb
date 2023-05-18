# Template for asking chatgpt:


# Room.create(name: 'fake hospital room name', facility_name: 'fake japanese hospital name', location: 'city in japan', equipment: 'fake medical equipment', price_per_hour: 'fake rent fee per hour', category: 'fake medical category eg. surgery, xray etc', capacity: 'fake capacity of the room(like 1-5),')
require 'faker'

# Room.create(name: 'fake hospital room name', facility_name: 'fake japanese hospital name', location: 'city in japan', equipment: 'fake medical equipment', price_per_hour: 'fake rent fee per hour', category: 'fake medical category eg. surgery, xray etc', capacity: 'fake capacity of the room(like 1-5),')

# Hospital room generation

puts "Removing the current rooms"
Room.destroy_all
puts "Done removing the current rooms"

puts "Creating 15 hospital rooms"

15.times do
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Number.number(digits: 10))
end

def randosample
  User.offset(rand(User.count)).first
end

Room.create!(name: 'Cardiac Catheterization Lab', facility_name: 'Sunrise Medical Center', address: 'Tokyo, Japan', equipment: 'Operating Table', price_per_hour: 10000, category: 'Neurosurgery', capacity: 3, user: randosample)
Room.create!(name: 'MRI Suite', facility_name: 'Asahi Hospital', address: 'Osaka, Japan', equipment: 'Operating Table', price_per_hour: 12000, category: 'General Surgery', capacity: 4, user: randosample)
Room.create!(name: 'Operating Room', facility_name: 'Sakura Hospital', address: 'Kyoto, Japan', equipment: 'Operating Table', price_per_hour: 15000, category: 'Cardiothoracic Surgery', capacity: '5', user: randosample)
Room.create!(name: 'Labor and Delivery Room', facility_name: 'Himawari Women’s Hospital', address: 'Fukuoka, Japan', equipment: 'Surgical Lights', price_per_hour: 8000, category: 'Cardiothoracic Surgery', capacity: '2', user: randosample)
Room.create!(name: 'Endoscopy Suite', facility_name: 'Nakamura Digestive Clinic', address: 'Nagoya, Japan', equipment: 'Anesthesia Machine', price_per_hour: 11000, category: 'Cardiothoracic Surgery', capacity: '3', user: randosample)
Room.create!(name: 'Radiation Therapy Room', facility_name: 'Mount Fuji Cancer Center', address: 'Yamanashi, Japan', equipment: 'Electrocautery Device', price_per_hour: 14000, category: 'Cardiothoracic Surgery', capacity: '4', user: randosample)
Room.create!(name: 'Ultrasound Room', facility_name: 'Shinjuku Medical Clinic', address: 'Tokyo, Japan', equipment: 'Surgical Lights', price_per_hour: 7000, category: 'Urological Surgery', capacity: '2', user: randosample)
Room.create!(name: 'Emergency Room', facility_name: 'Hiroshima Red Cross Hospital', address: 'Hiroshima, Japan', equipment: 'Operating Table', price_per_hour: 20000, category: 'Urological Surgery', capacity: '5', user: randosample)
Room.create!(name: 'Physical Therapy Room', facility_name: 'Yokohama Rehabilitation Clinic', address: 'Kanagawa, Japan', equipment: 'Surgical Instruments', price_per_hour: 9000, category: 'Urological Surgery', capacity: '3', user: randosample)
Room.create!(name: 'Neonatal Intensive Care Unit', facility_name: 'Kobe Children’s Hospital', address: 'Hyogo, Japan', equipment: 'Surgical Lights', price_per_hour: 12000, category: 'Urological Surgery', capacity: '2', user: randosample)
Room.create!(name: 'Sleep Study Room', facility_name: 'Sapporo Sleep Disorders Clinic', address: 'Hokkaido, Japan', equipment: 'Anesthesia Machine', price_per_hour: 8000, category: 'Ophthalmic Surgery', capacity: '1', user: randosample)
Room.create!(name: 'Intensive Care Unit', facility_name: 'Nara General Hospital', address: 'Nara, Japan', equipment: 'Operating Table', price_per_hour: 18000, category: 'Ophthalmic Surgery', capacity: '5', user: randosample)
Room.create!(name: 'X-ray Room', facility_name: 'Akita Medical Clinic', address: 'Akita, Japan', equipment: 'Electrocautery Device', price_per_hour: 7000, category: 'General Surgery', capacity: '2', user: randosample)
Room.create!(name: 'Infusion Therapy Room', facility_name: 'Kanazawa Medical Center', address: 'Ishikawa, Japan', equipment: 'Anesthesia Machine', price_per_hour: 10000, category: 'Ophthalmic Surgery', capacity: '3', user: randosample)
Room.create!(name: 'Orthopedic Operating Room', facility_name: 'Himeji Orthopedic Clinic', address: 'Hyogo, Japan', equipment: 'Operating Table', price_per_hour: 16000, category: 'Ophthalmic Surgery', capacity: '4', user: randosample)


# Room.create!(name: 'Gynecological Surgery Suite', facility_name: 'Kurashiki Women’s Hospital', location: 'Okayama, Japan', equipment: 'Fluoroscope', price_per_hour: '¥13,000', category: 'Gynecology', capacity: '3')

# Room.create!(name: 'Dental Clinic', facility_name: 'Suginami Dental Care', location: 'Tokyo, Japan', equipment: 'Anesthesia Machine', price_per_hour: '¥5,000', category: 'Dentistry', capacity: '1')

# Room.create(name: 'Chemotherapy Room', facility_name: 'Sendai Cancer Institute', location: 'Miyagi, Japan', equipment: 'Fetal Heart Monitor', price_per_hour: '¥11,000', category: 'Chemotherapy', capacity: '3')

# Room.create(name: 'Neurology Exam Room', facility_name: 'Matsue Neurological Clinic', location: 'Shimane, Japan', equipment: 'MRI Scanner', price_per_hour: '¥9,000', category: 'Neurology', capacity: '2')

# Room.create(name: 'Pulmonary Function Testing Room', facility_name: 'Otaru Respiratory Clinic', location: 'Hokkaido, Japan', equipment: 'Fluoroscope', price_per_hour: '¥8,000', category: 'Pulmonology', capacity: '1')
