# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)


puts "Creating user 1..."
user_1 = User.new(email: "Visar@hotmail.com", password: "Visar123", name: "Visar", age: 88, gender: "M", address: "Hoxton")
user_1.save!

puts "Creating user 2..."
user_2 = User.new(email: "Jess@hotmail.com", password: "Jess123", name: "Jess")
user_2.save!

puts "Creating user 3..."
user_3 = User.new(email: "Alex@hotmail.com", password: "Alex123", name: "Alex")
user_3.save!

# nuts = [
#   "positive", "negative"
# ]
# wheat = [
#   "positive", "negative"
# ]
# lactose = [
#   "positive", "negative"
# ]
# vegetarian = [
#   "positive", "negative"
# ]



# <<<<<<< first-task-after-demo
# # names = [
# #           "Ecem's Pizzeria",
# #           "Visar's Brewery",
# #           "Alex's Snackbar",
# #           "Claire's Gluten Free Bakery",
# #           "Alessandra's Burger House",
# #           "Take Me to Boston",
# #           "Hong-Kong's Dim Sum",
# #           "Turkish Delight",
# #           "American Diner",
# #           "Italiano",
# #           "Sushi Sushi",
# #           "Indian Palace",
# #           "Mexican Fiesta",
# #           "Justin's Chinese Takeaway",
# #           "Leo's Japanese Ramen",
# #           "Miriam's Cake Shop",
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
# other_occasions = ["romantic", "family", "friends","work"]

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
#   puts "Created restaurant #{i + 1}..."
# end

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
  budget: [50, 40, 100, 32, 22],
  opening_hour: "12:00",
  closing_hour: "23:00",
  meal_type: "dinner",
  reason: "To fill your farm to table heart",
  rating: ":smile:",
  trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "A relaxed, thoughtful & personal dining experience driven by a farm to table concept.",
  location_details: "Whether it's a stroll along the river or jazz concert, this restaurant is nested in the heart of East London.",
  other_occasion: "Date",
  pic_url: "https://media-cdn.tripadvisor.com/media/photo-s/1d/1c/1e/a3/pulpo-a-la-barbacoa.jpg"
  wheat: true,
  lactose: true,
  nuts: true,
  vegetarian: true
),

Restaurant_2 = Restaurant.create(
  name: "Santo Remedio",
  address: "London",
  cuisine_type: "Mexican",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [50, 40, 100, 32, 22],
  opening_hour: "12:00",
  closing_hour: "23:00",
  meal_type: "dinner",
  reason: "Your fav. marg. awaits you",
  rating: ":smile:",
  trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "The kitchen overlooking the dining room,  provides a theatrical hospitality area for the team to carve wellingtons, decant beautiful wines and display a British cheese board",
  location_details: "'Located steps from the British Museum, National Gallery, St. James Park and countless other walkable adventures",
  other_occasion: "Date",
  pic_url: "https://media-cdn.tripadvisor.com/media/photo-s/1d/1c/1e/a3/pulpo-a-la-barbacoa.jpg"

),

Restaurant_3 = Restaurant.create(
  name: "La Petite Ferme ",
  address: "London",
  cuisine_type: "French",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [50, 40, 100, 32, 22],
  opening_hour: "12:00",
  closing_hour: "23:00",
  meal_type: "dinner",
  reason: "Mexican food with a modern twist",
  rating: ":smile:",
  trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "Our tortillas are made in-house using traditional methods and heritage corn. To bring the flavours of Mexico, fresh ingredients are used, with a wide variety of chillies and spices",
  location_details: "'Walkable to countless restaurants, theatrical venues and timeless nightlife in London",
  other_occasion: "Date",
  wheat: true,
  lactose: true,
  nuts: true,
  vegetarian: true,
  pic_url: "https://static.wixstatic.com/media/47244f_7b409e77d2044acc8f783e0f42b91134~mv2.jpg/v1/fill/w_960,h_1317,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/47244f_7b409e77d2044acc8f783e0f42b91134~mv2.jpg"

),

Restaurant_4 = Restaurant.create(
  name: "Marcus Wareing",
  address: "London",
  cuisine_type: "French",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [50, 40, 100, 32, 22],
  opening_hour: "18:00",
  closing_hour: "23:00",
  meal_type: "dinner",
  reason: "We know you love a Michelin star",
  rating: ":smile:",
  trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "A  fine dining experience in a warm and welcoming dining room and sourcing some of the best seasonal ingredients",
  location_details: "'Whether it's a stroll around Victoria Park or walk along the river, we know this is a great spot for all occasions",
  other_occasion: "Date",
  wheat: true,
  lactose: true,
  nuts: true,
  vegetarian: true,
  pic_url: "https://cdn.sanity.io/images/h8dx0zzy/production/0fdcc1e9c99ba4feb54b874b40880cb7b62b507d-1146x1139.jpg?w=1080&q=90&auto=format"
),

Restaurant_5 = Restaurant.create(
  name: "Behind Restaurant",
  address: "London",
  cuisine_type: "Seafood",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [50, 40, 100, 32, 22],
  opening_hour: "12:00",
  closing_hour: "23:00",
  meal_type: "dinner",
  reason: "For an eccentric foodie",
  rating: ":smile:",
  trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "The service is as much a part of the meal as the food itself, which is why the entire menu IS served by us, the chef",
  location_details: "Whether it's a stroll around Victoria Park or walk along the river, we know this is a great spot for all occasions",
  other_occasion: "Date",
  wheat: true,
  lactose: true,
  nuts: true,
  vegetarian: true,
  pic_url: "https://static.wixstatic.com/media/20583c_2373efe6713746b3b99fc8e57ac25c06~mv2.jpg/v1/fill/w_894,h_761,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/20583c_2373efe6713746b3b99fc8e57ac25c06~mv2.jpg"
),

