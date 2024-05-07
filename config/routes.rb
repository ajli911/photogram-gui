Rails.application.routes.draw do
  get("/", { :controller => "users", :action => "index" })

  get("/users", { :controller => "users", :action => "index" })
  get("/users/:path_username", { :controller => "users", :action => "show"})
  post("/add_user", { :controller => "users", :action => "add" })
  post("/update_user/:modify_id", { :controller => "users", :action => "update"})


  get("/photos", { :controller => "photos", :action => "index" })
  get("/photos/:path_id", { :controller => "photos", :action => "show" })
  post("/insert_photo", { :controller => "photos", :action => "insert" })
  post("/update_photo/:modify_id", { :controller => "photos", :action => "update"})
  get("/delete_photo/:toast_id", { :controller => "photos", :action => "delete" })
  post("/add_comment", { :controller => "photos", :action => "add_comment" })

end
