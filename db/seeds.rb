# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.new(title:"T_Shirts", description:"Hemp based pants that are amazing", price:50, user_id:1).save!
Product.new(title:"Eco_Soap", description:"An eco-friendly alternative", price:20, user_id:1).save!
Product.new(title:"Hand_cream", description:"An eco-friendly alternative", price:35, user_id:1).save!
Product.new(title:"Tooth_Paste", description:"An eco-friendly alternative", price:15, user_id:1).save!
Product.new(title:"Lip_Stick", description:"An eco-friendly alternative", price:25, user_id:1).save!
Product.new(title:"Hand_bag", description:"An eco-friendly alternative", price:70, user_id:1).save!
Product.new(title:"Scarf", description:"An eco-friendly alternative", price:40, user_id:1).save!