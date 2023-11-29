class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @user = current_user
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
