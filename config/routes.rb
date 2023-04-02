Rails.application.routes.draw do

  get("/directors/eldest", { :controller => "directors", :action => "wisest" })

  get("/directors/youngest", { :controller => "directors", :action => "strongest" })

  get("/directors/:an_id", { :controller => "directors", :action => "director_details" })

  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })


  get("/movies", { :controller => "movies", :action => "index_movies" })
  get("/movies/:a_movie_id", { :controller => "movies", :action => "movie_details" })
  
  get("/actors", { :controller => "actors", :action => "index_actors" })
  get("/actors/:an_actor_id", { :controller => "actors", :action => "actor_details" })

end
