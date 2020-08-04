# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Let us create some restaurants for these curious creatures known as Hobbits'

Restaurant.destroy_all

10.times do
  Restaurant.create(name: Faker::Restaurant.unique.name, address: Faker::Address.unique.street_address, phone_number: Faker::Number.unique.leading_zero_number(digits: 10), category: ["chinese", "italian", "japanese", "french", "belgian"].sample)
end

puts 'Done! 10 new dinner place options have been forged in Mount Doom, Mordor'
