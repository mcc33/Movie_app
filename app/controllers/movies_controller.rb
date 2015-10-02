class MoviesController < ApplicationController


#Index method to show all the instances of movies
  def index
    @movies = Movie.all
  end
#Show method to show specific instances of movies
  def show
    @movie = Movie.find(params[:id])
  end
#Method to collect data to create a new instance of movie. this will be passed the attributes from the movie db gem.
  def new
    @movie = Movie.new
  end
#Create a new instance of movie using passed attributes
  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      redirect_to movies_path
    else
      render "new"
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
      @movie = Movie.find(params[:id])
      if @movie.update(movie_params)
        redirect_to movie_path(@movie), notice: "Movie successfully updated"
      else
        render "edit"
      end
  end


  private

#WCaptures movie attributes via a form and sets them to the controller. Eventually won't permit title and year as they will be passed it and users will not be able to change.
  def movie_params
    params.require(:movie).permit(:title, :year)
  end

end
