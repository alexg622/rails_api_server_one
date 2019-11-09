# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movie.delete_all
Theatre.delete_all

show_times = %[6pm 7pm 8pm 9pm 11pm 12pm 1pm 2pm 3pm 4pm 5pm]

100.times do
  Theatre.create(name: "#{Faker::Name.first_name}'s Theatre'", street: "#{Faker::Address.street_address} #{Faker::Address.street_address}", city: Faker::Address.city, state: Faker::Address.state, zip: Faker::Address.zip_code)
end


1000.times do
  Movie.create(title: Faker::FunnyName.two_word_name, show_time: show_times[rand(11)], price: "#{rand(8...25)}$", theatre: Theatre.all[rand(100)])
end
