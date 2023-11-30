class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    if cookies[:location]
      # TODO: filter by location
      @restaurants = @restaurants.where(location: cookies[:location])
    end
    if cookies[:event]
      @restaurants = @restaurants.where(event: cookies[:event])
    end
    @user = current_user
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @user = current_user
  end

  def loading
    if cookies[:location] == "positive"
      cookies[:city] = params[:my_method][:City]
      cookies[:radius] = params[:my_method][:Radius]
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