Restaurant_6 = Restaurant.create(
  name: "Nest",
  address: "London",
  cuisine_type: "European",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [50, 40, 100, 32, 22],
  opening_hour: "12:00",
  closing_hour: "23:00",
  meal_type: "dinner",
  reason: "To fill your farm to table heart",
  rating: ":smile:",
  trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "A relaxed, thoughtful & personal dining experience driven by a farm to table concept. ",
  location_details: "Whether it's a stroll along the river or jazz concert, this restaurant is nested in the heart of East London",
  other_occasion: "Date",
  wheat: true,
  lactose: true,
  nuts: true,
  vegetarian: true,
  pic_url: "https://media-cdn.tripadvisor.com/media/photo-s/1d/1c/1e/a3/pulpo-a-la-barbacoa.jpg"
),

Restaurant_7 = Restaurant.create(
  name: "Santo Remedio",
  address: "London",
  cuisine_type: "Mexican",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [50, 40, 100, 32, 22],
  opening_hour: "12:00",
  closing_hour: "23:00",
  meal_type: "dinner",
  reason: "Your fav. marg. awaits you",
  rating: ":smile:",
  trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "We opened Santo Remedio to share with Londoners how incredibly exciting the flavours of Mexico can be .",
  location_details: "Whether it's a stroll along the river or jazz concert, this restaurant is nested in the heart of East London",
  other_occasion: "Date",
  wheat: true,
  lactose: true,
  nuts: true,
  vegetarian: true,
  pic_url: "https://media-cdn.tripadvisor.com/media/photo-s/1d/1c/1e/a3/pulpo-a-la-barbacoa.jpg"
),

Restaurant_8 = Restaurant.create(
  name: "Negi & Nori",
  address: "London",
  cuisine_type: "Japanese",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [50, 40, 100, 32, 22],
  opening_hour: "12:00",
  closing_hour: "23:00",
  meal_type: "dinner",
  reason: "Your new fav. sushi spot",
  rating: ":smile:",
  trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "Our menu is a culinary journey that spans from traditional Japanese classics to innovative fusion dishes.",
  location_details: "A great first date spot, family dinner or client meeting with parks and theaters nearby",
  other_occasion: "Date",
  wheat: true,
  lactose: true,
  nuts: true,
  vegetarian: true,
  pic_url: "https://media-cdn.tripadvisor.com/media/photo-s/1d/1c/1e/a3/pulpo-a-la-barbacoa.jpg"

),

Restaurant_9 = Restaurant.create(
  name: "Americana London",
  address: "London",
  cuisine_type: "American",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [50, 40, 100, 32, 22],
  opening_hour: "12:00",
  closing_hour: "23:00",
  meal_type: "dinner",
  reason: "Hop the pond for dinner",
  rating: ":smile:",
  trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "We are passionate about serving classic Southern American food.",
  location_details: "Countless shops and bars surround this fun restaurant.",
  other_occasion: "Date",
  wheat: true,
  lactose: true,
  nuts: true,
  vegetarian: true,
  pic_url: "https://media-cdn.tripadvisor.com/media/photo-s/1d/1c/1e/a3/pulpo-a-la-barbacoa.jpg"

),

Restaurant_10 = Restaurant.create(
  name: "Laxeiro",
  address: "London",
  cuisine_type: "Spanish",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [50, 40, 100, 32, 22],
  opening_hour: "12:00",
  closing_hour: "23:00",
  meal_type: "dinner",
  reason: "Best patatas bravas in town",
  rating: ":smile:",
  trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "40 years on, East London is now a culinary destination and we are still proud as ever to serve our neighbourhood with delicious food and wines.",
  location_details: "Beautiful parks to lively event venues offer ample post-dinner enjoyments",
  other_occasion: "Date",
  wheat: true,
  lactose: true,
  nuts: true,
  vegetarian: true,
  pic_url: "https://media-cdn.tripadvisor.com/media/photo-s/1d/1c/1e/a3/pulpo-a-la-barbacoa.jpg"
)
Restaurant_11 = Restaurant.create(
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
  pic_url: "https://zapote.co.uk/wp-content/uploads/2023/01/Food-pics-06-1.jpg"
)

