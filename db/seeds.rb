# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "email@email.com", password: "password", password_confirmation: "password")

(0..20).each do |c|
  Receipt.create(gas_station: "Casey's General Store", gas_station_address: "102 W hfdlk street", gas_type: "Regular (87)", price_per_gal: 3.99, fuel_total: 57.98, date_pumped: 2022-10-2, total_gallons: 15)
end