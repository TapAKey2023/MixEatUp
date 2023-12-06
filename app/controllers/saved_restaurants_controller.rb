class SavedRestaurantsController < ApplicationController
  def create
    @saved_restaurant = SavedRestaurant.new
    @saved_restaurant.restaurant = Restaurant.find(params[:restaurant_id])
    @saved_restaurant.user = current_user
    # current_user.bookmarked_restaurants << restaurant
    @saved_restaurant.save
    redirect_to restaurants_path
  end

  def destroy
    @saved_restaurant = current_user.saved_restaurant.find_by(restaurant_id: params[:restaurant_id])
    @saved_restaurant.destroy
  end
end
