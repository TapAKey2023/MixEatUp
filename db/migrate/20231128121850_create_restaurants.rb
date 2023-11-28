class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :cuisine_type
      t.string :phone_no
      t.boolean :chain, default: false
      t.string :budget, array: true, default: []
      t.time :opening_hour
      t.time :closing_hour
      t.string :meal_type
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
