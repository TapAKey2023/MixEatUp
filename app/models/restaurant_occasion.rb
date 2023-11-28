class RestaurantOccasion < ApplicationRecord
  belongs_to :restaurant
  belongs_to :occasion
end
