require 'faker'
require 'open-uri'

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

code = ["gmfk1y94fx3aeu6wtb5kxrk2o5z3", "ji332uif70g3a8p7mcemrwldsrrb","i7dssfgbjejtfoxvk9moymxnp97o", "o1jwx2m0uin2ax3soce0qrl1o0em", "hlskkag28z7qpj88eq064yhrj306", "015w4wziogbbkorw4crmk4gea00g", "wdlzqe16ajg3pglokmhiec83x6b1", "z0255lrc887kea4dnfmofuw3nycf", "qujwl0ouc7147v6r5na4esoqhzek", "qs3nomkp84rawm6zkw8gichd78v2", "x4ytbs8ervdbh1v4f3rp8ofi1wu9", "zkgp2wlyg8rpocew1pr2ob7i034k", "ot8tro1r7qquy6dtt0kkrs33j1li", "ec4198um2r9hm46q12od3qf23ccj", "zzijq35y65cbozz1d6strnrwf03u"]

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684464750/production/#{code[0]}.jpg")
room = Room.new(name: 'Cardiac Catheterization Lab', facility_name: 'Sunrise Medical Center', address: 'Tokyo, Japan', equipment: 'Operating Table', price_per_hour: 10000, category: 'Neurosurgery', capacity: 3, user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684464750/production/#{code[1]}.jpg")
room = Room.new(name: 'MRI Suite', facility_name: 'Asahi Hospital', address: 'Osaka, Japan', equipment: 'Operating Table', price_per_hour: 12000, category: 'General Surgery', capacity: 4, user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684464750/production/#{code[2]}.jpg")
room = Room.new(name: 'Operating Room', facility_name: 'Sakura Hospital', address: 'Kyoto, Japan', equipment: 'Operating Table', price_per_hour: 15000, category: 'Cardiothoracic Surgery', capacity: '5', user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684464750/production/#{code[3]}.jpg")
room = Room.new(name: 'Labor and Delivery Room', facility_name: 'Himawari Women’s Hospital', address: 'Fukuoka, Japan', equipment: 'Surgical Lights', price_per_hour: 8000, category: 'Cardiothoracic Surgery', capacity: '2', user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684464750/production/#{code[4]}.jpg")
room = Room.new(name: 'Endoscopy Suite', facility_name: 'Nakamura Digestive Clinic', address: 'Nagoya, Japan', equipment: 'Anesthesia Machine', price_per_hour: 11000, category: 'Cardiothoracic Surgery', capacity: '3', user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684464750/production/#{code[5]}.jpg")
room = Room.new(name: 'Radiation Therapy Room', facility_name: 'Mount Fuji Cancer Center', address: 'Yamanashi, Japan', equipment: 'Electrocautery Device', price_per_hour: 14000, category: 'Cardiothoracic Surgery', capacity: '4', user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684464750/production/#{code[6]}.jpg")
room = Room.new(name: 'Ultrasound Room', facility_name: 'Shinjuku Medical Clinic', address: 'Tokyo, Japan', equipment: 'Surgical Lights', price_per_hour: 7000, category: 'Urological Surgery', capacity: '2', user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684464750/production/#{code[7]}.jpg")
room = Room.new(name: 'Emergency Room', facility_name: 'Hiroshima Red Cross Hospital', address: 'Hiroshima, Japan', equipment: 'Operating Table', price_per_hour: 20000, category: 'Urological Surgery', capacity: '5', user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684464750/production/#{code[8]}.jpg")
room = Room.new(name: 'Physical Therapy Room', facility_name: 'Yokohama Rehabilitation Clinic', address: 'Kanagawa, Japan', equipment: 'Surgical Instruments', price_per_hour: 9000, category: 'Urological Surgery', capacity: '3', user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684464750/production/#{code[9]}.jpg")
room = Room.new(name: 'Sleep Study Room', facility_name: 'Sapporo Sleep Disorders Clinic', address: 'Hokkaido, Japan', equipment: 'Anesthesia Machine', price_per_hour: 8000, category: 'Ophthalmic Surgery', capacity: '1', user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684464750/production/#{code[10]}.jpg")
room = Room.new(name: 'Neonatal Intensive Care Unit', facility_name: 'Kobe Children’s Hospital', address: 'Hyogo, Japan', equipment: 'Surgical Lights', price_per_hour: 12000, category: 'Urological Surgery', capacity: '2', user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684464750/production/#{code[11]}.jpg")
room = Room.new(name: 'Intensive Care Unit', facility_name: 'Nara General Hospital', address: 'Nara, Japan', equipment: 'Operating Table', price_per_hour: 18000, category: 'Ophthalmic Surgery', capacity: '5', user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684464750/production/#{code[12]}.jpg")
room = Room.new(name: 'X-ray Room', facility_name: 'Akita Medical Clinic', address: 'Akita, Japan', equipment: 'Electrocautery Device', price_per_hour: 7000, category: 'General Surgery', capacity: '2', user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684464750/production/#{code[13]}.jpg")
room = Room.new(name: 'Infusion Therapy Room', facility_name: 'Kanazawa Medical Center', address: 'Ishikawa, Japan', equipment: 'Anesthesia Machine', price_per_hour: 10000, category: 'Ophthalmic Surgery', capacity: '3', user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save

file = URI.open("https://res.cloudinary.com/dqvkknmfo/image/upload/v1684464750/production/#{code[14]}.jpg")
room = Room.new(name: 'Orthopedic Operating Room', facility_name: 'Himeji Orthopedic Clinic', address: 'Hyogo, Japan', equipment: 'Operating Table', price_per_hour: 16000, category: 'Ophthalmic Surgery', capacity: '4', user: randosample)
room.photos.attach(io: file, filename: "nes.png", content_type: "image/jpg")
room.save