Restaurant_12 = Restaurant.create(
 name: "Caldesi",
 address: "London",
 cuisine_type: "Italian",
 phone_no: "020 1234 5678",
 chain: false,
 budget: [50, 40, 100, 32, 22],
 opening_hour: "12:00",
 closing_hour: "22:00",
 meal_type: "lunch",
 reason: "Amazing for a tasty bite for lunch",
 rating: ":smile:",
 trending: ":fire:",
 instagram: "@STK_london",
 facebook: "STK London",
 resy: 'stk_london.resy.com',
 about: "Providing the best of Italian cuisine",
 location_details: "Central so great for those busy work lunches",
 other_occasion: "Work",
 pic_url: "https://www.caldesi.com/wp-content/uploads/2021/10/marylbone-1.jpg"
)

 Restaurant_13 = Restaurant.create(
   name: "Aubaine",
   address: "London",
   cuisine_type: "British",
   phone_no: "020 1234 5678",
   chain: false,
   budget: [50, 40, 100, 32, 22],
   opening_hour: "12:00",
   closing_hour: "22:00",
   meal_type: "lunch",
   reason: "The best lunches on offer",
   rating: ":smile:",
   trending: ":fire:",
   instagram: "@STK_london",
   facebook: "STK London",
   resy: 'stk_london.resy.com',
   about: "Variety of choices for your lunch",
   location_details: "The location is fantastic, plenty to do",
   other_occasion: "Work",
   pic_url: "https://offloadmedia.feverup.com/secretldn.com/wp-content/uploads/2018/10/18120453/wisteria-covered-restaurant-selfridges-aubaine.jpg"
 )


   Restaurant_14 = Restaurant.create(
     name: "The Ivy Cafe",
     address: "London",
     cuisine_type: "British",
     phone_no: "020 1234 5678",
     chain: false,
     budget: [50, 40, 100, 32, 22],
     opening_hour: "12:00",
     closing_hour: "22:00",
     meal_type: "lunch",
     reason: "A special treat",
     rating: ":smile:",
     trending: ":fire:",
     instagram: "@STK_london",
     facebook: "STK London",
     resy: 'stk_london.resy.com',
     about: "Fantastic vibe and food!",
     location_details: "Great shops and fun bars nearby",
     other_occasion: "Work",
     pic_url: "https://cdn.squaremeal.co.uk/restaurants/10605/images/ivy-cafe-address_31012020045132.jpg?w=928&h=522&fit=crop&auto=format%2Ccompress"
   )

     Restaurant_15 = Restaurant.create(
       name: "Honest Burgers",
       address: "London",
       cuisine_type: "American",
       phone_no: "020 1234 5678",
       chain: false,
       budget: [50, 40, 100, 32, 22],
       opening_hour: "12:00",
       closing_hour: "22:00",
       meal_type: "lunch",
       reason: "Can't beat these flavours",
       rating: ":smile:",
       trending: ":fire:",
       instagram: "@STK_london",
       facebook: "STK London",
       resy: 'stk_london.resy.com',
       about: "The best burgers in London",
       location_details: "Buzzing nightlife around the area",
       other_occasion: "Work",
       pic_url: "https://www.honestburgers.co.uk/wp-content/uploads/2021/11/we-re-just-being-honest-really-great-burgers.jpg"
     )

       Restaurant_16 = Restaurant.create(
         name: "108 Brasserie",
         address: "London",
         cuisine_type: "European",
         phone_no: "020 1234 5678",
         chain: false,
         budget: [50, 40, 100, 32, 22],
         opening_hour: "12:00",
         closing_hour: "22:00",
         meal_type: "lunch",
         reason: "Wonderful, warm and thoroughly lovely",
         rating: ":smile:",
         trending: ":fire:",
         instagram: "@STK_london",
         facebook: "STK London",
         resy: 'stk_london.resy.com',
         about: "Service is fantastic, food even better",
         location_details: "Museums and parks nearby",
         other_occasion: "Work",
         pic_url: "https://www.doylecollection.com/var/doyle/storage/images/media/doyle-redesign/images/hotels/marylebone/club-bar-restaurant/the-salon/578129-3-eng-US/the-salon_rect719.jpg"
       )

         Restaurant_17 = Restaurant.create(
           name: "Twist Connubio",
           address: "London",
           cuisine_type: "Spanish",
           phone_no: "020 1234 5678",
           chain: false,
           budget: [50, 40, 100, 32, 22],
           opening_hour: "12:00",
           closing_hour: "22:00",
           meal_type: "lunch",
           reason: "Quick bite perfect for lunch",
           rating: ":smile:",
           trending: ":fire:",
           instagram: "@STK_london",
           facebook: "STK London",
           resy: 'stk_london.resy.com',
           about: "Brings a taste of Spain to London",
           location_details: "Surrounded by bars and different events",
           other_occasion: "Work",
           pic_url: "https://qul.imgix.net/9da98666-a6d8-445f-b354-be04a99c8565/531995_sld.jpg"
         )

          Restaurant_18 = Restaurant.create(
             name: "Hawksmoor",
             address: "London",
             cuisine_type: "American",
             phone_no: "020 1234 5678",
             chain: false,
             budget: [50, 40, 100, 32, 22],
             opening_hour: "12:00",
             closing_hour: "22:00",
             meal_type: "lunch",
             reason: "No one does steak like Hawksmoor",
             rating: ":smile:",
             trending: ":fire:",
             instagram: "@STK_london",
             facebook: "STK London",
             resy: 'stk_london.resy.com',
             about: "Tasty, filling food",
             location_details: "In the heart of London",
             other_occasion: "Work",
             pic_url: "https://www.hot-dinners.com/images/stories/blog/2023/hawksmoorsunday.jpg"
           )

            Restaurant_19 = Restaurant.create(
               name: "SushiSamba",
               address: "London",
               cuisine_type: "Japanese",
               phone_no: "020 1234 5678",
               chain: false,
               budget: [50, 40, 100, 32, 22],
               opening_hour: "12:00",
               closing_hour: "22:00",
               meal_type: "lunch",
               reason: "Perfect for a sushi lunch",
               rating: ":smile:",
               trending: ":fire:",
               instagram: "@STK_london",
               facebook: "STK London",
               resy: 'stk_london.resy.com',
               about: "Famous for the best sushi",
               location_details: "Incredible view on the 39th floor",
               other_occasion: "Work",
               pic_url: "https://1.bp.blogspot.com/-lZqxHvayV_s/YK1FlD_sy_I/AAAAAAAAOnI/Qh_fH7FpP-c0BzHj5oPVWZP8bl2aFwUCQCLcBGAsYHQ/s2048/sushi%2Bsamba%2Bfood.jpeg"
             )

             Restaurant_20 = Restaurant.create(
                 name: "Banh Mi Keu Deli Cityin ",
                 address: "London",
                 cuisine_type: "Vietnamese",
                 phone_no: "020 1234 5678",
                 chain: false,
                 budget: [50, 40, 100, 32, 22],
                 opening_hour: "12:00",
                 closing_hour: "22:00",
                 meal_type: "lunch",
                 reason: "Tasty quick choices",
                 rating: ":smile:",
                 trending: ":fire:",
                 instagram: "@STK_london",
                 facebook: "STK London",
                 resy: 'stk_london.resy.com',
                 about: "Perfect lunch spot in London",
                 location_details: "Lots to discover nearby",
                 other_occasion: "Work",
                 pic_url: "https://www.hot-dinners.com/images/stories/features/2020/sandwiches/keu2.jpg"
               )

# Restaurant_9 = Restaurant.create(
#   name: "Americana London",
#   address: "London",
#   cuisine_type: "American",
#   phone_no: "020 1234 5678",
#   chain: false,
#   budget: [50, 40, 100, 32, 22],
#   opening_hour: "12:00",
#   closing_hour: "23:00",
#   meal_type: "dinner",
#   reason: "Hop the pond for dinner",
#   rating: ":smile:",
#   trending: ":fire:",
#   instagram: "@STK_london",
#   facebook: "STK London",
#   resy: 'stk_london.resy.com',
#   about: "We are passionate about serving classic Southern American food.",
#   location_details: "Countless shops and bars surround this fun restaurant.",
#   other_occasion: "Date",
#   wheat: true,
#   lactose: true,
#   nuts: true,
#   vegetarian: true
# ),

