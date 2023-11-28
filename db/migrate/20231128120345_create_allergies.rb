class CreateAllergies < ActiveRecord::Migration[7.1]
  def change
    create_table :allergies do |t|
      t.string :allergy_type

      t.timestamps
    end
  end
end
