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
      cookies[:total_price] = params[:my_method][:total_price]
      cookies[:number_of_people] = params[:my_method][:number_of_people]

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
    # if cookies[:budget] == "negative"
    #   redirect_to filters_preferences_path
    #   return
    # end
    # redirect_to filters_preferences_path if cookies[:filter] == "budget"

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
    cookies[:filter] = "budget" if params[:filter] == "budget"

    if cookies[:filter] == "occasion"
      if cookies[:budget] == "negative"
        redirect_to filters_preferences_path
      end
    end
    if cookies[:meal] == false
      redirect_to filters_preferences_path
      return
    end

    if cookies[:filter] == "budget"
      cookies[:meal] = false
    end
  end

  def preferences
    if cookies[:filter] == "budget"
      cookies[:preferences] = params[:user_clarifications][:preferences]
      cookies[:location] = params[:user_clarifications][:location]
      redirect_to filters_location_path if cookies[:preferences] == "0"
    end

    if cookies[:budget] == "positive" && cookies[:filter] != "budget"
      cookies[:total_price] = params[:my_method][:total_price]
      cookies[:number_of_people] = params[:my_method][:number_of_people]
    else
      cookies[:total_price] = "negative"
      cookies[:number_of_people] = "negative"
    end

    redirect_to filters_location_path if cookies[:preferences] == "negative"
  end

  def location

    if cookies[:filter] == "budget"
      if cookies[:preferences] == "1"
        cookies[:wheat] = params[:my_method][:wheat]
        cookies[:lactose] = params[:my_method][:lactose]
        cookies[:nuts] = params[:my_method][:nuts]
        cookies[:vegetarian] = params[:my_method][:vegetarian]
      else
        cookies[:wheat] = "negative"
        cookies[:lactose] = "negative"
        cookies[:nuts] = "negative"
        cookies[:vegetarian] = "negative"
      end
      if cookies[:location] == "0"
        redirect_to restaurants_loading_path
      end
    end


    if cookies[:filter] == "occasion"
      if cookies[:preferences] == "positive"
        cookies[:wheat] = params[:wheat]
        cookies[:lactose] = params[:lactose]
        cookies[:nuts] = params[:nuts]
        cookies[:vegetarian] = params[:vegetarian]
      else
        cookies[:wheat] = "negative"
        cookies[:lactose] = "negative"
        cookies[:nuts] = "negative"
        cookies[:vegetarian] = "negative"
      end
      if cookies[:location] == "negative"
        redirect_to restaurants_loading_path
      end
    end
  end
end
