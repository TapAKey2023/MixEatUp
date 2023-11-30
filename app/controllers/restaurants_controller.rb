class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
      # TODO: filter by location
      # total price
      final_price = cookies[:total_price] || cookies[:total_price_og]
      # number of people
      final_number_of_people = cookies[:number_of_people] || cookies[:number_of_people_og]
      # city
      final_city = cookies[:city]
      # allergies
      final_allergies_wheat = cookies[:wheat]
      final_allergies_lactose = cookies[:lactose]
      final_allergies_nuts = cookies[:nuts]
      final_allergies_vegetarian = cookies[:vegetarian]

      if cookies[:location] == "positive" || cookies[:location_og] == "positive"
      @restaurants = @restaurants.where(address: cookies[:city])

      #please add the same block of code for other cookies
    end
    # if cookies[:event]
    #   @restaurants = @restaurants.where(event: cookies[:event])
    # end
    @user = current_user
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @user = current_user
  end

  def loading

    @restaurants = Restaurant.all
    if cookies[:location] == "positive" || cookies[:location_og] == "positive"
      raise
      cookies[:city] = params[:my_method][:City]
      cookies[:radius] = params[:my_method][:Radius]
    else
      cookies[:city] = "negative"
      cookies[:radius] = "negative"
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
