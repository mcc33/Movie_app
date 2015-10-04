class MoviesController < ApplicationController


#Index method to show all instances of popular movies.
  def index
    @movies = $popular_movies.all
  end
#Show method to show specific instances of movies from Enceladus
  def show
    @movie = Enceladus::Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

$popular_movies = Enceladus::Movie.popular

#$popular_movies.all.each do |movie|
  #movie.title
     #end
end
