# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

cars = [
  ['Ford', 'Fantastic Car', 11, 21, 71, '31 months', 4.1, 'https://placekitten.com/600/600'],
  ['BMW', 'Brilliant Car', 12, 22, 72, '32 months', 4.2, 'https://placekitten.com/600/600'],
  ['Rolls Royce', 'Resplendent car', 13, 23, 73, '33 months', 4.3, 'https://placekitten.com/600/600']
]

cars.each do |car|
  Car.create(name: car[0], description: car[1], finance_fee: car[2], option_to_purchase_fee: car[3], total_amount_payable: car[4], duration: car[5], apr: car[6], image: car[7])
end


# Create Admin user
User.create(name: "muneeb", email: "rehmanmuneeb66@gmail.com", password:"123456", password_confirmation: "123456", role: "admin")