# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'

puts "Destroying all files"
Hat.destroy_all
Rat.destroy_all

puts "Creating files"
5.times do
  rat = Rat.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "rat#{Faker::Internet.free_email}",
    password: "password"
  )
  rat.save!
end

rats = Rat.all

rats.each do |rat|
  2.times do
    hat = Hat.new(
      title: Faker::Name.first_name,
      description: Faker::Name.last_name,
      price: (10..30).to_a.sample,
      size: Hat::SIZES.sample,
      available: true,
      rat_id: rat.id
    )
    file = URI.open('https://source.unsplash.com/1600x900/?hats')
    hat.photo.attach(io: file, filename: "desktop.png", content_type: "image/png")
    hat.save!
  end
end

puts "Finished"
