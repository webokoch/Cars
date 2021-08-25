# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'clearing database'
Car.destroy_all

puts 'generating cars'

30.times do
  Car.create(
    model: Faker::Vehicle.make_and_model,
    color: Faker::Vehicle.color,
    mileage: Faker::Vehicle.mileage,
    year: Faker::Vehicle.year
    )
end

puts 'Ready to ride'
