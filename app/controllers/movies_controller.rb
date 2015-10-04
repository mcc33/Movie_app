class MoviesController < ApplicationController


#Index method to show all the instances of movies. I want this to pull form Enceladus.
  def index
    @movies = $popular_movies.all
  end
#Show method to show specific instances of movies from Enceladus
  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
  end

$popular_movies = Enceladus::Movie.popular

#$popular_movies.all.each do |movie|
  #movie.title
     #end

  private

#WCaptures movie attributes via a form and sets them to the controller. Eventually won't permit title and year as they will be passed it and users will not be able to change.
  def movie_params
    params.require(:movie).permit(:title, :year)
  end

end
