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

restaurant_1 = Restaurant.create(
  name: "Fischer's",
  address: "Marylebone",
  cuisine_type: "Austrian",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [50, 40, 100, 32, 22],
  opening_hour: "12:00",
  closing_hour: "23:00",
  meal_type: "dinner",
  reason: "We know you've been dying to travel",
  # rating: ":smile:",
  # trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "Neighbourhood restaurant inspired by the grand cafés of Vienna.",
  location_details: "We know sometimes it's fun to play tourist in London. Walkable to multiple museums, parks, and music venues.",
  other_occasion: "Date",
  pic_url: "https://media-cdn.tripadvisor.com/media/photo-s/1d/1c/1e/a3/pulpo-a-la-barbacoa.jpg",
  wheat: true,
  lactose: true,
  nuts: true,
  vegetarian: true
)
puts "Created restaurant 1..."

restaurant_2 = Restaurant.create(
  name: "Sussex Bar & Restaurant",
  address: "London",
  cuisine_type: "British",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [90, 80, 100, 35, 27],
  opening_hour: "12:00",
  closing_hour: "23:00",
  meal_type: "dinner",
  reason: "Date night fun!",
  # rating: ":smile:",
  # trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "The kitchen overlooking the dining room, provides a theatrical hospitality area for the team to carve wellingtons, decant beautiful wines and display a British cheese board",
  location_details: "'Located steps from the British Museum, National Gallery, St. James Park and countless other walkable adventures",
  other_occasion: "Date",
  pic_url: "https://media-cdn.tripadvisor.com/media/photo-s/1d/1c/1e/a3/pulpo-a-la-barbacoa.jpg",
  wheat: true,
  lactose: true,
  nuts: true,
  vegetarian: true
)
puts "Created restaurant 2..."

restaurant_3 = Restaurant.create(
  name: "La Petite Ferme ",
  address: "London",
  cuisine_type: "French",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [50, 40, 100, 32, 22],
  opening_hour: "12:00",
  closing_hour: "23:00",
  meal_type: "dinner",
  reason: "We know you miss France",
  # rating: ":smile:",
  # trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "We are all about fresh and seasonal produce, sourced as locally as possibly around Britain & France",
  location_details: "'Walkable to countless restaurants, theatrical venues and timeless nightlife in London",
  other_occasion: "Date",
  wheat: true,
  lactose: true,
  nuts: true,
  vegetarian: true,
  pic_url: "https://static.wixstatic.com/media/47244f_7b409e77d2044acc8f783e0f42b91134~mv2.jpg/v1/fill/w_960,h_1317,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/47244f_7b409e77d2044acc8f783e0f42b91134~mv2.jpg"

)
puts "Created restaurant 3..."

restaurant_4 = Restaurant.create(
  name: "Marcus Wareing",
  address: "London",
  cuisine_type: "French",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [85, 99, 101, 82, 90],
  opening_hour: "18:00",
  closing_hour: "23:00",
  meal_type: "dinner",
  reason: "We know you love a Michelin star",
  # rating: ":smile:",
  # trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "A  fine dining experience in a warm and welcoming dining room and sourcing some of the best seasonal ingredients.",
  location_details: "'Whether it's a stroll around Victoria Park or walk along the river, we know this is a great spot for all occasions.",
  other_occasion: "Date",
  wheat: true,
  lactose: true,
  nuts: true,
  vegetarian: true,
  pic_url: "https://cdn.sanity.io/images/h8dx0zzy/production/0fdcc1e9c99ba4feb54b874b40880cb7b62b507d-1146x1139.jpg?w=1080&q=90&auto=format"
)
puts "Created restaurant 4..."


restaurant_5 = Restaurant.create(
  name: "Behind Restaurant",
  address: "London",
  cuisine_type: "Seafood",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [75, 102, 92, 89, 77],
  opening_hour: "12:00",
  closing_hour: "23:00",
  meal_type: "dinner",
  reason: "For an eccentric foodie",
  # rating: ":smile:",
  # trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "The service is as much a part of the meal as the food itself, which is why the entire menu IS served by us, the chef.",
  location_details: "Whether it's a stroll around Victoria Park or walk along the river, we know this is a great spot for all occasions.",
  other_occasion: "Date",
  wheat: true,
  lactose: true,
  nuts: true,
  vegetarian: true,
  pic_url: "https://static.wixstatic.com/media/20583c_2373efe6713746b3b99fc8e57ac25c06~mv2.jpg/v1/fill/w_894,h_761,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/20583c_2373efe6713746b3b99fc8e57ac25c06~mv2.jpg"
)
puts "Created restaurant 5..."

