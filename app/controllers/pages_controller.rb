class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    cookies.delete :preferences
    cookies.delete :occasion
    cookies.delete :meal
    cookies.delete :location
    cookies.delete :index
    cookies.delete :clarifications
    cookies.delete :budget
    cookies.delete :budget_clarifications
    cookies.delete :filter
    cookies.delete :total_price
    cookies.delete :number_of_people
    cookies.delete :city
    cookies.delete :radius
    cookies.delete :wheat
    cookies.delete :vegetarian
    cookies.delete :lactose
    cookies.delete :nuts
    cookies.delete :drink_or_food_choice
  end

  def test_page
  end
end
