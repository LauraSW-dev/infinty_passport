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

# 1. Clean the database 🗑️
puts "Cleaning database..."
Booking.destroy_all
User.destroy_all
Passport.destroy_all

# 3. Create users 👤
puts "Creating users..."
user1 = User.create!(email: "laura@example.com", password: "password")
user2 = User.create!(email: "revyll@example.com", password: "password")
user3 = User.create!(email: "mike@example.com", password: "password")
puts "Created #{User.count} users."
# 2. Create the passports 🏗️
# 2. Create the passports 🏗️
puts "Creating passports..."
passport1 = Passport.create!(title: "Global Explorer", description: "Access to all countries for a year.", price: 1200.99, user_id: user1.id)
puts "Created Global Explorer"

passport2 = Passport.create!(title: "Regional Traveler", description: "Unlimited access to Europe for six months.", price: 600.50, user_id: user2.id)
puts "Created Regional Traveler"

passport3 = Passport.create!(title: "Local Adventurer", description: "Access to national parks for a month.", price: 100.00, user_id: user3.id)
puts "Created Local Adventurer"

passport4 = Passport.create!(title: "Dora Explorer", description: "Access to all islands for a year.", price: 12000.99, user_id: user2.id)
puts "Created Dora Explorer"

passport5 = Passport.create!(title: "Kwaku The Traveler", description: "Unlimited access to America's for six months.", price: 600.50, user_id: user2.id)
puts "Created Kwaku The Traveler"

passport6 = Passport.create!(title: "Chill Guy Adventurer", description: "Access to water parks for a month.", price: 100.00, user_id: user2.id)
puts "Created Chill Guy Adventurer"



# 4. Create bookings with statuses 🏨
puts "Creating bookings..."
Booking.create!(user: user1, passport: passport1, status: "pending")
Booking.create!(user: user2, passport: passport2, status: "approved")
Booking.create!(user: user3, passport: passport3, status: "rejected")
puts "Created #{Booking.count} bookings."

# 5. Feedback 🎉
puts "Finished! Created #{Passport.count} passports, #{User.count} users, and #{Booking.count} bookings."
