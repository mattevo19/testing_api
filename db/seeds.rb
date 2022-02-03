# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

User.destroy_all
puts 'Users deleted'

Gym.destroy_all
puts 'Users deleted'

Comment.destroy_all
puts 'Comments deleted'

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

5.times do |i|
  User.create!(email:Faker::Internet.email, password:'testtest1')
  puts "User #{i+1} created"
end

10.times do |i|
  Gym.create!(name:Faker::Mountain.name,address:Faker::Address.street_address,user_id:(rand(1..5)))
  puts "Gym #{i+1} created"
end

10.times do |i|
  3.times do
    Comment.create!(content: Faker::Movie.quote, gym_id: "#{i+1}".to_i , user_id: rand(1..5))
  end
end
puts "Comments created"