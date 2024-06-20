Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # authentication - who is using the app
  # authorization - who is allowed to do what

  # Defines the root path route ("/")
  # root "posts#index"
  get "/products" => "products#index" # everyone
  post "/products" => "products#create" # only admins
  get "/products/:id" => "products#show" # everyone
  patch "/products/:id" => "products#update" #only admins
  delete "/products/:id" => "products#destroy" #only admins

  post "/users" => "users#create" # everyone
  post "/sessions" => "sessions#create" # everyone

  get "/orders" => "orders#index" # logged in
  post "/orders" => "orders#create" # logged in
  get "/orders/:id" => "orders#show" #logged in

  get "/carted_products" => "carted_products#index"
  post "/carted_products" => "carted_products#create"
  delete "/carted_products/:id" => "carted_products#destroy"
end

# REST


# CRUD through web requests
# conventions for urls/actions