Rails.application.routes.draw do
  resources :order_treats
  resources :orders
  resources :treats
  resources :users

  post "/login", to: "users#login"
  post "/users", to: "users#create"
  patch "/user/:id", to: "users#update"
  # post "/orders", to: "orders#create"
  post "/checkout", to: "application#checkout"
  post "/payment", to: "payments#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
