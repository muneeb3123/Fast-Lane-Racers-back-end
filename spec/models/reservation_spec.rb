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