restaurant_6 = Restaurant.create(
  name: "Nest",
  address: "London",
  cuisine_type: "European",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [65, 85, 105, 92, 82],
  opening_hour: "12:00",
  closing_hour: "23:00",
  meal_type: "dinner",
  reason: "To fill your farm to table heart",
  # rating: ":smile:",
  # trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "A relaxed, thoughtful & personal dining experience driven by a farm to table concept. ",
  location_details: "Whether it's a stroll along the river or jazz concert, this restaurant is nested in the heart of East London.",
  other_occasion: "Date",
  wheat: true,
  lactose: true,
  nuts: true,
  vegetarian: true,
  pic_url: "https://images.squarespace-cdn.com/content/v1/58a5d83ee3df287d211f0a9f/5ba8f9ea-3432-4fc8-ac01-265d74c4c358/DSCF0073.jpg?format=2500w"

)
puts "Created restaurant 6..."

restaurant_7 = Restaurant.create(
  name: "Santo Remedio",
  address: "London",
  cuisine_type: "Mexican",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [65, 45, 75, 34, 29],
  opening_hour: "12:00",
  closing_hour: "23:00",
  meal_type: "dinner",
  reason: "Your fav. marg. awaits you",
  # rating: ":smile:",
  # trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "We opened Santo Remedio to share with Londoners how incredibly exciting the flavours of Mexico can be.",
  location_details: "Whether it's a stroll along the river or jazz concert, this restaurant is nested in the heart of East London.",
  other_occasion: "Date",
  wheat: true,
  lactose: true,
  nuts: true,
  vegetarian: true,
  pic_url: "https://static.wixstatic.com/media/d71369_01f3b532cb7f44b08a3428db6154c301~mv2.jpg/v1/fill/w_560,h_428,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/brunch2.jpg"
)
puts "Created restaurant 7..."

restaurant_8 = Restaurant.create(
  name: "Cube",
  address: "London",
  cuisine_type: "Japanese",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [85, 89, 84, 82, 40],
  opening_hour: "12:00",
  closing_hour: "23:00",
  meal_type: "dinner",
  reason: "Your new fav. sushi spot",
  # rating: ":smile:",
  # trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "Traditional Japanese dishes come with a European twist, with a hideaway bar.",
  location_details: "A great first date spot or client meeting with parks & theaters nearby.",
  other_occasion: "Date",
  wheat: true,
  lactose: true,
  nuts: true,
  vegetarian: true,
  pic_url: "https://resizer.otstatic.com/v2/photos/wide-huge/2/50353334.jpg"
)
puts "Created restaurant 8..."

restaurant_9 = Restaurant.create(
  name: "Americana London",
  address: "London",
  cuisine_type: "American",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [35, 40, 45, 50, 25],
  opening_hour: "12:00",
  closing_hour: "23:00",
  meal_type: "dinner",
  reason: "Hop the pond for dinner.",
  # rating: ":smile:",
  # trending: ":fire:",
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
  pic_url: "https://c.files.bbci.co.uk/12396/production/_116864647__b5t5223.jpg"
)
puts "Created restaurant 9..."

restaurant_10 = Restaurant.create(
  name: "Laxeiro",
  address: "London",
  cuisine_type: "Spanish",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [75, 77, 45, 65, 70],
  opening_hour: "12:00",
  closing_hour: "23:00",
  meal_type: "dinner",
  reason: "Best patatas bravas in town.",
  # rating: ":smile:",
  # trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "40 years on, East London is now a culinary destination & we love serving our neighbourhood with delicious food and wines.",
  location_details: "Beautiful parks to lively event venues offer ample post-dinner enjoyments.",
  other_occasion: "Date",
  wheat: true,
  lactose: true,
  nuts: true,
  vegetarian: true,
  pic_url: "https://media-cdn.tripadvisor.com/media/photo-s/1d/1c/1e/a3/pulpo-a-la-barbacoa.jpg"
)
puts "Created restaurant 10..."

restaurant_11 = Restaurant.create(
  name: "Zapote",
  address: "London",
  cuisine_type: "Mexican",
  chain: false,
  budget: [15, 25, 12, 26, 18],
  opening_hour: "12:00",
  closing_hour: "23:00",
  meal_type: "Lunch",
  reason: 'Mexican food with a twist',
  about: "Our tortillas are made in-house using traditional methods and heritage corn. To bring the flavours of Mexico, fresh ingredients are used, with a wide variety of chillies and spices.",
  location_details: "Walkable to countless restaurants, theatrical venues and timeless nightlife in London",
  other_occasion: "Work",
  #  rating: ":smile:",
#  trending: ":fire:",
  wheat: true,
  lactose: true,
  nuts: true,
  vegetarian: true,
  pic_url: "https://zapote.co.uk/wp-content/uploads/2023/01/Food-pics-06-1.jpg"
)
puts "Created restaurant 11..."

