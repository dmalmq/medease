# Template for asking chatgpt:


# Room.create(name: 'fake hospital room name', facility_name: 'fake japanese hospital name', location: 'city in japan', equipment: 'fake medical equipment', price_per_hour: 'fake rent fee per hour', category: 'fake medical category eg. surgery, xray etc', capacity: 'fake capacity of the room(like 1-5),')
require 'faker'

# Room.create(name: 'fake hospital room name', facility_name: 'fake japanese hospital name', location: 'city in japan', equipment: 'fake medical equipment', price_per_hour: 'fake rent fee per hour', category: 'fake medical category eg. surgery, xray etc', capacity: 'fake capacity of the room(like 1-5),')

# Hospital room generation

puts "Removing the current rooms"
Room.destroy_all
puts "Done removing the current rooms"

puts "Creating 20 hospital rooms"


5.times do
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Number.number(digits: 10))
end
def random_user
  User.offset(rand(User.count)).first
end

Room.create(name: 'Cardiac Catheterization Lab', facility_name: 'Sunrise Medical Center', location: 'Tokyo, Japan', equipment: 'Fluoroscope', price_per_hour: 10000, category: 'Cardiology', capacity: 3, user: random_user)
Room.create(name: 'MRI Suite', facility_name: 'Asahi Hospital', location: 'Osaka, Japan', equipment: 'MRI Scanner', price_per_hour: 12000, category: 'Radiology', capacity: 4, user: random_user)

# Room.create(name: 'Operating Room', facility_name: 'Sakura Hospital', location: 'Kyoto, Japan', equipment: 'Surgical Lights', price_per_hour: 15000, category: 'Surgery', capacity: '5')

# Room.create(name: 'Labor and Delivery Room', facility_name: 'Himawari Women’s Hospital', location: 'Fukuoka, Japan', equipment: 'Fetal Heart Monitor', price_per_hour: '¥8,000', category: 'Obstetrics and Gynecology', capacity: '2')

# Room.create(name: 'Endoscopy Suite', facility_name: 'Nakamura Digestive Clinic', location: 'Nagoya, Japan', equipment: 'Flexible Endoscope', price_per_hour: '¥11,000', category: 'Gastroenterology', capacity: '3')

# Room.create(name: 'Radiation Therapy Room', facility_name: 'Mount Fuji Cancer Center', location: 'Yamanashi, Japan', equipment: 'MRI Scanner', price_per_hour: '¥14,000', category: 'Radiation Oncology', capacity: '4')

# Room.create(name: 'Ultrasound Room', facility_name: 'Shinjuku Medical Clinic', location: 'Tokyo, Japan', equipment: 'Fetal Heart Monitor', price_per_hour: '¥7,000', category: 'Diagnostic Imaging', capacity: '2')

# Room.create(name: 'Emergency Room', facility_name: 'Hiroshima Red Cross Hospital', location: 'Hiroshima, Japan', equipment: 'Surgical Lights', price_per_hour: '¥20,000', category: 'Emergency Medicine', capacity: '5')

# Room.create(name: 'Physical Therapy Room', facility_name: 'Yokohama Rehabilitation Clinic', location: 'Kanagawa, Japan', equipment: 'Fluoroscope', price_per_hour: '¥9,000', category: 'Physical Therapy', capacity: '3')

# Room.create(name: 'Neonatal Intensive Care Unit', facility_name: 'Kobe Children’s Hospital', location: 'Hyogo, Japan', equipment: 'Fetal Heart Monitor', price_per_hour: '¥12,000', category: 'Pediatrics', capacity: '2')

# Room.create(name: 'Sleep Study Room', facility_name: 'Sapporo Sleep Disorders Clinic', location: 'Hokkaido, Japan', equipment: 'Flexible Endoscope', price_per_hour: '¥8,000', category: 'Sleep Medicine', capacity: '1')

# Room.create(name: 'Intensive Care Unit', facility_name: 'Nara General Hospital', location: 'Nara, Japan', equipment: 'Surgical Lights', price_per_hour: '¥18,000', category: 'Critical Care', capacity: '5')

# Room.create(name: 'X-ray Room', facility_name: 'Akita Medical Clinic', location: 'Akita, Japan', equipment: 'MRI Scanner', price_per_hour: '¥7,000', category: 'Radiology', capacity: '2')

# Room.create(name: 'Infusion Therapy Room', facility_name: 'Kanazawa Medical Center', location: 'Ishikawa, Japan', equipment: 'Flexible Endoscope', price_per_hour: '¥10,000', category: 'Infusion Therapy', capacity: '3')

# Room.create(name: 'Orthopedic Operating Room', facility_name: 'Himeji Orthopedic Clinic', location: 'Hyogo, Japan', equipment: 'Surgical Lights', price_per_hour: '¥16,000', category: 'Orthopedics', capacity: '4')

# Room.create(name: 'Gynecological Surgery Suite', facility_name: 'Kurashiki Women’s Hospital', location: 'Okayama, Japan', equipment: 'Fluoroscope', price_per_hour: '¥13,000', category: 'Gynecology', capacity: '3')

# Room.create(name: 'Dental Clinic', facility_name: 'Suginami Dental Care', location: 'Tokyo, Japan', equipment: 'Flexible Endoscope', price_per_hour: '¥5,000', category: 'Dentistry', capacity: '1')

# Room.create(name: 'Chemotherapy Room', facility_name: 'Sendai Cancer Institute', location: 'Miyagi, Japan', equipment: 'Fetal Heart Monitor', price_per_hour: '¥11,000', category: 'Chemotherapy', capacity: '3')

# Room.create(name: 'Neurology Exam Room', facility_name: 'Matsue Neurological Clinic', location: 'Shimane, Japan', equipment: 'MRI Scanner', price_per_hour: '¥9,000', category: 'Neurology', capacity: '2')

# Room.create(name: 'Pulmonary Function Testing Room', facility_name: 'Otaru Respiratory Clinic', location: 'Hokkaido, Japan', equipment: 'Fluoroscope', price_per_hour: '¥8,000', category: 'Pulmonology', capacity: '1')
