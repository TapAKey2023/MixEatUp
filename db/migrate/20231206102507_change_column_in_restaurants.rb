class ChangeColumnInRestaurants < ActiveRecord::Migration[7.1]
  def change
    remove_column :restaurants, :budget
    add_column :restaurants, :budget, :integer, array: true
  end
end
