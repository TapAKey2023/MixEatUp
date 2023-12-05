class BillsController < ApplicationController

  def create
    @bill = Bill.new(bill_params)
    @restaurant = Restaurant.find_by(name: params[:bill][:restaurant])
    @bill.restaurant = @restaurant
    @bill.user = current_user
    if @bill.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @bill = Bill.new
  end

  private

  def set_bill
    @bill = Bill.find(params[:id])
  end

  def bill_params
    params.require(:bill).permit(:number_of_people, :total_price, :restaurant_id, :user_id, :average_price_per_person)
  end

end
