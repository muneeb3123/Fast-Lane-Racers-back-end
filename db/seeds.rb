# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

cars = [
  ['Mercedes-Maybach S650 Cabriolet', 'Mercedes-Maybach S650 Cabriolet is an iconic Italian sports car brand celebrated for its sleek and powerful vehicles. It represents the pinnacle of automotive excellence and performance.', 11, 21, 71, '31 months', 4.1, 'https://i.imgur.com/h9Mo1AZ.png', 'Black'],
  ['McLaren P1', 'McLaren P1 is an iconic Italian sports car brand celebrated for its sleek and powerful vehicles. It represents the pinnacle of automotive excellence and performance.', 12, 22, 72, '32 months', 4.2, 'https://i.imgur.com/o1OMj06.png', 'Grey'],
  ['Bugatti Veyron P1.6', 'Bugatti Veyron P1.6 is an iconic Italian sports car brand celebrated for its sleek and powerful vehicles. It represents the pinnacle of automotive excellence and performance.', 13, 23, 73, '33 months', 4.3, 'https://i.imgur.com/ahilqIn.png', 'Red'],
  ['Ferrari 599 SA Aperta', 'Ferrari 599 SA Aperta is an iconic Italian sports car brand celebrated for its sleek and powerful vehicles. It represents the pinnacle of automotive excellence and performance.', 14, 24, 74, '34 months', 4.4, 'https://i.imgur.com/L9XaS2r.png', 'White']
]

cars.each do |car|
  Car.create(name: car[0], description: car[1], finance_fee: car[2], option_to_purchase_fee: car[3], total_amount_payable: car[4], duration: car[5], apr: car[6], image: car[7], color: car[8])
end


# Create Admin user
User.create(name: "muneeb", email: "muneeb@gmail.com", password:"123456", password_confirmation: "123456", role: "admin")

Reservation.create(user_id: 1, car_id: 1, city: 'Melbourne', date: 'Tue, 26 Sep 2023');
Reservation.create(user_id: 1, car_id: 2, city: 'Auckland', date: 'Wed, 27 Sep 2023');