# Restaurant_10 = Restaurant.create(
#   name: "Laxeiro",
#   address: "London",
#   cuisine_type: "Spanish",
#   phone_no: "020 1234 5678",
#   chain: false,
#   budget: [50, 40, 100, 32, 22],
#   opening_hour: "12:00",
#   closing_hour: "23:00",
#   meal_type: "dinner",
#   reason: "Best patatas bravas in town",
#   rating: ":smile:",
#   trending: ":fire:",
#   instagram: "@STK_london",
#   facebook: "STK London",
#   resy: 'stk_london.resy.com',
#   about: "40 years on, East London is now a culinary destination and we are still proud as ever to serve our neighbourhood with delicious food and wines.",
#   location_details: "Beautiful parks to lively event venues offer ample post-dinner enjoyments",
#   other_occasion: "Date",
#   wheat: true,
#   lactose: true,
#   nuts: true,
#   vegetarian: true
# ),
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




# high_price = (60..200).to_a.sample(5)
# low_price = (10..59).to_a.sample(5)

# puts "Creating restaurant 1..."
# restaurant_1 = Restaurant.new(
#   address: "Marylebone",
#   name: "Fischer's ",
#   pic_url: "https://i0.wp.com/www.fischers.co.uk/app/app-uploads/2022/09/Fischers_Interior_01-1.jpg?ssl=1&w=2500&quality=85",
#   cuisine_type: "Austrian",
#   phone_no: "020 1234 5678",
#   chain: false,
#   budget: high_price,
#   opening_hour: "07:30",
#   closing_hour: "22:00",
#   meal_type: "breakfast",
#   reason: "It's nice.",
#   rating: "😄",
#   trending:"🔥",
#   about: "It's the best.",
#   location_details: "The food is delicious.",
#   other_occasion: "Family",
#   wheat: "positive",
#   lactose: "positive",
#   nuts: "positive",
#   vegetarian:  "positive"

# )
# restaurant_1.save!

# restaurant_2 = Restaurant.new(
#   name: "Orrery",
#   address: "Marylebone",
#   pic_url: "https://www.orrery-restaurant.co.uk/wp-content/uploads/sites/16/2018/02/Orrery-rest28470_HDR_edit-627x418.jpg",
#   cuisine_type: "French",
#   phone_no: "020 1234 5678",
#   chain: false,
#   budget: high_price,
#   opening_hour: "07:30",
#   closing_hour: "22:00",
#   meal_type: "breakfast",
#   reason: "It's nice.",
#   rating: "😄",
#   trending:"🔥",
#   instagram: "@STK_london",
#   facebook: "STK London",
#   resy: 'stk_london.resy.com',
#   about: "It's the best.",
#   location_details: 'The food is delicious.',
#   other_occasion: "Family",
#   wheat: "positive",
#   lactose: "positive",
#   nuts: "positive",
#   vegetarian:  "positive"
# )
# restaurant_2.save!

# restaurant_3 = Restaurant.new(
# name: "Caldesi In Marylebone in #{address}",
# address: "Marylebone"
# pic_url: "https://marylebonevillage.hdwecdn.co.uk/images/stories/flexicontent/item_1083_field_53/original/caldesi-xt1024.webp",
# cuisine_type: "Italian",
# phone_no: "020 1234 5678",
# chain: false,
# budget: high_price,
# opening_hour: "12:00",
# closing_hour: "22:00",
# meal_type: "breakfast"
# reason: "It's nice.",
# rating: "😄",
# trending:"🔥",
# instagram: "@STK_london",
# facebook: "STK London",
# resy: 'stk_london.resy.com',
# about: "It's the best.",
# location_details: 'The food is delicious.',
# other_occasion: "Family",
# wheat: "positive",
# lactose: "positive",
# nuts: "positive",
# vegetarian:  "positive"
# )

# restaurant_3.save!

# restaurant_4 = Restaurant.new(
#    name: "Aubaine Marylebone in #{address}",
#    address: "Marylebone",
#    pic_url: "https://resizer.otstatic.com/v2/photos/wide-huge/3/49203234.jpg",
#    cuisine_type: "British",
#    phone_no: "020 1234 5678",
#    chain: false,
#    budget: low_price,
#    opening_hour: "08:00",
#    closing_hour: "00:00",
#    meal_type: "breakfast",
#    reason: "It's nice.",
#    rating: "😄",
#    trending:"🔥",
#    instagram: "@STK_london",
#    facebook: "STK London",
#    resy: 'stk_london.resy.com',
#    about: "It's the best.",
#    location_details: 'The food is delicious.',
#    other_occasion: "Family",
#    wheat: "positive",
#    lactose: "positive",
#    nuts: "positive",
#    vegetarian:  "positive"
# )

# restaurant_4.save!

# restaurant_5 = Restaurant.new(
#    name: "The Ivy Cafe Marylebone",
#    address: "Marylebone",
#    pic_url: "https://cdn.squaremeal.co.uk/restaurants/10605/images/ivy-cafe-marylebone-adress_31012020045118.jpg?w=928&h=522&fit=crop&auto=format%2Ccompress",
#    cuisine_type: "British",
#   phone_no: "020 1234 5678",
#    chain: false,
#    budget: low_price,
#    opening_hour: "08:00",
#    closing_hour: "00:00",
#    meal_type: "breakfast",
#    reason: "It's nice.",
#    rating: "😄",
#    trending:"🔥",
#   instagram: "@STK_london",
#    facebook: "STK London",
#    resy: 'stk_london.resy.com',
#    about: "It's the best.",
#    location_details: 'The food is delicious.',
#    other_occasion: "Family",
#    wheat: "positive",
#    lactose: "positive",
#    nuts: "negative",
#    vegetarian:  "negative"
# )

# restaurant_5.save!

# restaurant_6 = Restaurant.new(
# name: "Honest Burgers in #{address}",
# address: "Baker Street"
# pic_url: "https://www.honestburgers.co.uk/wp-content/uploads/2018/07/plant-page-2.jpg"
# cuisine_type: "American",
#   phone_no: "020 1234 5678",
# chain: true,
# budget: low_price,
# opening_hour: "08:00",
# closing_hour: "00:00",
# meal_type: "breakfast",
# reason: "It's nice.",
# rating: "😄",
# trending:"🔥",
# instagram: "@STK_london",
# facebook: "STK London",
# resy: 'stk_london.resy.com',
# about: "It's the best.",
# location_details: 'The food is delicious.',
# other_occasion: "Family",
# wheat: "negative",
# lactose: "negative",
# nuts: "positive",
# vegetarian:  "positive"
# )
# restaurant_6.save!

