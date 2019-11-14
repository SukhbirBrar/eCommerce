# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AdminUser.destroy_all
Product.destroy_all
Category.destroy_all

5.times do
  temp = Category.create(name: Faker::Commerce.department)

  15.times do
    temp.products.create(
      name: Faker::Commerce.product_name,
      description: Faker::Commerce.material,
      price: Faker::Commerce.price,
      image: Faker::Avatar.image
    )
  end
end

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
