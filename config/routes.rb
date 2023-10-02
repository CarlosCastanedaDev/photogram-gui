Rails.application.routes.draw do
  get("/", { :controller => "users", :action => "index" })

  # routes for Users
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:username", { :controller => "users", :action => "show"})
  post("/add_user", { :controller => "users", :action => "create"})
  get("/update_user/:user_id", { :controller => "users" , :action => "update"})

  #routes for Photos

  
end
