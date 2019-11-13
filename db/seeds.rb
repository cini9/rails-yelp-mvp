# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: Restaurant::CATEGORY.sample,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code
  )
end

Restaurant.all.each do |restaurant|
  2.times do
    Review.create(
      content: Faker::Restaurant.review,
      rating: Review::STARS.sample,
      restaurant: restaurant
    )
  end
end
