class CreateOccasions < ActiveRecord::Migration[7.1]
  def change
    create_table :occasions do |t|
      t.string :occasion_type

      t.timestamps
    end
  end
end
