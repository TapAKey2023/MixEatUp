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
restaurant_1 = Restaurant.new(name: "Ecem's Pizzeria", address: "Hoxton", cuisine_type: "Italian", phone_no: "020 1234 5678", chain: false, budget: "100", opening_hour: "12:00", closing_hour: "22:00", meal_type: "Lunch")
restaurant_1.save!

puts "Creating restaurant 2"
restaurant_2 = Restaurant.new(name: "Visar's Brewery", address: "Shoreditch", cuisine_type: "German", phone_no: "020 1234 5678", chain: false, budget: "10", opening_hour: "19:00", closing_hour: "3:00", meal_type: "Dinner")
restaurant_2.save!

puts "Creating restaurant 3"
restaurant_3 = Restaurant.new(name: "Alex's Snackbar", address: "Haggerston", cuisine_type: "Chinese", phone_no: "020 1234 5678", chain: false, budget: "50", opening_hour: "12:00", closing_hour: "22:00", meal_type: "Breakfast")
restaurant_3.save!


# t.string "name"
# t.string "address"
# t.string "cuisine_type"
# t.string "phone_no"
# t.boolean "chain", default: false
# t.string "budget", default: [], array: true
# t.time "opening_hour"
# t.time "closing_hour"
# t.string "meal_type"
# t.float "latitude"
# t.float "longitude"
# t.datetime "created_at", null: false
# t.datetime "updated_at", null: false