# restaurant_7 = Restaurant.new(
#    name: "108 Brasserie in #{address}",
#    address: “Marylebone”
#    pic_url: “https://lh5.googleusercontent.com/p/AF1QipP3QzxLqfuBYpknAjX5XySMMDSexTuM_UY4_nZ1=w408-h306-k-no”
#    cuisine_type: “European”,
#     phone_no: “020 1234 5678”,
#    chain: false,
#    budget: high_price,
#    opening_hour: “08:00”,
#    closing_hour: “00:00”,
#    meal_type: "lunch",
#    reason: "It's nice.",
#    rating: "😄",
#    trending:"🔥”,
#   instagram: "@STK_london",
#    facebook: "STK London",
#    resy: 'stk_london.resy.com',
#    about: "It's the best.",
#    location_details: 'The food is delicious.',
#    other_occasion: "Family",
#    wheat: “positive”,
#    lactose: “negative”,
#    nuts: “negative”,
#    vegetarian:  “positive”
# )

# restaurant_7.save!

# restaurant_8 = Restaurant.new(
#    name: "Twist Connubio in #{address}",
#    address: “Crawford”
#    pic_url: “https://lh5.googleusercontent.com/p/AF1QipOMFmLw6Wl0985FLwar443rO6-7dTVmwMWx_xfE=w408-h306-k-no”
#    cuisine_type: “Spanish”,
#     phone_no: “020 1234 5678”,
#    chain: false,
#    budget: high_price,
#    opening_hour: “08:00”,
#    closing_hour: “00:00”,
#    meal_type: "lunch",
#    reason: "It's nice.",
#    rating: "😄",
#    trending:"🔥”,
#   instagram: "@STK_london",
#    facebook: "STK London",
#    resy: 'stk_london.resy.com',
#    about: "It's the best.",
#    location_details: 'The food is delicious.',
#    other_occasion: "Family",
#    wheat: “positive”,
#    lactose: “negative”,
#    nuts: “negative”,
#    vegetarian:  “positive”
# )

# restaurant_8.save!

# restaurant_9 = Restaurant.new(
#    name: "Goodman City in #{address}",
#    address: “Old Jewry”
#    pic_url: “https://lh5.googleusercontent.com/p/AF1QipObs_6CCt2GtZdDizUPtUMPVH8ipuzx-VNT1OU7=w408-h272-k-no”
#    cuisine_type: “American”,
#     phone_no: “020 1234 5678”,
#    chain: false,
#    budget: high_price,
#    opening_hour: “12:00”,
#    closing_hour: “22:30”,
#    meal_type: "lunch",
#    reason: "It's nice.",
#    rating: "😄",
#    trending:"🔥”,
#   instagram: "@STK_london",
#    facebook: "STK London",
#    resy: 'stk_london.resy.com',
#    about: "It's the best.",
#    location_details: 'The food is delicious.',
#    other_occasion: "Family",
#    wheat: “positive”,
#    lactose: “negative”,
#    nuts: “negative”,
#    vegetarian:  “positive”
# )

# restaurant_9.save!

# restaurant_10 = Restaurant.new(
#    name: "M Threadneedle Street in #{address}",
#    address: “Threadneedle St”
#    pic_url: “https://lh5.googleusercontent.com/p/AF1QipNULBMdEgoeiV6OWGz6Ikv8ZHn6HB5U5QrD6T8A=w408-h272-k-no”
#    cuisine_type: “American”,
#     phone_no: “020 1234 5678”,
#    chain: false,
#    budget: high_price,
#    opening_hour: “07:00”,
#    closing_hour: “23:00”,
#    meal_type: "lunch",
#    reason: "It's nice.",
#    rating: "😄",
#    trending:"🔥”,
#   instagram: "@STK_london",
#    facebook: "STK London",
#    resy: 'stk_london.resy.com',
#    about: "It's the best.",
#    location_details: 'The food is delicious.',
#    other_occasion: "Family",
#    wheat: “positive”,
#    lactose: “negative”,
#    nuts: “negative”,
#    vegetarian:  “positive”
# )

# restaurant_10.save!

# restaurant_11 = Restaurant.new(
#    name: "Hawksmoor Guildhall in #{address}",
#    address: “Basinghall St”
#    pic_url: “https://lh5.googleusercontent.com/p/AF1QipO3Oh75XWfqZhKzDH2PZTu-KgZjO3Wu3JTWLnvp=w408-h271-k-no”
#    cuisine_type: “American”,
#     phone_no: “020 1234 5678”,
#    chain: false,
#    budget: high_price,
#    opening_hour: “12:00”,
#    closing_hour: “22:30”,
#    meal_type: "lunch",
#    reason: "It's nice.",
#    rating: "😄",
#    trending:"🔥”,
#   instagram: "@STK_london",
#    facebook: "STK London",
#    resy: 'stk_london.resy.com',
#    about: "It's the best.",
#    location_details: 'The food is delicious.',
#    other_occasion: "Family",
#    wheat: “positive”,
#    lactose: “negative”,
#    nuts: “negative”,
#    vegetarian:  “positive”
# )

# restaurant_11.save!


# restaurant_12 = Restaurant.new(
#    name: "SUSHISAMBA London in #{address}",
#    address: “Bishopsgate”
#    pic_url: “https://media-cdn.tripadvisor.com/media/photo-s/13/d7/e4/54/sushisamba-dining-room.jpg”
#    cuisine_type: “Japanese”,
#     phone_no: “020 1234 5678”,
#    chain: false,
#    budget: high_price,
#    opening_hour: “12:00”,
#    closing_hour: “23:30”,
#    meal_type: "lunch",
#    reason: "It's nice.",
#    rating: "😄",
#    trending:"🔥”,
#   instagram: "@STK_london",
#    facebook: "STK London",
#    resy: 'stk_london.resy.com',
#    about: "It's the best.",
#    location_details: 'The food is delicious.',
#    other_occasion: "Family",
#    wheat: “positive”,
#    lactose: “negative”,
#    nuts: “negative”,
#    vegetarian:  “positive”
# )

