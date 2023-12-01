class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    if cookies[:location]
      # TODO: filter by location
      @restaurants = @restaurants.where(address: cookies[:city])
    end
    # if cookies[:event]
    #   @restaurants = @restaurants.where(event: cookies[:event])
    # end
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
    @restaurants = Restaurant.all
    if cookies[:location] == "positive" || cookies[:location] == "1"
      if params[:geolocation]
        cookies[:city] = params[:geolocation][:city]
        cookies[:radius] = params[:geolocation][:radius]
      end
    end
    # if params[:my_method][:wheat] == "positive"
    #   cookies[:wheat] = params[:my_method][:wheat]
    # end
    # if params[:my_method][:lactose] == "positive"
    #   cookies[:lactose] = params[:my_method][:lactose]
    # end
    # if params[:my_method][:nuts] == "positive"
    #   cookies[:nuts] = params[:my_method][:nuts]
    # end
    # if params[:my_method][:vegetarian] == "positive"
    #   cookies[:vegetarian] = params[:my_method][:vegetarian]
    # end
  end

  def saved
    @user = current_user
    @saved_restaurants = @user.saved_restaurants
  end
end
