# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "User 1", email: "user1@email.com", password: "123456", password_confirmation: "123456")

Store.create(store_name: "Store 1", user_id: 1)

Product.create(name: 'Product 1', description: "Description 1", price: "#{rand(10..50)}", category: "Cat 1", store_id: 1)
Product.create(name: 'Product 2', description: "Description 2", price: "#{rand(10..50)}", category: "Cat 2", store_id: 1)
Product.create(name: 'Product 3', description: "Description 3", price: "#{rand(10..50)}", category: "Cat 3", store_id: 1)
Product.create(name: 'Product 4', description: "Description 4", price: "#{rand(10..50)}", category: "Cat 4", store_id: 1)
Product.create(name: 'Product 5', description: "Description 5", price: "#{rand(10..50)}", category: "Cat 5", store_id: 1)
Product.create(name: 'Product 6', description: "Description 6", price: "#{rand(10..50)}", category: "Cat 6", store_id: 1)
Product.create(name: 'Product 7', description: "Description 7", price: "#{rand(10..50)}", category: "Cat 7", store_id: 1)
Product.create(name: 'Product 8', description: "Description 8", price: "#{rand(10..50)}", category: "Cat 8", store_id: 1)
Product.create(name: 'Product 9', description: "Description 9", price: "#{rand(10..50)}", category: "Cat 9", store_id: 1)
Product.create(name: 'Product 10', description: "Description 10", price: "#{rand(10..50)}", category: "Cat 10", store_id: 1)