restaurant_12 = Restaurant.create(
 name: "Caldesi",
 address: "London",
 cuisine_type: "Italian",
 phone_no: "020 1234 5678",
 chain: false,
 budget: [12, 29, 15, 13, 19],
 opening_hour: "12:00",
 closing_hour: "22:00",
 meal_type: "lunch",
 reason: "Amazing for a tasty bite for lunch",
#  rating: ":smile:",
#  trending: ":fire:",
 instagram: "@STK_london",
 facebook: "STK London",
 resy: 'stk_london.resy.com',
 about: "Providing the best of Italian cuisine",
 location_details: "Central so great for those busy work lunches",
 other_occasion: "Work",
 pic_url: "https://www.caldesi.com/wp-content/uploads/2021/10/marylbone-1.jpg",
 wheat: true,
  lactose: true,
  nuts: true,
  vegetarian: true
)
puts "Created restaurant 12..."

restaurant_13 = Restaurant.create(
  name: "Aubaine",
  address: "London",
  cuisine_type: "British",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [18, 25, 16, 19, 21],
  opening_hour: "12:00",
  closing_hour: "22:00",
  meal_type: "lunch",
  reason: "The best lunches on offer",
  # rating: ":smile:",
  # trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "Variety of choices for your lunch",
  location_details: "The location is fantastic, plenty to do",
  other_occasion: "Work",
  pic_url: "https://offloadmedia.feverup.com/secretldn.com/wp-content/uploads/2018/10/18120453/wisteria-covered-restaurant-selfridges-aubaine.jpg",
  wheat: true,
  lactose: true,
  nuts: true,
  vegetarian: true
)
puts "Created restaurant 13..."


restaurant_14 = Restaurant.create(
  name: "The Ivy Cafe",
  address: "London",
  cuisine_type: "British",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [18, 23, 26, 15, 17],
  opening_hour: "12:00",
  closing_hour: "22:00",
  meal_type: "lunch",
  reason: "A special treat",
  # rating: ":smile:",
  # trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "Fantastic vibe and food!",
  location_details: "Great shops and fun bars nearby",
  other_occasion: "Work",
  pic_url: "https://cdn.squaremeal.co.uk/restaurants/10605/images/ivy-cafe-address_31012020045132.jpg?w=928&h=522&fit=crop&auto=format%2Ccompress",
  wheat: true,
  lactose: true,
  nuts: true,
  vegetarian: true
)
puts "Created restaurant 14..."

restaurant_15 = Restaurant.create(
  name: "Honest Burgers",
  address: "London",
  cuisine_type: "American",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [17, 24, 20, 16, 18],
  opening_hour: "12:00",
  closing_hour: "22:00",
  meal_type: "lunch",
  reason: "Can't beat these flavours",
  # rating: ":smile:",
  # trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "The best burgers in London",
  location_details: "Buzzing nightlife around the area",
  other_occasion: "Work",
  pic_url: "https://www.honestburgers.co.uk/wp-content/uploads/2021/11/we-re-just-being-honest-really-great-burgers.jpg",
  wheat: true,
  lactose: true,
  nuts: true,
  vegetarian: true
)
puts "Created restaurant 15..."

restaurant_16 = Restaurant.create(
  name: "108 Brasserie",
  address: "London",
  cuisine_type: "European",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [18, 25, 21, 17, 12],
  opening_hour: "12:00",
  closing_hour: "22:00",
  meal_type: "lunch",
  reason: "Wonderful, warm and thoroughly lovely",
  # rating: ":smile:",
  # trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "Service is fantastic, food even better",
  location_details: "Museums and parks nearby",
  other_occasion: "Work",
  pic_url: "https://www.doylecollection.com/var/doyle/storage/images/media/doyle-redesign/images/hotels/marylebone/club-bar-restaurant/the-salon/578129-3-eng-US/the-salon_rect719.jpg",
  wheat: true,
  lactose: true,
  nuts: true,
  vegetarian: true
)
puts "Created restaurant 16..."


