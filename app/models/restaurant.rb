class Restaurant < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_many :restaurant_allergies
  has_many :allergies, through: :restaurant_allergies
end
