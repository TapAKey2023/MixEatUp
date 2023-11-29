class RestaurantsController < ApplicationController
  def index
    @user = current_user
    @restaurants = Restaurant.geocoded
    @markers = @restaurants.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {restaurant: restaurant}),
        marker_html: render_to_string(partial: "marker", locals: {restaurant: restaurant}) # Pass the restaurant to the partial
      }
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @user = current_user
  end

  def loading
    redirect_to restaurants_loading
    sleep(3)
    redirect_to restaurants_path
  end

  def saved
    @user = current_user
    @saved_restaurants = @user.saved_restaurants
  end

end
