# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do
  rat = Rat.new(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "rat#{Faker::Internet.free_email}"
  )
  rat.save!
end

rats = Rat.all

rats.each do |rat|
  rand(4..10).times do
    hat = Hat.new(
      title: Faker::Name.first_name,
      description: Faker::Name.last_name,
      price: "rat#{Faker::Internet.free_email}",
      size: rand("S", "M", "L"),
      available: true,
      rats_id: rat.id,
      created_at: Faker::Time.between(from: DateTime.now - 5, to: DateTime.now),
      updated_at: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now)
    )
    hat.save!
  end
end
