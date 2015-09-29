class MoviesController < ApplicationController
  def index
    @movie = Movies.all
  end

  def new
    @movie = Movie.new
  end


  def create
    @movie = Movie.new()
  end

end
