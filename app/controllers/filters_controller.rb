class FiltersController < ApplicationController
  def index
  end

  def occasion
    if params[:filter] == "occasion"
      cookies[:filter] = params[:filter]
    end
    redirect_to filters_budget_path if cookies[:filter] == "budget"
  end

  def meal
    if cookies[:filter] == "budget"
      cookies[:total_price] = params[:budget_form][:total_price]
      cookies[:number_of_people] = params[:budget_form][:number_of_people]
    end
    cookies[:occasion] = params[:occasion]
  end

  def clarifications
    cookies[:meal] = params[:meal]
    redirect_to filters_budget_clarifications_path if cookies[:filter] == "budget"
  end

  def budget_clarifications
    cookies[:meal] = params[:meal]
  end

  def user_clarification_choice
    choices = params[:user_clarifications]

    if choices[:budget] == "true"
      cookies[:budget] = "positive"
    else
      cookies[:budget] = "negative"
    end

    if choices[:preferences] == "true"
      cookies[:preferences] = "positive"
    else
      cookies[:preferences] = "negative"
    end

    if choices[:location] == "true"
      cookies[:location] = "positive"
    else
      cookies[:location] = "negative"

    end

      redirect_to filters_budget_path
  end

  def budget
    cookies[:filter] = "budget" if params[:filter] == "budget"
    redirect_to filters_preferences_path if cookies[:filter] == "occasion" && cookies[:budget] == "negative"
    # Need to check what these are doing

    redirect_to filters_preferences_path if cookies[:meal] == false

    # Need to check what these are doing
    if cookies[:filter] == "budget"
      cookies[:meal] = false
    end
  end


  def preferences
    # cookies.delete :total_price
    # cookies.delete :number_of_people
    # cookies.delete :drink_or_food_choice
    # This is only done when the user selects Budget at the beginning
    if cookies[:filter] == "budget"
      cookies[:preferences] = params[:user_clarifications][:preferences]
      cookies[:location] = params[:user_clarifications][:location]
      redirect_to filters_location_path if cookies[:preferences] == "0" || cookies[:preferences] != "true"
      return
    end
    if cookies[:budget] == "positive"
      cookies[:drink_or_food_choice] = "drinks" if params[:budget_form][:drinks] == "positive"
      cookies[:drink_or_food_choice] = "food" if params[:budget_form][:food] == "positive"
      cookies[:drink_or_food_choice] = "drinks and food" if params[:budget_form][:drink_and_food] == "positive"
    end

    if cookies[:budget] == "positive" && cookies[:filter] != "budget"
      cookies[:total_price] = params[:budget_form][:total_price]
      cookies[:number_of_people] = params[:budget_form][:number_of_people]
    # else
    #   cookies[:total_price] = "negative"
    #   cookies[:number_of_people] = "negative"
    end
    redirect_to filters_location_path if cookies[:preferences] == "negative" || cookies[:preferences] == "false"
  end

  def location
    cookies.delete :wheat
    cookies.delete :vegetarian
    cookies.delete :lactose
    cookies.delete :nuts
    if cookies[:filter] == "budget"
      if cookies[:preferences] == "positive"
        cookies[:wheat] = params[:wheat] if params[:wheat] == "positive"
        cookies[:lactose] = params[:lactose] if params[:lactose] == "positive"
        cookies[:nuts] = params[:nuts] if params[:nuts] == "positive"
        cookies[:vegetarian] = params[:vegetarian] if params[:vegetarian] == "positive"
      end

      if cookies[:location] == "0" || cookies[:location] != "true"
        redirect_to restaurants_loading_path
      end
    end


    if cookies[:filter] == "occasion"
      if cookies[:preferences] == "positive"
        cookies[:wheat] = params[:wheat] if params[:wheat] == "positive"
        cookies[:lactose] = params[:lactose] if params[:lactose] == "positive"
        cookies[:nuts] = params[:nuts] if params[:nuts] == "positive"
        cookies[:vegetarian] = params[:vegetarian] if params[:vegetarian] == "positive"
      end
      if cookies[:location] == "negative"
        redirect_to restaurants_loading_path
      end
    end
    @restaurants = Restaurant.geocoded
    @markers = @restaurants.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        marker_html: render_to_string(partial: "marker") # Pass the restaurant to the partial
      }
    end
  end
end
