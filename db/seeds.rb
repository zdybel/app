# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


200.times do 

product_name = Faker::Commerce.product_name
category = Faker::Commerce.department
price = Faker::Commerce.price


Product.create(name: product_name, category: category, price: price)

end



