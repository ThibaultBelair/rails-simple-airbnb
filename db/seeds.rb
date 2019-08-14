require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'

4.times do
  flats_attributes = [
  {
    name:         Faker::Name.unique.name,
    address:      Faker::Address.city,
    description: Faker::PhoneNumber.cell_phone,
    price_per_night: Faker::Number.number(digits: 10),
    number_of_guests: Faker::Number.number(digits: 10)
  }
]
  Flat.create!(flats_attributes)
end
puts 'Finished!'
