require 'rails_helper'

RSpec.describe Car, type: :model do
  context 'validations' do
    it 'is valid with all required attributes' do
      car = Car.new(
        name: 'Example Car',
        description: 'Example description',
        finance_fee: 1000,
        option_to_purchase_fee: 500,
        total_amount_payable: 1500,
        duration: 36,
        apr: 5.0,
        image: 'example_image.jpg'
      )
      expect(car).to be_valid
    end

    it 'is not valid without a name' do
      car = Car.new(
        description: 'Example description',
        finance_fee: 1000,
        option_to_purchase_fee: 500,
        total_amount_payable: 1500,
        duration: 36,
        apr: 5.0,
        image: 'example_image.jpg'
      )
      expect(car).not_to be_valid
    end
  end
end
