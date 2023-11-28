class CreateCreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :create_restaurants do |t|

      t.timestamps
    end
  end
end
