class MoviesController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
     @movies = Movie.search(params[:search]).order(sort_column + " " + sort_direction)
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def update
  end

   private

  def sort_column
   params[:sort] || "title"
  end

  def sort_direction
   %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end

  def movie_params
    params.require(:movie).permit(:title, :rating, :genre)
  end
end