# restaurant_12.save!

# restaurant_13 = Restaurant.new(
#    name: "City Càphê in #{address}",
#    address: “Ironmonger Ln”
#    pic_url: “https://lh5.googleusercontent.com/p/AF1QipP5xiBamw04E02fLabDlszmNlPEWXYpsC_rA-F_=w408-h544-k-no”
#    cuisine_type: “Vietnamese”,
#     phone_no: “020 1234 5678”,
#    chain: false,
#    budget: low_price,
#    opening_hour: “12:00”,
#    closing_hour: “23:30”,
#    meal_type: "lunch",
#    reason: "It's nice.",
#    rating: "😄",
#    trending:"🔥”,
#   instagram: "@STK_london",
#    facebook: "STK London",
#    resy: 'stk_london.resy.com',
#    about: "It's the best.",
#    location_details: 'The food is delicious.',
#    other_occasion: "Family",
#    wheat: “positive”,
#    lactose: “negative”,
#    nuts: “negative”,
#    vegetarian:  “positive”
# )

# restaurant_13.save!

# restaurant_14 = Restaurant.new(
#    name: “Banh Mi Keu Deli Cityin #{address}",
#    address: “London Wall”
#    pic_url: “https://lh5.googleusercontent.com/p/AF1QipMgTnXqe2c5wJHRmXkrNAEwGJLAZKKWznI-ySpU=w408-h306-k-no”
#    cuisine_type: “Vietnamese”,
#     phone_no: “020 1234 5678”,
#    chain: false,
#    budget: low_price,
#    opening_hour: “10:00”,
#    closing_hour: “15:00”,
#    meal_type: "lunch",
#    reason: "It's nice.",
#    rating: "😄",
#    trending:"🔥”,
#   instagram: "@STK_london",
#    facebook: "STK London",
#    resy: 'stk_london.resy.com',
#    about: "It's the best.",
#    location_details: 'The food is delicious.',
#    other_occasion: "Family",
#    wheat: “positive”,
#    lactose: “negative”,
#    nuts: “negative”,
#    vegetarian:  “positive”
# )

# restaurant_14.save!

# restaurant_15 = Restaurant.new(
#    name: “Blacklock City #{address}",
#    address: “Philpot Ln”
#    pic_url: “https://lh5.googleusercontent.com/p/AF1QipNyEZOU4DVrR5JgBcdyYfk9pwNJnQpjT1iszZ8i=w408-h272-k-no”
#    cuisine_type: “American”,
#     phone_no: “020 1234 5678”,
#    chain: true,
#    budget: low_price,
#    opening_hour: “11:45”,
#    closing_hour: “22:30”,
#    meal_type: "lunch",
#    reason: "It's nice.",
#    rating: "😄",
#    trending:"🔥”,
#   instagram: "@STK_london",
#    facebook: "STK London",
#    resy: 'stk_london.resy.com',
#    about: "It's the best.",
#    location_details: 'The food is delicious.',
#    other_occasion: "Family",
#    wheat: “positive”,
#    lactose: “negative”,
#    nuts: “negative”,
#    vegetarian:  “positive”
# )

# restaurant_15.save!

# restaurant_16 = Restaurant.new(
#    name: “Blacklock City #{address}",
#    address: “Philpot Ln”
#    pic_url: “https://lh5.googleusercontent.com/p/AF1QipNyEZOU4DVrR5JgBcdyYfk9pwNJnQpjT1iszZ8i=w408-h272-k-no”
#    cuisine_type: “American”,
#     phone_no: “020 1234 5678”,
#    chain: true,
#    budget: low_price,
#    opening_hour: “11:45”,
#    closing_hour: “22:30”,
#    meal_type: "lunch",
#    reason: "It's nice.",
#    rating: "😄",
#    trending:"🔥”,
#   instagram: "@STK_london",
#    facebook: "STK London",
#    resy: 'stk_london.resy.com',
#    about: "It's the best.",
#    location_details: 'The food is delicious.',
#    other_occasion: "Family",
#    wheat: “positive”,
#    lactose: “negative”,
#    nuts: “negative”,
#    vegetarian:  “positive”
# )

# restaurant_16.save!

# restaurant_17 = Restaurant.new(
#    name: “Blacklock City #{address}",
#    address: “Philpot Ln”
#    pic_url: “https://lh5.googleusercontent.com/p/AF1QipNyEZOU4DVrR5JgBcdyYfk9pwNJnQpjT1iszZ8i=w408-h272-k-no”
#    cuisine_type: “American”,
#     phone_no: “020 1234 5678”,
#    chain: true,
#    budget: low_price,
#    opening_hour: “11:45”,
#    closing_hour: “22:30”,
#    meal_type: "lunch",
#    reason: "It's nice.",
#    rating: "😄",
#    trending:"🔥”,
#   instagram: "@STK_london",
#    facebook: "STK London",
#    resy: 'stk_london.resy.com',
#    about: "It's the best.",
#    location_details: 'The food is delicious.',
#    other_occasion: "Family",
#    wheat: “positive”,
#    lactose: “negative”,
#    nuts: “negative”,
#    vegetarian:  “positive”
# )

# restaurant_17.save!

# restaurant_18
# restaurant = Restaurant.new(
#    name: "Route Dalston in #{address}",
#    address: Dalston
#    cuisine_type: Mediteranian
#    phone_no: 020 1234 5678 ,
#    chain: false
#    budget: 15,
#    opening_hour: “8:00”,
#    closing_hour: “18:00”,
#    meal_type: "lunch", "breakfast",
#    reason: "A homey vibe",
#    rating: "😄",
#    trending:,
#   /instagram: "@STK_london",
#    facebook: "STK London",
#    resy: 'stk_london.resy.com',
#    about: "Our family’s home away from home, invites you to join us in our urban-chic bistro with exposed brick",
#    location_details: ‘Great location to bring the family or grab a drink at the wine bar next door',
#    other_occasion: “Friends” “family”, “work”
#    wheat: Negative,
#    lactose:  Positive
#    nuts: Negative,
# vegetarian:  Positive

