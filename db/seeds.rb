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
Passport.destroy_all

# 2. Create the instances 🏗️
puts "Creating passports..."
Passport.create!(title: "Global Explorer", description: "Access to all countries for a year.", price: 1200.99)
puts "Created Global Explorer"

Passport.create!(title: "Regional Traveler", description: "Unlimited access to Europe for six months.", price: 600.50)
puts "Created Regional Traveler"

Passport.create!(title: "Local Adventurer", description: "Access to national parks for a month.", price: 100.00)
puts "Created Local Adventurer"

# 3. Display a message 🎉
puts "Finished! Created #{Passport.count} passports."
