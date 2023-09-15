FactoryBot.define do
    factory :reservation do
      association :user, factory: :user
      association :car, factory: :car
      city { Faker::Address.city }
      date { Faker::Date.forward(days: 30) } 
    end
  end
  