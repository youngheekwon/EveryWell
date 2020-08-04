# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(username: 'Alan', web_url: 'http://www.google.com', password:'123456', password_confirmation: '123456')
User.create!(username: 'Brian', web_url: 'http://www.tweedle.com', password:'123456', password_confirmation: '123456')
User.create!(username: 'Claudia', web_url: 'http://www.yahoo.com', password:'123456', password_confirmation: '123456')

p '3 users created'