class MoviesController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    # @movies = Movie.order(sort_column + " " + sort_direction)
    @movies = Movie.search(params[:search]).order(sort_column + " " + sort_direction)
    # @all_movies = Movie.order(sort_column + " " + sort_direction)
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      redirect_to(@movie)
    else
      render "edit"
    end
  end

   private

  def sort_column
    params[:sort] || "title"
  #Movie.column_names.include?(params[:sort]) ? params[:sort] : "title"
  end

  def sort_direction
    # params[:direction] || "asc"
   %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
