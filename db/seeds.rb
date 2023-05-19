require 'faker'
require 'open-uri'

puts "Removing the current rooms"

puts "Done removing the current rooms"

puts "Creating 15 hospital rooms"

15.times do
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, password: Faker::Number.number(digits: 10))
end

def randosample
  User.offset(rand(User.count)).first
end

puts "1"
file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684475218/development/h0kyrc2j30xu5hyyh2ky5jgx812u.jpg")
room = Room.new(name: 'Cardiac Catheterization Lab', facility_name: 'Sunrise Medical Center', address: 'Tokyo, Japan', equipment: 'Operating Table', price_per_hour: 10000, category: 'Neurosurgery', capacity: 3, user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save!

puts "1"
file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684472017/development/k4ighymky5dp04wex96ldf62qjjh.jpg")
room = Room.new(name: 'MRI Suite', facility_name: 'Asahi Hospital', address: 'Tokyo, Japan', equipment: 'Surgical Lights', price_per_hour: 12000, category: 'General Surgery', capacity: 4, user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684472013/development/qliknvezdg0ehmx61981qvuedcld.jpg")
room = Room.new(name: 'Operating Room', facility_name: 'Sakura Hospital', address: 'Tokyo, Japan', equipment: 'Surgical Lights', price_per_hour: 15000, category: 'Cardiothoracic Surgery', capacity: '5', user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684472010/development/3s5xcuyo7namke15q90eia4sitem.jpg")
room = Room.new(name: 'Labor and Delivery Room', facility_name: 'Himawari Women’s Hospital', address: 'Fukuoka, Japan', equipment: 'Surgical Lights', price_per_hour: 8000, category: 'Cardiothoracic Surgery', capacity: '2', user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684472006/development/8gto9vvmkntvwdefi5p8rnxii6bu.jpg")
room = Room.new(name: 'Endoscopy Suite', facility_name: 'Nakamura Digestive Clinic', address: 'Nagoya, Japan', equipment: 'Anesthesia Machine', price_per_hour: 11000, category: 'Cardiothoracic Surgery', capacity: '3', user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684472003/development/fwlw60pg6b6ipf684hygja6tils3.jpg")
room = Room.new(name: 'Radiation Therapy Room', facility_name: 'Mount Fuji Cancer Center', address: 'Yamanashi, Japan', equipment: 'Electrocautery Device', price_per_hour: 14000, category: 'Cardiothoracic Surgery', capacity: '4', user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684472000/development/ad2r3q4sce9gk085xzbnuzmlbyfo.jpg")
room = Room.new(name: 'Ultrasound Room', facility_name: 'Shinjuku Medical Clinic', address: 'Tokyo, Japan', equipment: 'Surgical Lights', price_per_hour: 7000, category: 'Urological Surgery', capacity: '2', user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684471997/development/sx8h19kpa2sh778ikg9y6ss7haqj.jpg")
room = Room.new(name: 'Emergency Room', facility_name: 'Hiroshima Red Cross Hospital', address: 'Hiroshima, Japan', equipment: 'Operating Table', price_per_hour: 20000, category: 'Urological Surgery', capacity: '5', user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684471993/development/coqi1bda94cpu7lb5gdda5al0ybq.jpg")
room = Room.new(name: 'Physical Therapy Room', facility_name: 'Yokohama Rehabilitation Clinic', address: 'Kanagawa, Japan', equipment: 'Surgical Instruments', price_per_hour: 9000, category: 'Urological Surgery', capacity: '3', user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684471990/development/0hq58useuewr3to00guek7yqjwsr.jpg")
room = Room.new(name: 'Sleep Study Room', facility_name: 'Sapporo Sleep Disorders Clinic', address: 'Hokkaido, Japan', equipment: 'Anesthesia Machine', price_per_hour: 8000, category: 'Ophthalmic Surgery', capacity: '1', user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684471986/development/8pw669u6aimig4p7kycl086gsea6.jpg")
room = Room.new(name: 'Neonatal Intensive Care Unit', facility_name: 'Kobe Children’s Hospital', address: 'Hyogo, Japan', equipment: 'Surgical Lights', price_per_hour: 12000, category: 'Urological Surgery', capacity: '2', user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684471983/development/0s8n5p8loui4jfpcpz1bpvuotk3j.jpg")
room = Room.new(name: 'Intensive Care Unit', facility_name: 'Nara General Hospital', address: 'Nara, Japan', equipment: 'Operating Table', price_per_hour: 18000, category: 'Ophthalmic Surgery', capacity: '5', user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684471980/development/skw7tqmmql1gk1kjisfiyes70scb.jpg")
room = Room.new(name: 'X-ray Room', facility_name: 'Akita Medical Clinic', address: 'Akita, Japan', equipment: 'Electrocautery Device', price_per_hour: 7000, category: 'General Surgery', capacity: '2', user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684471976/development/ei97zx63xlsvm3lnc1nwcg3k8bv8.jpg")
room = Room.new(name: 'Infusion Therapy Room', facility_name: 'Kanazawa Medical Center', address: 'Ishikawa, Japan', equipment: 'Anesthesia Machine', price_per_hour: 10000, category: 'Ophthalmic Surgery', capacity: '3', user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684471973/development/aayfktepwaqxg2gigs6k6yqulgqd.jpg")
room = Room.new(name: 'Orthopedic Operating Room', facility_name: 'Himeji Orthopedic Clinic', address: 'Hyogo, Japan', equipment: 'Operating Table', price_per_hour: 16000, category: 'Ophthalmic Surgery', capacity: '4', user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save
