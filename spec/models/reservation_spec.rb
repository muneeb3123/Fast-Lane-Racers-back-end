# require 'rails_helper'

# RSpec.describe Reservation, type: :model do
#   describe 'associations' do
#     it { should belong_to(:user) }
#     it { should belong_to(:car) }
#   end

#   describe 'validations' do
#     it { should validate_presence_of(:city) }
#     it { should validate_presence_of(:date) }

#     it 'validates date availability' do
#       user = create(:user)
#       car = create(:car)
#       valid_date = Date.tomorrow
#       invalid_date = Date.yesterday

#       # Create a valid reservation
#       valid_reservation = build(:reservation, user: user, car: car, date: valid_date)
#       expect(valid_reservation).to be_valid

#       # Create an invalid reservation with a past date
#       invalid_reservation = build(:reservation, user: user, car: car, date: invalid_date)
#       expect(invalid_reservation).not_to be_valid
#     end
#   end
# end

# spec/models/reservation_spec.rb

require 'rails_helper'

RSpec.describe Reservation, type: :model do
  it 'is valid with valid attributes' do
    reservation = build(:reservation)
    expect(reservation).to be_valid
  end

  it 'is not valid without a city' do
    reservation = build(:reservation, city: nil)
    expect(reservation).to_not be_valid
  end

  it 'is not valid without a date' do
    reservation = build(:reservation, date: nil)
    expect(reservation).to_not be_valid
  end
end
