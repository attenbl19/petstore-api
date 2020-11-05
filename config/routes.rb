Rails.application.routes.draw do
  
  get "/users", to: "users#index"
  get "/users", to: "users#show"
  post "/users", to: "users#create"
  delete "/users", to: "user#destroy"
  post "/users/login", to: "users#login"
  get "/users/keep_logged_in", to: "users#keep_logged_in"
  


  resources :reviews
  resources :businesses
  resources :categories
end
