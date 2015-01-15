class RentalsController < ApplicationController

  def index
  end
  
  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    if @rental.save
    redirect_to movies_path
    else
    render "new"
    end
  end

  private
  def rental_params
    params.require(:rental).permit(:movie_name, :checkout_date)
  end
end