# restaurant_18.save!

# restaurant_19
# restaurant = Restaurant.new(
#    name: Mildreds Dalston #{address}",
#    address: Dalston
#    cuisine_type: “Vegan”
#    phone_no: 020 1234 5678 ,
#    chain: false
#    budget: 9,
#    opening_hour: “11:00”,
#    closing_hour: “23:00”,
#    meal_type: "lunch", "dinner”
#    reason: "Your chic oasis in East London",
#    rating: "😄",
#    trending:"🔥”
#   /instagram: "@STK_london",
#    facebook: "STK London",
#    resy: 'stk_london.resy.com',
#    about: " An airy, light-filled space with all-vegetarian menu, modern 60s design, & yellow interior details",
#    location_details: ‘Easy location to meet friends from all parts of London and thrift shopping”
#    other_occasion: “Friends”, “Work”, “Romantic”
#    wheat: Positive,
#    lactose:  Positive
#    nuts: Positive,
# vegetarian:  Positive

# restaurant_19.save!

#  restaurant_20
# restaurant = Restaurant.new(
#    name: Monalicious #{address}",
#    address: Dalston
#    cuisine_type: Australian
#    phone_no: 020 1234 5678 ,
#    chain: false
#    budget: 12,
#    opening_hour: “9:00”,
#    closing_hour: “16:00”,
#    meal_type: “breakfast”, "lunch"
#    reason: "Your chic oasis in East London",
#    rating: "😄",
#    trending:
#   /instagram: "@STK_london",
#    facebook: "STK London",
#    resy: 'stk_london.resy.com',
#    about: "Bringing a piece of Australia to East London",
#    location_details: ‘A quick step from the river, local farmers market and park”
#    other_occasion: “Friends”, “Family”,
#    wheat: Positive,
#    lactose:  Positive
#    nuts: Positive,
# vegetarian:  Positive

# restaurant_20.save!

# restaurant_21
# restaurant = Restaurant.new(
#    name: The Breakfast Club Hoxton #{address}",
#    address: Hoxton
#    cuisine_type: Breakfast
#    phone_no: 020 1234 5678 ,
#    chain: True
#    budget: 15,
#    opening_hour: “8:00”,
#    closing_hour: “23:00”,
#    meal_type: "lunch", "dinner”
#    reason: "Comfort foods in a quirky, cheerful surrounding”
#    rating: "😄",
#    trending:"🔥”
#   /instagram: "@STK_london",
#    facebook: "STK London",
#    resy: 'stk_london.resy.com',
#    about: " Located in what is formerly known as the skinny jean capital of the world. We founded the Breakfast club as a place we would take our friends for home-cooked food”
#    location_details: ‘A quick walk from the Barbican and Smithfield Market, with ease of access by public transit”
#    other_occasion: “Romantic”, “Friends”, “Work”, “Romantic”
#    wheat: Positive,
#    lactose:  Positive
#    nuts: Positive,
# vegetarian:  Positive

# restaurant_21.save!

# restaurant_22
# restaurant = Restaurant.new(
#    name: The Breakfast Club Hoxton #{address}",
#    address: Hoxton
#    cuisine_type: Breakfast
#    phone_no: 020 1234 5678 ,
#    chain: True
#    budget: 15,
#    opening_hour: “8:00”,
#    closing_hour: “23:00”,
#    meal_type: "lunch", "dinner”
#    reason: "Comfort foods in a quirky, cheerful surrounding”
#    rating: "😄",
#    trending:"🔥”
#   /instagram: "@STK_london",
#    facebook: "STK London",
#    resy: 'stk_london.resy.com',
#    about: " Located in what is formerly known as the skinny jean capital of the world. We founded the Breakfast club as a place we would take our friends for home-cooked food”
#    location_details: ‘A quick walk from the Barbican and Smithfield Market, with ease of access by public transit”
#    other_occasion: “Romantic”, “Friends”, “Work”, “Romantic”
#    wheat: Positive,
#    lactose:  Positive
#    nuts: Positive,
# vegetarian:  Positive

# restaurant_22.save!

# restaurant_23
# restaurant = Restaurant.new(
#    name: Behind Restaurant #{address}",
#    address: Hackney
#    cuisine_type: Lunch, Dinner
#    phone_no: 020 1234 5678 ,
#    chain: false
#    budget: 120,
#    opening_hour: “12:00”,
#    closing_hour: “23:00”,
#    meal_type: "lunch", "dinner”
#    reason: "We know you’re secretly an eccentric foodie looking for a vibe”
#    rating: "😄",
#    trending:"🔥”
#   /instagram: "@STK_london",
#    facebook: "STK London",
#    resy: 'stk_london.resy.com',
#    about: " The service is as much a part of the meal as the food itself, which is why the entire menu IS served by us, the chefs.”
#    location_details: ‘Whether it’s a stroll around Victoria Park or walk along the river, we know this is a great spot for all occasions ”
#    other_occasion: “Romantic”, “Friends”, “Work”,
#    wheat: Positive,
#    lactose:  N
#    nuts: Negative,
# vegetarian:  Positive

# restaurant_23.save!

# restaurant_24
# restaurant = Restaurant.new(
#    name: Behind Restaurant #{address}",
# img:https://static.wixstatic.com/media/20583c_2373efe6713746b3b99fc8e57ac25c06~mv2.jpg/v1/fill/w_894,h_761,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/20583c_2373efe6713746b3b99fc8e57ac25c06~mv2.jpg
#    address: Hackney
#    cuisine_type: Seafood
#    phone_no: 020 1234 5678 ,
#    chain: false
#    budget: 120,
#    opening_hour: “12:00”,
#    closing_hour: “23:00”,
#    meal_type: "lunch", "dinner”
#    reason: "We know your secretly an eccentric foodie looking for a vibe”
#    rating: "😄",
#    trending:"🔥”
#   /instagram: "@STK_london",
#    facebook: "STK London",
#    resy: 'stk_london.resy.com',
#    about: " The service is as much a part of the meal as the food itself, which is why the entire menu IS served by us, the chefs.”
#    location_details: ‘Whether it’s a stroll around Victoria Park or walk along the river, we know this is a great spot for all occasions ”
#    other_occasion: “Romantic”, “Friends”, “Work”,
#    wheat: Positive,
#    lactose:  N
#    nuts: Negative,
# vegetarian:  Positive

