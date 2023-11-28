class ChangeChainDefaultInRestaurants < ActiveRecord::Migration[7.1]
  def change
    change_column_default :restaurants, :chain, from: true, to: false
  end
end
