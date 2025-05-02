Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/actors", { :controller => "msm", :action => "actors"})
  get("/actors/:id", { :controller => "msm", :action => "actor"})
  get("/movies", { :controller => "msm", :action => "movies"})
  get("/movies/:id", { :controller => "msm", :action => "movie"})
  get("/directors", { :controller => "msm", :action => "directors"})
  get("/directors/youngest", { :controller => "msm", :action => "youngest"})
  get("/directors/eldest", { :controller => "msm", :action => "eldest"})
  get("/directors/:id", { :controller => "msm", :action => "director"})
end