# restaurant_24.save!

# restaurant_25 = Restaurant.new(
#    name: Marcus Wareing #{address}",
# Img:https://cdn.sanity.io/images/h8dx0zzy/production/0fdcc1e9c99ba4feb54b874b40880cb7b62b507d-1146x1139.jpg?w=1080&q=90&auto=format
#    address: London
#    cuisine_type: French
#    phone_no: 020 1234 5678 ,
#    chain: false
#    budget: 90,
#    opening_hour: “18:00”,
#    closing_hour: “22:00”,
#    meal_type: Dinner
#    reason: “Where world’s join: A Tourist + Local”
#    rating: "4" ,
#   /instagram: "@STK_london",
#    facebook: "STK London",
#    resy: 'stk_london.resy.com',
#    about: "A  fine dining experience in a warm and welcoming dining room and sourcing some of the best seasonal ingredients”
#    location_details: ‘Whether it’s a stroll around Victoria Park or walk along the river, we know this is a great spot for all occasions ”
#    other_occasion: “Romantic”, “Friends”, “Work”,
#    wheat: Positive,
#    lactose:  N
#    nuts: Negative,
# vegetarian:  Positive

# restaurant_26 = Restaurant.new(
#    name: Sussex Bar & Restaurant #{address}",
# Img:https://www.sussex-restaurant.com/img/main-slider/sussex-slide-1-min.webp
#    address: London
#    cuisine_type:  British
#    phone_no: 020 1234 5678 ,
#    chain: false
#    budget: 40 - 80
#    opening_hour: “12:00”,
#    closing_hour: “22:00”,
#    meal_type: “Lunch”, "dinner”
#    reason: “A place where family fun + master classes or fun + work can collide”
#    rating: "5" ,
#   /instagram: "@STK_london",
#    facebook: "STK London",
#    resy: 'stk_london.resy.com',
#    about: "The kitchen overlooking the dining room,  provides a theatrical hospitality area for the team to carve wellingtons, decant beautiful wines and display a British cheese board.”
#    location_details: ‘Located steps from the British Museum, National Gallery, St. James Park and countless other walkable adventures ”
#    other_occasion: “Romantic”, “Friends”, “Work”, “Family”
#    wheat: Positive,
#    lactose:  Yes
#    nuts: YES
# vegetarian:  Positive

# restaurant_27 = Restaurant.new(
#    name: Zapote #{address}",
# Img:https://zapote.co.uk/wp-content/uploads/2023/01/Food-pics-05-1.jpg
# address: London
#    cuisine_type:  Mexican
#    phone_no: 020 1234 5678 ,
#    chain: false
#    budget: 18
#    opening_hour: “12:00”,
#    closing_hour: “23:00”,
#    meal_type: “Lunch”, "dinner”
#    reason: “Mexican food with a modern twist”
#    rating: "5" ,
#   /instagram: "@STK_london",
#    facebook: "STK London",
#    resy: 'stk_london.resy.com',
#    about: "Our tortillas are made in-house using traditional methods and heritage corn. To bring the flavours of Mexico, fresh ingredients are used, with a wide variety of chillies and spices.”
#    location_details: ‘Walkable to countless restaurants, theatrical venues and timeless nightlife in London”
#    other_occasion: “Romantic”, “Friends”, “Work”
#    wheat: Positive,
#    lactose:  Yes
#    nuts: YES
# vegetarian:  Positive

# restaurant_28 = Restaurant.new(
#    name: Zapote #{address}",
# Img:https://zapote.co.uk/wp-content/uploads/2023/01/Food-pics-05-1.jpg
# address: London
#    cuisine_type:  Mexican
#    phone_no: 020 1234 5678 ,
#    chain: false
#    budget: 18
#    opening_hour: “12:00”,
#    closing_hour: “23:00”,
#    meal_type: “Lunch”, "dinner”
#    reason: “Mexican food with a modern twist”
#    rating: "5" ,
#   /instagram: "@STK_london",
#    facebook: "STK London",
#    resy: 'stk_london.resy.com',
#    about: "Our tortillas are made in-house using traditional methods and heritage corn. To bring the flavours of Mexico, fresh ingredients are used, with a wide variety of chillies and spices.”
#    location_details: ‘Walkable to countless restaurants, theatrical venues and timeless nightlife in London”
#    other_occasion: “Romantic”, “Friends”, “Work”
#    wheat: Positive,
#    lactose:  Yes
#    nuts: YES
# vegetarian:  Positive









# restaurant_29 = Restaurant.new(
#    name: La Petite Ferme",
# Img:https://static.wixstatic.com/media/47244f_7b409e77d2044acc8f783e0f42b91134~mv2.jpg/v1/fill/w_960,h_1317,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/47244f_7b409e77d2044acc8f783e0f42b91134~mv2.jpg
# address: London
#    cuisine_type:  French
#    phone_no: 020 1234 5678 ,
#    chain: false
#    budget: 23
#    opening_hour: “12:00”,
#    closing_hour: “23:00”,
#    meal_type: “Lunch”, "dinner”
#    reason: “Mexican food with a modern twist”
#    rating: "5" ,
#   /instagram: "@STK_london",
#    facebook: "STK London",
#    resy: 'stk_london.resy.com',
#    about: "Our tortillas are made in-house using traditional methods and heritage corn. To bring the flavours of Mexico, fresh ingredients are used, with a wide variety of chillies and spices.”
#    location_details: ‘Walkable to countless restaurants, theatrical venues and timeless nightlife in London”
#    other_occasion: “Romantic”, “Friends”, “Work”
#    wheat: Positive,
#    lactose:  Yes
#    nuts: YES
# vegetarian:  Positive























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
#   puts "Created restaurant #{i + 1}..."
# end




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
