class RestaurantsController < ApplicationController
  def index
  end

  def show
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
  end

end
