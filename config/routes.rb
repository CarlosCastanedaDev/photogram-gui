Rails.application.routes.draw do
  get("/", { :controller => "users", :action => "index" })

  # routes for Users
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:username", { :controller => "users", :action => "show"})
  post("/add_user", { :controller => "users", :action => "create"})
  get("/update_user/:user_id", { :controller => "users" , :action => "update"})

  #routes for Photos
  get("/photos", { :controller => "photos", :action => "index"})
  get("/photos/:photo_id", { :controller => "photos", :action => "show"})
  post("/add_photo", { :controller => "photos", :action => "create"})
  get("/update_photo/:photo_id", { :controller => "photos", :action => "update"})
  get("delete_photo/:photo_id", { :controller => "photos", :action => "destroy"})
  post("/add_comment", { :controller => "photos", :action => "create_comment"})

end