restaurant_17 = Restaurant.create(
  name: "Twist Connubio",
  address: "London",
  cuisine_type: "Spanish",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [15, 17, 19, 21, 17],
  opening_hour: "12:00",
  closing_hour: "22:00",
  meal_type: "lunch",
  reason: "Quick bite perfect for lunch",
  # rating: ":smile:",
  # trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "Brings a taste of Spain to London",
  location_details: "Surrounded by bars and different events",
  other_occasion: "Work",
  pic_url: "https://qul.imgix.net/9da98666-a6d8-445f-b354-be04a99c8565/531995_sld.jpg",
  wheat: true,
  lactose: true,
  nuts: true,
  vegetarian: true
)
puts "Created restaurant 17..."

restaurant_18 = Restaurant.create(
  name: "Hawksmoor",
  address: "London",
  cuisine_type: "American",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [15, 18, 19, 21, 12],
  opening_hour: "12:00",
  closing_hour: "22:00",
  meal_type: "lunch",
  reason: "No one does steak like Hawksmoor",
  # rating: ":smile:",
  # trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "Tasty, filling food",
  location_details: "In the heart of London",
  other_occasion: "Work",
  pic_url: "https://www.hot-dinners.com/images/stories/blog/2023/hawksmoorsunday.jpg",
  wheat: true,
  lactose: true,
  nuts: true,
  vegetarian: true
)
puts "Created restaurant 18..."

restaurant_19 = Restaurant.create(
  name: "SushiSamba",
  address: "London",
  cuisine_type: "Japanese",
  phone_no: "020 1234 5678",
  chain: false,
  budget: [15, 18, 19, 21, 13],
  opening_hour: "12:00",
  closing_hour: "22:00",
  meal_type: "lunch",
  reason: "Perfect for a sushi lunch",
  # rating: ":smile:",
  # trending: ":fire:",
  instagram: "@STK_london",
  facebook: "STK London",
  resy: 'stk_london.resy.com',
  about: "Famous for the best sushi",
  location_details: "Incredible view on the 39th floor",
  other_occasion: "Work",
  pic_url: "https://1.bp.blogspot.com/-lZqxHvayV_s/YK1FlD_sy_I/AAAAAAAAOnI/Qh_fH7FpP-c0BzHj5oPVWZP8bl2aFwUCQCLcBGAsYHQ/s2048/sushi%2Bsamba%2Bfood.jpeg",
  wheat: true,
  lactose: true,
  nuts: true,
  vegetarian: true
)
puts "Created restaurant 19..."

restaurant_20 = Restaurant.create(
    name: "Banh Mi Keu Deli Cityin ",
    address: "London",
    cuisine_type: "Vietnamese",
    phone_no: "020 1234 5678",
    chain: false,
    budget: [19, 20, 19, 20, 19],
    opening_hour: "12:00",
    closing_hour: "22:00",
    meal_type: "lunch",
    reason: "Tasty quick choices",
    # rating: ":smile:",
    # trending: ":fire:",
    instagram: "@STK_london",
    facebook: "STK London",
    resy: 'stk_london.resy.com',
    about: "Perfect lunch spot in London",
    location_details: "Lots to discover nearby",
    other_occasion: "Work",
    pic_url: "https://www.hot-dinners.com/images/stories/features/2020/sandwiches/keu2.jpg",
    wheat: true,
    lactose: true,
    nuts: true,
    vegetarian: true
)
puts "Created restaurant 20..."










































# restaurants_1 = Restaurant.create(
#   name: "Fischer's",
#   address: "Marylebone",
#   cuisine_type: "Austrian",
#   phone_no: "020 1234 5678",
#   chain: false,
#   budget: [50, 40, 100, 32, 22],
#   opening_hour: "12:00",
#   closing_hour: "23:00",
#   meal_type: "dinner",
#   reason: "To fill your farm to table heart",
#   rating: ":smile:",
#   trending: ":fire:",
#   instagram: "@STK_london",
#   facebook: "STK London",
#   resy: 'stk_london.resy.com',
#   about: "A relaxed, thoughtful & personal dining experience driven by a farm to table concept.",
#   location_details: "Whether it's a stroll along the river or jazz concert, this restaurant is nested in the heart of East London.",
#   other_occasion: "Date",
#   pic_url: "https://media-cdn.tripadvisor.com/media/photo-s/1d/1c/1e/a3/pulpo-a-la-barbacoa.jpg",
#   wheat: true,
#   lactose: true,
#   nuts: true,
#   vegetarian: true
# )
# puts "Created restaurant 1..."

