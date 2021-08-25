class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :color
      t.integer :mileage
      t.integer :year

      t.timestamps
    end
  end
end
