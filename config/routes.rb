Rails.application.routes.draw do
  post "/users/login", to: "users#login"
  post "/users", to: "users#create"
  get "/users/keep_logged_in", to: "users#keep_logged_in"
  delete "/users", to: "user#destroy"

  post '/reviews', to: 'reviewss#create'
  
end
