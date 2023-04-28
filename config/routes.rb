Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })

  get("/directors", { :controller => "directors", :action => "index" })

  get("/directors/eldest", { :controller => "directors", :action => "wisest" })

  get("/directors/youngest", { :controller => "directors", :action => "young" })

  get("/directors/:an_id", { :controller => "directors", :action => "director_details" })

  get("/movies", { :controller => "movies", :action => "movie_list" })

  get("/movies/:movie_id", { :controller => "movies", :action => "movie_details" })

  get("/actor", { :controller => "actor", :action => "actor_list" })

  get("/actor/:actor_id", { :controller => "actor", :action => "actor_details" })
end
