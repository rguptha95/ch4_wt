# This file is app/controllers/movies_controller.rb
class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end
end

def movie_params
    params.require(:movie).permit(:title, :rating, :description, :release_date)
end

def show
    @movie = Movie.find_by_id(params[:id]) # what if this movie not in DB?
    # BUG: we should check @movie for validity here!
end