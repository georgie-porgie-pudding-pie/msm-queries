Rails.application.routes.draw do
  get("/", { :controller => "misc", :action => "homepage" })

  get("/actors", { :controller => "msm", :action => "actors"})
  get("/actors/:id", { :controller => "msm", :action => "actor"})
end
