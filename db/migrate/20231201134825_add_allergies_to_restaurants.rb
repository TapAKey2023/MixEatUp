class AddAllergiesToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :wheat, :string
    add_column :restaurants, :nuts, :string
    add_column :restaurants, :vegetarian, :string
    add_column :restaurants, :lactose, :string
  end
end
