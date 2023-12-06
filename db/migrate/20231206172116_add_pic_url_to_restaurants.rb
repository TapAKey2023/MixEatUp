class AddPicUrlToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :pic_url, :string
  end
end
