class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    if cookies[:location] == "positive" && cookies[:city].present? && cookies[:radius].present?
      # TODO: filter by location
      @restaurants = @restaurants.where(address: cookies[:city])
    end

    # Checking to see if preferences was selected
    if cookies[:preferences] == "positive"

        # TODO: filter by wheat allergy
      @restaurants = @restaurants.where(wheat: cookies[:wheat]) if cookies[:wheat] == "positive"

        # TODO: filter by lactose allergy
      @restaurants = @restaurants.where(lactose: cookies[:lactose]) if cookies[:lactose] == "positive"


        # TODO: filter by nut allergy
      @restaurants = @restaurants.where(nuts: cookies[:nuts]) if cookies[:nuts] == "positive"


        # TODO: filter by vegetarian
      @restaurants = @restaurants.where(vegetarian: cookies[:vegetarian]) if cookies[:vegetarian] == "positive"
    end


    # TODO: filter by occasion
    @restaurants = @restaurants.where(other_occasion: cookies[:occasion]) if cookies[:occasion].present?



      # TODO: filter by meal
      @restaurants = @restaurants.where(meal_type: cookies[:meal]) if cookies[:meal].present?


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
    raise
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
