class RestaurantAllergy < ApplicationRecord
  belongs_to :allergy
  belongs_to :restaurant
end
