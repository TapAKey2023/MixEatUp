class FiltersController < ApplicationController
  def index
  end

  def occasion
  end

  def meal
    cookies[:occasion] = params[:occasion]
  end

  def evenet
  end

  def clarifications
    cookies[:meal] = params[:meal]
  end

  def user_clarification_choice
    choices = params[:user_clarifications]
    if choices[:budget] == "1"
      cookies[:budget] = "positive"
    else
      cookies[:budget] = "negative"
    end

    if choices[:preferences] == "1"
      cookies[:preferences] = "positive"
    else
      cookies[:preferences] = "negative"
    end

    if choices[:location] == "1"
      cookies[:location] = "positive"
    else
      cookies[:location] = "negative"

    end

    redirect_to filters_budget_path
  end

  def budget
    # if cookies[:budget] == "negative"
    #   redirect_to filters_preferences_path
    #   return
    # end
    redirect_to filters_preferences_path if cookies[:budget] == "negative"

    # if params[:budget] == "positive"
    #   cookies[:budget] = params[:budget]
    # end
    # if params[:preferences] == "positive"
    #   cookies[:preferences] = params[:preferences]
    # end
    # if params[:location] == "positive"
    #   cookies[:location] = params[:location]
    # end
    # raise
  end

  def preferences
    if cookies[:budget] == "positive"
      cookies[:total_price] = params[:my_method][:total_price]
      cookies[:number_of_people] = params[:my_method][:number_of_people]
    end

    redirect_to filters_location_path if cookies[:preferences] == "negative"
  end

  def location
    if cookies[:preferences] == "positive"
      cookies[:wheat] = params[:wheat]
      cookies[:lactose] = params[:lactose]
      cookies[:nuts] = params[:nuts]
      cookies[:vegetarian] = params[:vegetarian]
    end

    if cookies[:location] == "negative"
      redirect_to restaurants_loading_path
    end
  end
end
