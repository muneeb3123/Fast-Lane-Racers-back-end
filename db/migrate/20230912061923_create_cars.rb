class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.string :description
      t.integer :finance_fee
      t.integer :option_to_purchase_fee
      t.integer :total_amount_payable
      t.string :duration
      t.decimal :apr
      t.string :image

      t.timestamps
    end
  end
end
