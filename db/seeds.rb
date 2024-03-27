# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
User.destroy_all

puts "Creating users..."
victoria = {
  email: "victoria@mail.com",
  password: "hello1234",
  username: "vic",
  first_name: "Victoria",
  last_name: "Vallejo"
}

neil = {
  email: "neil@mail.com",
  password: "hello1234",
  username: "sl@yer",
  first_name: "Abhroneil",
  last_name: "Das"
}

[victoria, neil].each do |attributes|
  user = User.create!(attributes)
  puts "Created #{user.username}"
end

puts "Creating flats..."
sea_purse = {
  user: User.first,
  property_name: "Spectacular house on the beach - Sea Purse",
  description: "Sea Purse possesses possibly the most stunning location of any house on the South Coast - every visitor testifies to that. Sitting directly beneath the White Cliffs of Dover and a balcony's width from the beach, this historically important house was previously leased by Noel Coward in the 1950s, with Ian Fleming leasing the adjacent house. Read James Bond's Moonraker novel and it's clear Fleming drew inspiration from this beautiful location.",
  property_type: "House",
  address: "5786 Roselyn Throughway",
  city: "Saint Margarets Bay",
  country: "United Kingdom",
  latitude: "44.4869° N",
  longitude: "63.9716° W",
  bedrooms: 4,
  bathrooms: 2,
  max_guests: 8,
  price_per_night: 613,
  amenities: "Hair dryer, AC, TV"
}

berck = {
  user: User.first,
  property_name: "Entire rental unit in Berck",
  description: "Come and enjoy this hidden gem facing the Berckoan beach and contemplate the unique sunsets
  of the Opal Coast.
  Restaurants, bars, shops, cinema and casino are less than a 5-minute walk away.
  Great for a romantic stay, this rare find will also be able to accommodate a child if the nanny is not available.
  The pleasure of welcoming you!
  A private car garage is available with the apartment",
  property_type: "Apartment",
  address: "3393 Ronny Way",
  city: "Berck",
  country: "France",
  latitude: "50.4082° N",
  longitude: "1.5919° E",
  bedrooms: 1,
  bathrooms: 1,
  max_guests: 3,
  price_per_night: 129,
  amenities: "Elevator"
}

[sea_purse, berck].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.property_name}"
end


puts "Finished!"

#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
