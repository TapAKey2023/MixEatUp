class Restaurant < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :restaurant_allergies
  has_many :allergies, through: :restaurant_allergies
  has_many :saved_restaurants
  has_many :users, through: :saved_restaurants
  # has_one_attached :pic_url
end