# restaurants_2 = Restaurant.create(
#   name: "Santo Remedio",
#   address: "London",
#   cuisine_type: "Mexican",
#   phone_no: "020 1234 5678",
#   chain: false,
#   budget: [50, 40, 100, 32, 22],
#   opening_hour: "12:00",
#   closing_hour: "23:00",
#   meal_type: "dinner",
#   reason: "Your fav. marg. awaits you",
#   rating: ":smile:",
#   trending: ":fire:",
#   instagram: "@STK_london",
#   facebook: "STK London",
#   resy: 'stk_london.resy.com',
#   about: "The kitchen overlooking the dining room,  provides a theatrical hospitality area for the team to carve wellingtons, decant beautiful wines and display a British cheese board",
#   location_details: "'Located steps from the British Museum, National Gallery, St. James Park and countless other walkable adventures",
#   other_occasion: "Date",
#   pic_url: "https://media-cdn.tripadvisor.com/media/photo-s/1d/1c/1e/a3/pulpo-a-la-barbacoa.jpg",
#   wheat: true,
#   lactose: true,
#   nuts: true,
#   vegetarian: true
# )
# puts "Created restaurant 2..."

# restaurants_3 = Restaurant.create(
#   name: "La Petite Ferme ",
#   address: "London",
#   cuisine_type: "French",
#   phone_no: "020 1234 5678",
#   chain: false,
#   budget: [50, 40, 100, 32, 22],
#   opening_hour: "12:00",
#   closing_hour: "23:00",
#   meal_type: "dinner",
#   reason: "Mexican food with a modern twist",
#   rating: ":smile:",
#   trending: ":fire:",
#   instagram: "@STK_london",
#   facebook: "STK London",
#   resy: 'stk_london.resy.com',
#   about: "Our tortillas are made in-house using traditional methods and heritage corn. To bring the flavours of Mexico, fresh ingredients are used, with a wide variety of chillies and spices",
#   location_details: "'Walkable to countless restaurants, theatrical venues and timeless nightlife in London",
#   other_occasion: "Date",
#   wheat: true,
#   lactose: true,
#   nuts: true,
#   vegetarian: true,
#   pic_url: "https://static.wixstatic.com/media/47244f_7b409e77d2044acc8f783e0f42b91134~mv2.jpg/v1/fill/w_960,h_1317,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/47244f_7b409e77d2044acc8f783e0f42b91134~mv2.jpg"

# )
# puts "Created restaurant 3..."

# restaurant_4 = Restaurant.create(
#   name: "Marcus Wareing",
#   address: "London",
#   cuisine_type: "French",
#   phone_no: "020 1234 5678",
#   chain: false,
#   budget: [50, 40, 100, 32, 22],
#   opening_hour: "18:00",
#   closing_hour: "23:00",
#   meal_type: "dinner",
#   reason: "We know you love a Michelin star",
#   rating: ":smile:",
#   trending: ":fire:",
#   instagram: "@STK_london",
#   facebook: "STK London",
#   resy: 'stk_london.resy.com',
#   about: "A  fine dining experience in a warm and welcoming dining room and sourcing some of the best seasonal ingredients",
#   location_details: "'Whether it's a stroll around Victoria Park or walk along the river, we know this is a great spot for all occasions",
#   other_occasion: "Date",
#   wheat: true,
#   lactose: true,
#   nuts: true,
#   vegetarian: true,
#   pic_url: "https://cdn.sanity.io/images/h8dx0zzy/production/0fdcc1e9c99ba4feb54b874b40880cb7b62b507d-1146x1139.jpg?w=1080&q=90&auto=format"
# )
# puts "Created restaurant 4..."


# restaurant_5 = Restaurant.create(
#   name: "Behind Restaurant",
#   address: "London",
#   cuisine_type: "Seafood",
#   phone_no: "020 1234 5678",
#   chain: false,
#   budget: [50, 40, 100, 32, 22],
#   opening_hour: "12:00",
#   closing_hour: "23:00",
#   meal_type: "dinner",
#   reason: "For an eccentric foodie",
#   rating: ":smile:",
#   trending: ":fire:",
#   instagram: "@STK_london",
#   facebook: "STK London",
#   resy: 'stk_london.resy.com',
#   about: "The service is as much a part of the meal as the food itself, which is why the entire menu IS served by us, the chef",
#   location_details: "Whether it's a stroll around Victoria Park or walk along the river, we know this is a great spot for all occasions",
#   other_occasion: "Date",
#   wheat: true,
#   lactose: true,
#   nuts: true,
#   vegetarian: true,
#   pic_url: "https://static.wixstatic.com/media/20583c_2373efe6713746b3b99fc8e57ac25c06~mv2.jpg/v1/fill/w_894,h_761,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/20583c_2373efe6713746b3b99fc8e57ac25c06~mv2.jpg"
# )
# puts "Created restaurant 5..."

