class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    if cookies[:location]
      # TODO: filter by location
      @restaurants = @restaurants.where(address: cookies[:city])
    end

    if cookies[:wheat]
      # TODO: filter by location
      @restaurants = @restaurants.where(wheat: cookies[:wheat])
    end

    if cookies[:lactose]
      # TODO: filter by location
      @restaurants = @restaurants.where(lactose: cookies[:lactose])
    end

    if cookies[:nuts]
      # TODO: filter by location
      @restaurants = @restaurants.where(nuts: cookies[:nuts])
    end

    if cookies[:vegetarian]
      # TODO: filter by location
      @restaurants = @restaurants.where(vegetarian: cookies[:vegetarian])
    end

    if cookies[:occasion]
    # TODO: filter by location
    @restaurants = @restaurants.where(other_occasion: cookies[:occasion])
    end

    if cookies[:meal]
      # TODO: filter by location
      @restaurants = @restaurants.where(meal_type: cookies[:meal])
    end


    if cookies[:budget] == "positive" && cookies[:total_price].present? && cookies[:number_of_people].present?
      # TODO: filter by location
      @restaurants = @restaurants.where("(SELECT AVG(value::numeric) FROM UNNEST(budget) value) < ?", (cookies[:total_price].to_i / cookies[:number_of_people].to_i))
    end


    @user = current_user


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
