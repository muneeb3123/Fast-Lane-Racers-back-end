FactoryBot.define do
  factory :car do
    name { Faker::Vehicle.make_and_model }
    description { Faker::Lorem.sentence }
    finance_fee { Faker::Number.decimal(l_digits: 4, r_digits: 2) }
    option_to_purchase_fee { Faker::Number.decimal(l_digits: 4, r_digits: 2) }
    total_amount_payable { Faker::Number.decimal(l_digits: 5, r_digits: 2) }
    duration { Faker::Number.between(from: 12, to: 60) }
    apr { Faker::Number.decimal(l_digits: 3, r_digits: 2) }
    image { Faker::Internet.url }
  end
end
