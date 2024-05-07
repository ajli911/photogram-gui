Rails.application.routes.draw do
  get("/", { :controller => "users", :action => "index" })

  get("/users", { :controller => "users", :action => "index" })
  get("/users/:path_username", { :controller => "users", :action => "show"})


  get("/photos", { :controller => "photos", :action => "index" })
  get("/photos/:path_id", { :controller => "photos", :action => "show" })
  post("/insert_photo", { :controller => "photos", :action => "insert" })
  get("/delete_photo/:toast_id", { :controller => "photos", :action => "delete" })

end
