class CreateUserAllergies < ActiveRecord::Migration[7.1]
  def change
    create_table :user_allergies do |t|
      t.references :allergy, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
