# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# puts "Creating user 1"
# user_1 = User.new(email: "Visar@hotmail.com", password: "Visar123", name: "Visar")
# user_1.save!

# puts "Creating user 2"
# user_2 = User.new(email: "Jess@hotmail.com", password: "Jess123", name: "Jess")
# user_2.save!

# puts "Creating user 3"
# user_3 = User.new(email: "Alex@hotmail.com", password: "Alex123", name: "Alex")
# user_3.save!

puts "Creating restaurant 1"
restaurant_1 = Restaurant.new(name: "Ecem's Pizzarea", address: "Hoxton", cuisine_type: "Italian")
restaurant_1.save!

puts "Creating restaurant 2"
restaurant_2 = Restaurant.new(name: "Visar's Brewery", address: "Shoreditch", cuisine_type: "German")
restaurant_2.save!

puts "Creating restaurant 3"
restaurant_3 = Restaurant.new(name: "Alex's Snackbar", address: "Haggerston", cuisine_type: "Chinese")
restaurant_3.save!
