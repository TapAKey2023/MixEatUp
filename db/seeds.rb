# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)


puts "Creating user 1..."
user_1 = User.new(email: "Visar@hotmail.com", password: "Visar123", name: "Visar")
user_1.save!

puts "Creating user 2..."
user_2 = User.new(email: "Jess@hotmail.com", password: "Jess123", name: "Jess")
user_2.save!

puts "Creating user 3..."
user_3 = User.new(email: "Alex@hotmail.com", password: "Alex123", name: "Alex")
user_3.save!

nuts = [
  "positive", "negative"
]
wheat = [
  "positive", "negative"
]
lactose = [
  "positive", "negative"
]
vegetarian = [
  "positive", "negative"
]



# names = [
#           "Ecem's Pizzeria",
#           "Visar's Brewery",
#           "Alex's Snackbar",
#           "Claire's Gluten Free Bakery",
#           "Alessandra's Burger House",
#           "Take Me to Boston",
#           "Hong-Kong's Dim Sum",
#           "Turkish Delight",
#           "American Diner",
#           "Italiano",
#           "Sushi Sushi",
#           "Indian Palace",
#           "Mexican Fiesta",
#           "Justin's Chinese Takeaway",
#           "Leo's Japanese Ramen",
#           "Miriam's Cake Shop",

#         ]
# addresses = [
#               "Hoxton",
#               "Shoreditch",
#               "Camden",
#               "Haggerston",
#               "Dalston",
#               "Islington",
#               "Hackney",
#               "Angel",
#               "Old Street",
#               "Liverpool Street",
#               "Kings Cross",
#               "Holloway",
#               "Finsbury Park",
#               "Stratford",
#               "Walthamstow",
#               "Grays",
#               "Tilbury",
#               "Purfleet"
#             ]
# cuisine_types = [ "Italian",
#                   "American",
#                   "Mexican",
#                   "Chinese",
#                   "Japanese",
#                   "Indian",
#                   "Turkish",
#                   "British",
#                   "French",
#                   "Spanish",
#                   "Thai",
#                   "Vietnamese",
#                   "Korean",
#                   "Greek"
#                 ]
# phone_numbers = ["020 1234 5678", "020 8765 4321", "020 0987 6543"]
# chain_options = [true, false]
# budget_options = (10..200)
# opening_hours = ["12:00", "11:00", "10:00"]
# closing_hours = ["22:00", "23:00", "00:00"]
# meal_types = ["lunch", "dinner", "breakfast", "drinks"]
# latitudes = [51.527820, 51.539926, 51.551706]
# longitudes = [-0.081650, -0.102520, -0.123490]
# reasons = ["It's nice.", "Great atmosphere.", "Excellent service."]
# ratings = ["😄", "😐", "😡"]
# trendings = ["🔥", ""]
# instagrams = ["@STK_london", "@LunasDiner", "@RusticKitchen"]
# facebooks = ["STK London", "Luna's Diner", "The Rustic Kitchen"]
# resys = ['stk_london.resy.com', 'lunas_diner.resy.com', 'rustic_kitchen.resy.com']
# abouts = ["It's the best", "A wonderful experience", "Highly recommended"]
# location_details = ['The food is delicious.', 'A charming place.', 'Incredible ambiance.']
# other_occasions = ["family", "work", "friends","date"]

# 50.times do |i|
#   address = addresses.sample
#   restaurant = Restaurant.new(
#     name: "#{names.sample} in #{address}",
#     address: address,
#     cuisine_type: cuisine_types.sample,
#     phone_no: phone_numbers.sample,
#     chain: chain_options.sample,
#     budget: budget_options.to_a.sample(5),
#     opening_hour: opening_hours.sample,
#     closing_hour: closing_hours.sample,
#     meal_type: meal_types.sample,
#     latitude: latitudes.sample,
#     longitude: longitudes.sample,
#     reason: reasons.sample,
#     rating: ratings.sample,
#     trending: trendings.sample,
#     instagram: instagrams.sample,
#     facebook: facebooks.sample,
#     resy: resys.sample,
#     about: abouts.sample,
#     location_details: location_details.sample,
#     other_occasion: other_occasions.sample,
#     wheat: wheat.sample,
#     lactose: lactose.sample,
#     nuts: nuts.sample,
#     vegetarian: vegetarian.sample
#   )

#   restaurant.save!
#   # puts "Created restaurant #{i + 1}..."
# end

Restaurant_1 = Restaurant.create(
  name: "Fischer's",
  address: "Marylebone",
  cuisine_type: "Austrian",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [50, 60, 100, 20, 40],
  opening_hour: "07:30",
  closing_hour: "22:00",
  meal_type: "dinner",
  reason: "It's nice.",
  rating: ":smile:",
  trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "It's the best.",
  location_details: "The food is delicious.",
  other_occasion: "Date"
),



Restaurant_2 = Restaurant.create(
  name: "Sussex Bar & Restaurant ",
  address: "London",
  cuisine_type: "British",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [50, 40, 100, 32, 22],
  opening_hour: "12:00",
  closing_hour: "22:00",
  meal_type: "dinner",
  reason: "A place where family fun + master classes or fun + work can collide",
  rating: ":smile:",
  trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "The kitchen overlooking the dining room,  provides a theatrical hospitality area for the team to carve wellingtons, decant beautiful wines and display a British cheese board",
  location_details: "‘Located steps from the British Museum, National Gallery, St. James Park and countless other walkable adventures",
  other_occasion: "Date"
),

