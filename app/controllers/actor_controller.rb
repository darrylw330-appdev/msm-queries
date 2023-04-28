class ActorController < ApplicationController
  def actor_list
    @actor_list = Actor.all
    render({ :template => "actor_template/actor_list.html.erb" })
  end

  def actors_details
    the_id = params.fetch("actor_id")
    @actor = Actor.where({ :id => the_id }).at(0)
    @character_id = Character.all
    @character = Character.where({ :actor_id => @actor.id })
    @movie = Movie.where({ :id => @character.movie_id}).at(0)

    render({ :template => "actor_template/actor_details.html.erb"})
  end
end
