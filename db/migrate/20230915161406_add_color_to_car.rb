class AddColorToCar < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :color, :string
  end
end
