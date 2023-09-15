# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

cars = [
  ['Ferrari 1', '
    Ferrari is an iconic Italian sports car brand celebrated for its sleek and powerful vehicles. It represents the pinnacle of automotive excellence and performance.', 11, 21, 71, '31 months', 4.1, 'https://i.imgur.com/zyskQma.png', 'color1'],
  ['Ferrari 2', '
    Ferrari is an iconic Italian sports car brand celebrated for its sleek and powerful vehicles. It represents the pinnacle of automotive excellence and performance.', 12, 22, 72, '32 months', 4.2, 'https://i.imgur.com/XDNoVHm.png', 'color2'],
  ['Ferrari 3', '
    Ferrari is an iconic Italian sports car brand celebrated for its sleek and powerful vehicles. It represents the pinnacle of automotive excellence and performance.', 13, 23, 73, '33 months', 4.3, 'https://i.imgur.com/tlkh4wn.png', 'color3'],
  ['Ferrari 4', '
    Ferrari is an iconic Italian sports car brand celebrated for its sleek and powerful vehicles. It represents the pinnacle of automotive excellence and performance.', 13, 23, 73, '33 months', 4.3, 'https://i.imgur.com/CnNclIS.png', 'color4'],
  ['Ferrari 5', '
    Ferrari is an iconic Italian sports car brand celebrated for its sleek and powerful vehicles. It represents the pinnacle of automotive excellence and performance.', 13, 23, 73, '33 months', 4.3, 'https://i.imgur.com/ZQ3mhih.png', 'color5'],
  ['Ferrari 6', '
    Ferrari is an iconic Italian sports car brand celebrated for its sleek and powerful vehicles. It represents the pinnacle of automotive excellence and performance.', 13, 23, 73, '33 months', 4.3, 'https://i.imgur.com/HDzhvuv.png', 'color6']
]

cars.each do |car|
  Car.create(name: car[0], description: car[1], finance_fee: car[2], option_to_purchase_fee: car[3], total_amount_payable: car[4], duration: car[5], apr: car[6], image: car[7], color: car[8])
end


# Create Admin user
User.create(name: "muneeb", email: "muneeb@gmail.com", password:"123456", password_confirmation: "123456", role: "admin")