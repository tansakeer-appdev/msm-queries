class MoviesController < ApplicationController
  def index_movies
    @list_of_movies = Movie.all    
  render({ :template => "movie_templates/index_movies.html.erb" })
  end

  def movie_details
    # params looks like {"a_movie_id"=>"42"}
    the_id= params["a_movie_id"]

   @the_movie = Movie.where({ :id => the_id }).at(0)   
   @the_direct= Director.where({ :id => @the_movie.director_id }).at(0)  

    render({ :template => "movie_templates/show_movies.html.erb" })
  end 

end
