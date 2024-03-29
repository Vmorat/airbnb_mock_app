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
  description: "Sea Purse possesses possibly the most stunning location of any house on the South Coast",
  property_type: "House",
  address: "5786 Roselyn Throughway",
  city: "Saint Margarets Bay",
  country: "United Kingdom",
  latitude: 44.4869,
  longitude: 63.9716,
  bedrooms: 4,
  bathrooms: 2,
  max_guests: 8,
  price_per_night: 613,
  amenities: "Hair dryer, AC, TV"
}

berck = {
  user: User.first,
  property_name: "Entire rental unit in Berck",
  description: "Come and enjoy this hidden gem, private car garage is available with the apartment",
  property_type: "Apartment",
  address: "3393 Ronny Way",
  city: "Berck",
  country: "France",
  latitude: 50.4082,
  longitude: 1.5919,
  bedrooms: 1,
  bathrooms: 1,
  max_guests: 3,
  price_per_night: 129,
  amenities: "Elevator"
}

le_marais_loft = {
  user: User.first,
  property_name: "Stylish Loft in Le Marais",
  description: "Charming loft in Le Marais district.",
  property_type: "Loft",
  address: "14 Rue de Rivoli",
  city: "Paris",
  country: "France",
  latitude: 48.8575,
  longitude: 2.3546,
  bedrooms: 2,
  bathrooms: 1,
  max_guests: 4,
  price_per_night: 199,
  amenities: "WiFi, Kitchen, Heating"
}

venice_canal_house = {
  user: User.first,
  property_name: "Canal House in Venice",
  description: "Charming house overlooking canals.",
  property_type: "House",
  address: "Calle del Tragheto",
  city: "Venice",
  country: "Italy",
  latitude: 45.4384,
  longitude: 12.3350,
  bedrooms: 3,
  bathrooms: 2,
  max_guests: 6,
  price_per_night: 299,
  amenities: "WiFi, Air Conditioning, Canal View"
}

[sea_purse, berck, le_marais_loft,venice_canal_house].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.property_name}"
end


puts "Finished!"

#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
