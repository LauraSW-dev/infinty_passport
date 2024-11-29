# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

1. Clean the database 🗑️
puts "Cleaning database..."
Booking.destroy_all
User.destroy_all
Passport.destroy_all

# # 3. Create users 👤
# puts "Creating users..."
# user1 = User.create!(email: "laura@example.com", password: "password")
# user2 = User.create!(email: "revyll@example.com", password: "password")
# user3 = User.create!(email: "mike@example.com", password: "password")
# puts "Created #{User.count} users."

# # 2. Create the passports 🏗️
# puts "Creating passports..."
# passport1 = Passport.create!(title: "Global Explorer", description: "Access to all countries for a year.", address: "paris", price: 1200.99, user_id: user1.id)
# puts "Created Global Explorer"

# passport2 = Passport.create!(title: "Regional Traveler", description: "Unlimited access to Europe for six months.", address: "Dreux", price: 600.50, user_id: user2.id)
# puts "Created Regional Traveler"

# passport3 = Passport.create!(title: "Local Adventurer", description: "Access to national parks for a month.", address: "Orléans", price: 100.00, user_id: user3.id)
# puts "Created Local Adventurer"

# passport4 = Passport.create!(title: "Dora Explorer", description: "Access to all islands for a year.", address: "troyes", price: 12000.99, user_id: user2.id)
# puts "Created Dora Explorer"

# passport5 = Passport.create!(title: "Kwaku The Traveler", description: "Unlimited access to America's for six months.", address: "Rennes", price: 600.50, user_id: user2.id)
# puts "Created Kwaku The Traveler"

# passport6 = Passport.create!(title: "Chill Guy Adventurer", description: "Access to water parks for a month.", address: "Dijon", price: 100.00, user_id: user2.id)
# puts "Created Chill Guy Adventurer"



# # 4. Create bookings with statuses 🏨
# puts "Creating bookings..."
# Booking.create!(user: user1, passport: passport1, status: "pending")
# Booking.create!(user: user2, passport: passport2, status: "approved")
# Booking.create!(user: user3, passport: passport3, status: "rejected")
# puts "Created #{Booking.count} bookings."

# # 5. Feedback 🎉
# puts "Finished! Created #{Passport.count} passports, #{User.count} users, and #{Booking.count} bookings."



require "open-uri"

User.destroy_all
Passport.destroy_all
Booking.destroy_all

# 1. Create users
puts "Creating users..."
user1 = User.create!(email: "laura@gmaıl.com", password: "password")
user2 = User.create!(email: "revyll@gmaıl.com", password: "password")
user3 = User.create!(email: "mike@gmaıl.com", password: "password")
puts "Created #{User.count} users."

# 2. Create the passports
puts "Creating passports..."
# passport1 = Passport.new(title: "Global Explorer", description: "Access to all countries for a year.", address: "Paris", price: 1200.99, user: user1)
# file1 = URI.open("https://res.cloudinary.com/demo/image/upload/v1661930972/global_explorer.jpg")
# passport1.photo.attach(io: file1, filename: "global_explorer.jpg", content_type: "image/jpeg")
# passport1.save
# puts passport1.title

# passport2 = Passport.new(title: "Regional Traveler", description: "Unlimited access to Europe for six months.", address: "Dreux", price: 600.50, user: user2)
# file2 = URI.open("https://res.cloudinary.com/demo/image/upload/v1661930972/regional_traveler.jpg")
# passport2.photo.attach(io: file2, filename: "regional_traveler.jpg", content_type: "image/jpeg")
# passport2.save
# puts passport2.title

# passport3 = Passport.new(title: "Local Adventurer", description: "Access to national parks for a month.", address: "Orléans", price: 100.00, user: user3)
# file3 = URI.open("https://res.cloudinary.com/demo/image/upload/v1661930972/local_adventurer.jpg")
# passport3.photo.attach(io: file3, filename: "local_adventurer.jpg", content_type: "image/jpeg")
# passport3.save
# puts passport3.title

