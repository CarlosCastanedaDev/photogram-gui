Rails.application.routes.draw do
  get("/", { :controller => "users", :action => "index" })

  # routes for Users
  get("/users", { :controller => "users", :action => "index" })
end