# restaurant_6 = Restaurant.create(
#   name: "Nest",
#   address: "London",
#   cuisine_type: "European",
#   phone_no: "020 1234 5678",
#   chain: false,
#   budget: [50, 40, 100, 32, 22],
#   opening_hour: "12:00",
#   closing_hour: "23:00",
#   meal_type: "dinner",
#   reason: "To fill your farm to table heart",
#   rating: ":smile:",
#   trending: ":fire:",
#   instagram: "@STK_london",
#   facebook: "STK London",
#   resy: 'stk_london.resy.com',
#   about: "A relaxed, thoughtful & personal dining experience driven by a farm to table concept. ",
#   location_details: "Whether it's a stroll along the river or jazz concert, this restaurant is nested in the heart of East London",
#   other_occasion: "Date",
#   wheat: true,
#   lactose: true,
#   nuts: true,
#   vegetarian: true,
#   pic_url: "https://media-cdn.tripadvisor.com/media/photo-s/1d/1c/1e/a3/pulpo-a-la-barbacoa.jpg"

# )
# puts "Created restaurant 6..."

# restaurant_7 = Restaurant.create(
#   name: "Santo Remedio",
#   address: "London",
#   cuisine_type: "Mexican",
#   phone_no: "020 1234 5678",
#   chain: false,
#   budget: [50, 40, 100, 32, 22],
#   opening_hour: "12:00",
#   closing_hour: "23:00",
#   meal_type: "dinner",
#   reason: "Your fav. marg. awaits you",
#   rating: ":smile:",
#   trending: ":fire:",
#   instagram: "@STK_london",
#   facebook: "STK London",
#   resy: 'stk_london.resy.com',
#   about: "We opened Santo Remedio to share with Londoners how incredibly exciting the flavours of Mexico can be .",
#   location_details: "Whether it's a stroll along the river or jazz concert, this restaurant is nested in the heart of East London",
#   other_occasion: "Date",
#   wheat: true,
#   lactose: true,
#   nuts: true,
#   vegetarian: true,
#   pic_url: "https://media-cdn.tripadvisor.com/media/photo-s/1d/1c/1e/a3/pulpo-a-la-barbacoa.jpg"
# )
# puts "Created restaurant 7..."

# restaurant_8 = Restaurant.create(
#   name: "Negi & Nori",
#   address: "London",
#   cuisine_type: "Japanese",
#   phone_no: "020 1234 5678",
#   chain: false,
#   budget: [50, 40, 100, 32, 22],
#   opening_hour: "12:00",
#   closing_hour: "23:00",
#   meal_type: "dinner",
#   reason: "Your new fav. sushi spot",
#   rating: ":smile:",
#   trending: ":fire:",
#   instagram: "@STK_london",
#   facebook: "STK London",
#   resy: 'stk_london.resy.com',
#   about: "Our menu is a culinary journey that spans from traditional Japanese classics to innovative fusion dishes.",
#   location_details: "A great first date spot, family dinner or client meeting with parks and theaters nearby",
#   other_occasion: "Date",
#   wheat: true,
#   lactose: true,
#   nuts: true,
#   vegetarian: true,
#   pic_url: "https://media-cdn.tripadvisor.com/media/photo-s/1d/1c/1e/a3/pulpo-a-la-barbacoa.jpg"
# )
# puts "Created restaurant 8..."

# restaurant_9 = Restaurant.create(
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
#   vegetarian: true,
#   pic_url: "https://media-cdn.tripadvisor.com/media/photo-s/1d/1c/1e/a3/pulpo-a-la-barbacoa.jpg"
# )
# puts "Created restaurant 9..."

# restaurant_10 = Restaurant.create(
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
#   vegetarian: true,
#   pic_url: "https://media-cdn.tripadvisor.com/media/photo-s/1d/1c/1e/a3/pulpo-a-la-barbacoa.jpg"
# )
# puts "Created restaurant 10..."

# restaurant_11 = Restaurant.create(
#   name: "Zapote",
#   address: "London",
#   cuisine_type: "Mexican",
#   chain: false,
#   budget: [15, 25, 12, 26, 18],
#   opening_hour: "12:00",
#   closing_hour: "23:00",
#   meal_type: "Lunch",
#   reason: 'Mexican food with a twist',
#   rating: ":smile:",
#   about: "Our tortillas are made in-house using traditional methods and heritage corn. To bring the flavours of Mexico, fresh ingredients are used, with a wide variety of chillies and spices.",
#   location_details: "Walkable to countless restaurants, theatrical venues and timeless nightlife in London",
#   other_occasion: "Work",
#   wheat: true,
#   lactose: true,
#   nuts: true,
#   vegetarian: true,
#   pic_url: "https://zapote.co.uk/wp-content/uploads/2023/01/Food-pics-06-1.jpg"
# )
# puts "Created restaurant 11..."

