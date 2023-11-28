class CreateRestaurantOccasions < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurant_occasions do |t|
      t.references :restaurant, null: false, foreign_key: true
      t.references :occasion, null: false, foreign_key: true

      t.timestamps
    end
  end
end
