class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def test_page
  end
end