# restaurant_12 = Restaurant.create(
#  name: "Caldesi",
#  address: "London",
#  cuisine_type: "Italian",
#  phone_no: "020 1234 5678",
#  chain: false,
#  budget: [50, 40, 100, 32, 22],
#  opening_hour: "12:00",
#  closing_hour: "22:00",
#  meal_type: "lunch",
#  reason: "Amazing for a tasty bite for lunch",
#  rating: ":smile:",
#  trending: ":fire:",
#  instagram: "@STK_london",
#  facebook: "STK London",
#  resy: 'stk_london.resy.com',
#  about: "Providing the best of Italian cuisine",
#  location_details: "Central so great for those busy work lunches",
#  other_occasion: "Work",
#  pic_url: "https://www.caldesi.com/wp-content/uploads/2021/10/marylbone-1.jpg",
#  wheat: true,
#   lactose: true,
#   nuts: true,
#   vegetarian: true
# )
# puts "Created restaurant 12..."

# restaurant_13 = Restaurant.create(
#   name: "Aubaine",
#   address: "London",
#   cuisine_type: "British",
#   phone_no: "020 1234 5678",
#   chain: false,
#   budget: [50, 40, 100, 32, 22],
#   opening_hour: "12:00",
#   closing_hour: "22:00",
#   meal_type: "lunch",
#   reason: "The best lunches on offer",
#   rating: ":smile:",
#   trending: ":fire:",
#   instagram: "@STK_london",
#   facebook: "STK London",
#   resy: 'stk_london.resy.com',
#   about: "Variety of choices for your lunch",
#   location_details: "The location is fantastic, plenty to do",
#   other_occasion: "Work",
#   pic_url: "https://offloadmedia.feverup.com/secretldn.com/wp-content/uploads/2018/10/18120453/wisteria-covered-restaurant-selfridges-aubaine.jpg",
#   wheat: true,
#   lactose: true,
#   nuts: true,
#   vegetarian: true
# )
# puts "Created restaurant 13..."


# restaurant_14 = Restaurant.create(
#   name: "The Ivy Cafe",
#   address: "London",
#   cuisine_type: "British",
#   phone_no: "020 1234 5678",
#   chain: false,
#   budget: [50, 40, 100, 32, 22],
#   opening_hour: "12:00",
#   closing_hour: "22:00",
#   meal_type: "lunch",
#   reason: "A special treat",
#   rating: ":smile:",
#   trending: ":fire:",
#   instagram: "@STK_london",
#   facebook: "STK London",
#   resy: 'stk_london.resy.com',
#   about: "Fantastic vibe and food!",
#   location_details: "Great shops and fun bars nearby",
#   other_occasion: "Work",
#   pic_url: "https://cdn.squaremeal.co.uk/restaurants/10605/images/ivy-cafe-address_31012020045132.jpg?w=928&h=522&fit=crop&auto=format%2Ccompress",
#   wheat: true,
#   lactose: true,
#   nuts: true,
#   vegetarian: true
# )
# puts "Created restaurant 14..."

# restaurant_15 = Restaurant.create(
#   name: "Honest Burgers",
#   address: "London",
#   cuisine_type: "American",
#   phone_no: "020 1234 5678",
#   chain: false,
#   budget: [50, 40, 100, 32, 22],
#   opening_hour: "12:00",
#   closing_hour: "22:00",
#   meal_type: "lunch",
#   reason: "Can't beat these flavours",
#   rating: ":smile:",
#   trending: ":fire:",
#   instagram: "@STK_london",
#   facebook: "STK London",
#   resy: 'stk_london.resy.com',
#   about: "The best burgers in London",
#   location_details: "Buzzing nightlife around the area",
#   other_occasion: "Work",
#   pic_url: "https://www.honestburgers.co.uk/wp-content/uploads/2021/11/we-re-just-being-honest-really-great-burgers.jpg",
#   wheat: true,
#   lactose: true,
#   nuts: true,
#   vegetarian: true
# )
# puts "Created restaurant 15..."

