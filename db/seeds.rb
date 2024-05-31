# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:  'Example User',
             email: 'example@railstutorial.org',
             password:              'foobar',
             password_confirmation: 'foobar',
             admin:     true,
             activated: true,
             activated_at: Time.zone.now)

# 7.times do |n|
#   name  = Faker::Name.name
#   email = "example-#{n + 1}@railstutorial.org"
#   password = 'password'
#   User.create!(name:  name,
#                email: email,
#                password:              password,
#                password_confirmation: password,
#                activated: true,
#                activated_at: Time.zone.now)

#   users = User.order(:created_at).take(6)

#   7.times do
#     content = Faker::Lorem.sentence(5)
#     users.each { |user| user.microposts.create!(content: content) }
#   end
# end

product1 = Product.create({:name=>"NIKON D7500 DSLR Camera Body with 18-140 mm Lens", :price => 1})
product2 = Product.create({:name=>"dji Action 2 Power Combo Power Combo with Module, Magnetic Versatility, 4K Recording Upto 120 fps and ", :price => 3})
product3 = Product.create({:name=>"Canon EOS 1500D DSLR Camera Body+ 18-55 mm IS II Lens", :price => 5.50})
product4 = Product.create({:name=>"FUJIFILM Instax Mini 11 Instant Camera
", :price => 10})
product5 = Product.create({:name=>"Canon EOS 200D II DSLR Camera EF-S18-55mm IS STM
", :price => 3.20})
product6 = Product.create({:name=>"SONY Alpha ILCE-6100L APS-C Mirrorless Camera with 16-50 mm Power Zoom Lens Featuring Eye AF and 4K mo...", :price => 15.20})

puts "Total number of products: #{Product.all.count}"
puts "Product names: #{Product.all.pluck("name")}"
puts "Product1: #{product1.name} price: #{product1.price.round(2)}"
puts "Product2: #{product2.name} price: #{product2.price.round(2)}"
puts "Product3: #{product3.name} price: #{product3.price.round(2)}"
puts "Product4: #{product4.name} price: #{product4.price.round(2)}"
puts "Product5: #{product5.name} price: #{product5.price.round(2)}"
puts "Product6: #{product6.name} price: #{product6.price.round(2)}"

# CART
Cart.destroy_all
puts "\nTotal cart count: #{Cart.all.count}"

# Following relationships
# users = User.first(50)
# user  = users.first
# following = users[2..50]
# followers = users[3..40]
# following.each { |followed| user.follow(followed) }
# followers.each { |follower| follower.follow(user) }
