class CreateRestaurantAllergies < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurant_allergies do |t|
      t.references :allergy, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