# restaurant_16 = Restaurant.create(
#   name: "108 Brasserie",
#   address: "London",
#   cuisine_type: "European",
#   phone_no: "020 1234 5678",
#   chain: false,
#   budget: [50, 40, 100, 32, 22],
#   opening_hour: "12:00",
#   closing_hour: "22:00",
#   meal_type: "lunch",
#   reason: "Wonderful, warm and thoroughly lovely",
#   rating: ":smile:",
#   trending: ":fire:",
#   instagram: "@STK_london",
#   facebook: "STK London",
#   resy: 'stk_london.resy.com',
#   about: "Service is fantastic, food even better",
#   location_details: "Museums and parks nearby",
#   other_occasion: "Work",
#   pic_url: "https://www.doylecollection.com/var/doyle/storage/images/media/doyle-redesign/images/hotels/marylebone/club-bar-restaurant/the-salon/578129-3-eng-US/the-salon_rect719.jpg",
#   wheat: true,
#   lactose: true,
#   nuts: true,
#   vegetarian: true
# )
# puts "Created restaurant 16..."


# restaurant_17 = Restaurant.create(
#   name: "Twist Connubio",
#   address: "London",
#   cuisine_type: "Spanish",
#   phone_no: "020 1234 5678",
#   chain: false,
#   budget: [50, 40, 100, 32, 22],
#   opening_hour: "12:00",
#   closing_hour: "22:00",
#   meal_type: "lunch",
#   reason: "Quick bite perfect for lunch",
#   rating: ":smile:",
#   trending: ":fire:",
#   instagram: "@STK_london",
#   facebook: "STK London",
#   resy: 'stk_london.resy.com',
#   about: "Brings a taste of Spain to London",
#   location_details: "Surrounded by bars and different events",
#   other_occasion: "Work",
#   pic_url: "https://qul.imgix.net/9da98666-a6d8-445f-b354-be04a99c8565/531995_sld.jpg",
#   wheat: true,
#   lactose: true,
#   nuts: true,
#   vegetarian: true
# )
# puts "Created restaurant 17..."

# restaurant_18 = Restaurant.create(
#   name: "Hawksmoor",
#   address: "London",
#   cuisine_type: "American",
#   phone_no: "020 1234 5678",
#   chain: false,
#   budget: [50, 40, 100, 32, 22],
#   opening_hour: "12:00",
#   closing_hour: "22:00",
#   meal_type: "lunch",
#   reason: "No one does steak like Hawksmoor",
#   rating: ":smile:",
#   trending: ":fire:",
#   instagram: "@STK_london",
#   facebook: "STK London",
#   resy: 'stk_london.resy.com',
#   about: "Tasty, filling food",
#   location_details: "In the heart of London",
#   other_occasion: "Work",
#   pic_url: "https://www.hot-dinners.com/images/stories/blog/2023/hawksmoorsunday.jpg",
#   wheat: true,
#   lactose: true,
#   nuts: true,
#   vegetarian: true
# )
# puts "Created restaurant 18..."

# restaurant_19 = Restaurant.create(
#   name: "SushiSamba",
#   address: "London",
#   cuisine_type: "Japanese",
#   phone_no: "020 1234 5678",
#   chain: false,
#   budget: [50, 40, 100, 32, 22],
#   opening_hour: "12:00",
#   closing_hour: "22:00",
#   meal_type: "lunch",
#   reason: "Perfect for a sushi lunch",
#   rating: ":smile:",
#   trending: ":fire:",
#   instagram: "@STK_london",
#   facebook: "STK London",
#   resy: 'stk_london.resy.com',
#   about: "Famous for the best sushi",
#   location_details: "Incredible view on the 39th floor",
#   other_occasion: "Work",
#   pic_url: "https://1.bp.blogspot.com/-lZqxHvayV_s/YK1FlD_sy_I/AAAAAAAAOnI/Qh_fH7FpP-c0BzHj5oPVWZP8bl2aFwUCQCLcBGAsYHQ/s2048/sushi%2Bsamba%2Bfood.jpeg",
#   wheat: true,
#   lactose: true,
#   nuts: true,
#   vegetarian: true
# )
# puts "Created restaurant 19..."

# restaurant_20 = Restaurant.create(
#     name: "Banh Mi Keu Deli Cityin ",
#     address: "London",
#     cuisine_type: "Vietnamese",
#     phone_no: "020 1234 5678",
#     chain: false,
#     budget: [50, 40, 100, 32, 22],
#     opening_hour: "12:00",
#     closing_hour: "22:00",
#     meal_type: "lunch",
#     reason: "Tasty quick choices",
#     rating: ":smile:",
#     trending: ":fire:",
#     instagram: "@STK_london",
#     facebook: "STK London",
#     resy: 'stk_london.resy.com',
#     about: "Perfect lunch spot in London",
#     location_details: "Lots to discover nearby",
#     other_occasion: "Work",
#     pic_url: "https://www.hot-dinners.com/images/stories/features/2020/sandwiches/keu2.jpg",
#     wheat: true,
#     lactose: true,
#     nuts: true,
#     vegetarian: true
# )
# puts "Created restaurant 20..."