Restaurant_3 = Restaurant.create(
   name: "Zapote",
   address: "London",
   cuisine_type: "Mexican",
   chain: false,
   budget: [15, 25, 12, 26, 18],
   opening_hour: "12:00",
   closing_hour: "23:00",
   meal_type: "Lunch",
   reason: 'Mexican food with a twist',
   rating: ":smile:",
   about: "Our tortillas are made in-house using traditional methods and heritage corn. To bring the flavours of Mexico, fresh ingredients are used, with a wide variety of chillies and spices.",
   location_details: "Walkable to countless restaurants, theatrical venues and timeless nightlife in London",
   other_occasion: "Work",
   wheat: "no",
   lactose: "no",
   nuts: "no",
   vegetarian:"yes",
)



# Add more records as needed
# Restaurant.create(
#   name: "Another Restaurant",
#   address: "Another Location",
#   cuisine_type: "Another Cuisine",
#   ...
# )



# restaurant_1 = Restaurant.new(


#   # pic_url: "https://i0.wp.com/www.fischers.co.uk/app/app-uploads/2022/09/Fischers_Interior_01-1.jpg?ssl=1&w=2500&quality=85",




#   budget: "50",


#   reason: "It's nice.",
#   rating: ":smile:",
#   trending:":fire:",




# restaurant_1 = Restaurant.new(
#   name: names.sample,
#   address: addresses.sample,
#   cuisine_type: cuisine_types.sample,
#   phone_no: phone_numbers.sample,
#   chain: chain_options.sample,
#   budget: budget_options.to_a.sample(5),
#   opening_hour: opening_hours.sample,
#   closing_hour: closing_hours.sample,
#   meal_type: meal_types.sample,
#   latitude: latitudes.sample,
#   longitude: longitudes.sample,
#   reason: reasons.sample,
#   rating: ratings.sample,
#   trending: trendings.sample,
#   instagram: instagrams.sample,
#   facebook: facebooks.sample,
#   resy: resys.sample,
#   about: abouts.sample,
#   location_details: location_details.sample,
#   other_occasion: other_occasions.sample
# )

# restaurant_1.save!

# restaurant_2 = Restaurant.new(
#   name: names.sample,
#   address: addresses.sample,
#   cuisine_type: cuisine_types.sample,
#   phone_no: phone_numbers.sample,
#   chain: chain_options.sample,
#   budget: budget_options.to_a.sample(5),
#   opening_hour: opening_hours.sample,
#   closing_hour: closing_hours.sample,
#   meal_type: meal_types.sample,
#   latitude: latitudes.sample,
#   longitude: longitudes.sample,
#   reason: reasons.sample,
#   rating: ratings.sample,
#   trending: trendings.sample,
#   instagram: instagrams.sample,
#   facebook: facebooks.sample,
#   resy: resys.sample,
#   about: abouts.sample,
#   location_details: location_details.sample,
#   other_occasion: other_occasions.sample
# )

# restaurant_2.save!

# restaurant_3 = Restaurant.new(
#   name: names.sample,
#   address: addresses.sample,
#   cuisine_type: cuisine_types.sample,
#   phone_no: phone_numbers.sample,
#   chain: chain_options.sample,
#   budget: budget_options.to_a.sample(5),
#   opening_hour: opening_hours.sample,
#   closing_hour: closing_hours.sample,
#   meal_type: meal_types.sample,
#   latitude: latitudes.sample,
#   longitude: longitudes.sample,
#   reason: reasons.sample,
#   rating: ratings.sample,
#   trending: trendings.sample,
#   instagram: instagrams.sample,
#   facebook: facebooks.sample,
#   resy: resys.sample,
#   about: abouts.sample,
#   location_details: location_details.sample,
#   other_occasion: other_occasions.sample
# )

# restaurant_3.save!



# puts "Creating restaurant 2..."
# restaurant_2 = Restaurant.new(name: "Visar's Brewery", address: "Shoreditch", cuisine_type: "German", phone_no: "020 1234 5678", chain: false, budget: 10, opening_hour: "19:00", closing_hour: "3:00", meal_type: "Dinner")
# restaurant_2.save!

# puts "Creating restaurant 3..."
# restaurant_3 = Restaurant.new(name: "Alex's Snackbar", address: "Haggerston", cuisine_type: "Chinese", phone_no: "020 1234 5678", chain: false, budget: 50, opening_hour: "12:00", closing_hour: "22:00", meal_type: "Breakfast")
# restaurant_3.save!

# puts "Creating restaurant 4..."
# restaurant_4 = Restaurant.new(name: "Take Me to Boston", address: "London", cuisine_type: "American", phone_no: "020 1234 5678", chain: false, budget: 50, opening_hour: "12:00", closing_hour: "22:00", meal_type: "Breakfast")
# restaurant_4.save!




# name
# address
# cuisine_type
# phone_no
# chain
# budget (for front end: Price per person)
# opening_hour
# closing_hour
# meal_type
# latitude
# longitude
# reason (for front end: Why you’ll love it)
# rating (for front end: How others feel)
# trending (emoji)
# instagram
# facebook
# resy
# about (for front end: Why you’ll tell your friends about us tomorrow)
# location_details (for front end: The Why Behind our Restaurant Choice)
# other_occasion (for front end: why you should bookmark me for later)


# name:
# address:
# cuisine_type:
# phone_no:
# chain:
# budget:
# opening_hour:
# closing_hour:
# meal_type:
# latitude:
# longitude:
# reason:
# rating:
# trending:
# instagram:
# facebook:
# resy:
# about:
# location_details:
# other_occasion:
