class ChangeAllergyToFoodPreference < ActiveRecord::Migration[7.1]
  def change
    rename_table :allergies, :food_preferences
    rename_column :food_preferences, :allergy_type, :food_preference_type

    rename_table :restaurant_allergies, :restaurant_food_preferences

    rename_table :user_allergies, :user_food_preferences


    add_column :bills, :date_of_visit, :date
    add_column :bills, :food_price, :integer
    add_column :bills, :drink_price, :integer
  end
end
