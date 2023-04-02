class ActorsController < ApplicationController
  def index_actors
    @list_of_actors = Actor.all    
  render({ :template => "actor_templates/index_actors.html.erb" })
  end

  def actor_details
    # params looks like {"a_movie_id"=>"42"}
    the_id = params.fetch("an_actor_id")
   
   @the_act = Actor.where({ :id => the_id }).at(0)
   #@the_char = Character.where({ :actor_id => @the_act.id }).at(0)
  # @the_direct = Director.where({ :id => @the_mov.director_id })

   @filmography = Movie.all

    render({ :template => "actor_templates/show_actors.html.erb" })
  end 

end
