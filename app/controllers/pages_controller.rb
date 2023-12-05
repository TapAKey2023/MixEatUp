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
  end

  def test_page
  end
end
