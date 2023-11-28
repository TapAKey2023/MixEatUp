class CreateBills < ActiveRecord::Migration[7.1]
  def change
    create_table :bills do |t|
      t.integer :number_of_people
      t.float :total_price
      t.references :restaurant, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.float :average_price_per_person

      t.timestamps
    end
  end
end