# passport4 = Passport.new(title: "Dora Explorer", description: "Access to all islands for a year.", address: "Troyes", price: 12000.99, user: user2)
# file4 = URI.open("https://res.cloudinary.com/demo/image/upload/v1661930972/dora_explorer.jpg")
# passport4.photo.attach(io: file4, filename: "dora_explorer.jpg", content_type: "image/jpeg")
# passport4.save
# puts passport4.title

# passport5 = Passport.new(title: "Kwaku The Traveler", description: "Unlimited access to America's for six months.", address: "Rennes", price: 600.50, user: user2)
# file5 = URI.open("https://res.cloudinary.com/demo/image/upload/v1661930972/kwaku_traveler.jpg")
# passport5.photo.attach(io: file5, filename: "kwaku_traveler.jpg", content_type: "image/jpeg")
# passport5.save
# puts passport5.title

# passport6 = Passport.new(title: "Chill Guy Adventurer", description: "Access to water parks for a month.", address: "Dijon", price: 100.00, user: user2)
# file6 = URI.open("https://res.cloudinary.com/demo/image/upload/v1661930972/chill_guy.jpg")
# passport6.photo.attach(io: file6, filename: "chill_guy.jpg", content_type: "image/jpeg")
# passport6.save
# puts passport6.title


file = URI.parse("https://avatars.mds.yandex.net/i?id=f2fe50db5550e279c280a9c9b187f6fee9608aa7-5876666-images-thumbs&n=13").open
passport1 = Passport.new(title: "Global Explorer", description: "Access to all countries for a year.", address: "paris", price: 1200.99, user_id: user1.id)
passport1.photos.attach(io: file, filename: "Global Explorer.jpg", content_type: "image/jpg")
passport1.save

file = URI.parse("https://exoticproperty.ru/wp-content/uploads/1440x1080_wonders-of-the-world.jpg").open
passport2 = Passport.new(title: "Regional Traveler", description: "Unlimited access to Europe for six months.", address: "Dreux", price: 600.50, user_id: user2.id)
passport2.photos.attach(io: file, filename: "Regional Traveler.jpg", content_type: "image/jpg")
passport2.save

file = URI.parse("https://i.pinimg.com/736x/c4/bc/04/c4bc040f6ba26af1bcb9a5beafa34ece.jpg").open
passport3 = Passport.new(title: "Local Adventurer", description: "Access to national parks for a month.", address: "Orléans", price: 100.00, user_id: user3.id)
passport3.photos.attach(io: file, filename: "Local Adventurer.jpg", content_type: "image/jpg")
passport3.save

file = URI.parse("https://i.pinimg.com/originals/5d/09/b9/5d09b9e24198a9be09a706a4d26008a7.jpg").open
passport4 = Passport.new(title: "Dora Explorer", description: "Access to all islands for a year.", address: "Troyes", price: 12000.99, user_id: user2.id)
passport4.photos.attach(io: file, filename: "Dora Explorer.jpg", content_type: "image/jpg")
passport4.save

file = URI.parse("https://wallpapers.com/images/hd/travel-and-tourism-n5eeffuxkd4ldglg.jpg").open
passport5 = Passport.new(title: "Kwaku The Traveler", description: "Unlimited access to America's for six months.", address: "Rennes", price: 600.50, user_id: user2.id)
passport5.photos.attach(io: file, filename: "Kwaku The Traveler.jpg", content_type: "image/jpg")
passport5.save

file = URI.parse("https://tripbeam.com/blog/wp-content/uploads/2015/09/Lost-Wonders-of-the-World-1-by-Fangfingers.jpg").open
passport6 = Passport.new(title: "Chill Guy Adventurer", description: "Access to water parks for a month.", address: "Dijon", price: 100.00, user_id: user2.id)
passport6.photos.attach(io: file, filename: "Chill Guy Adventurer.jpg", content_type: "image/jpg")
passport6.save

puts "Created #{Passport.count} passports."

# 3. Create bookings
puts "Creating bookings..."
Booking.create!(user: user1, passport: passport1, status: "pending")
Booking.create!(user: user2, passport: passport2, status: "approved")
Booking.create!(user: user3, passport: passport3, status: "rejected")
puts "Created #{Booking.count} bookings."

# 4. Feedback
puts "Finished! Created #{Passport.count} passports, #{User.count} users, and #{Booking.count} bookings."
