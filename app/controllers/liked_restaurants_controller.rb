class LikedRestaurantsController < ApplicationController
  def create
    @linked_restaurant = LikedRestaurant.new
    @linked_restaurant.restaurant = Restaurant.find(params[:restaurant_id])
    @linked_restaurant.user = current_user
    @linked_restaurant.save
    redirect_to restaurants_path
  end

  def destroy
    @linked_restaurant = current_user.linked_restaurant.find_by(restaurant_id: params[:restaurant_id])
    @linked_restaurant.destroy
  end
end
