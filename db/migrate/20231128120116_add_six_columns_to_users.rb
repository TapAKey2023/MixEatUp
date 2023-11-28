class AddSixColumnsToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :name, :string
    add_column :users, :age, :integer
    add_column :users, :gender, :string
    add_column :users, :latitude, :float
    add_column :users, :longitude, :float
    add_column :users, :reward_point, :string
    add_column :users, :integer, :string
  end
end
