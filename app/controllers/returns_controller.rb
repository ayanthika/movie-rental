class ReturnsController < ApplicationController

  def index
  end

  def new
    @return = Return.new
  end

  def create
    @return = Return.new(return_params)
    if @return.save
    redirect_to movies_path
    else
    render "new"
    end
  end

  private
  def return_params
    params.require(:return).permit(:film_name, :return_date, :movie_id, :user_id)
  end
end
