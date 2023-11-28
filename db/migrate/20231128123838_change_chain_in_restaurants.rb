class ChangeChainInRestaurants < ActiveRecord::Migration[7.1]
  def change
    change_column_default :restaurants, :chain, to: false
  end
end
