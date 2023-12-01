class AddColumnsOnRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :reason, :text
    add_column :restaurants, :rating, :string
    add_column :restaurants, :trending, :string
    add_column :restaurants, :instagram, :string
    add_column :restaurants, :facebook, :string
    add_column :restaurants, :resy, :string
    add_column :restaurants, :about, :text
    add_column :restaurants, :location_details, :text
    add_column :restaurants, :other_occasion, :string
  end
end
