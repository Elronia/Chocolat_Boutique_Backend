Rails.application.routes.draw do
  resources :order_treats
  resources :orders
  resources :treats
  resources :users

  post '/login', to: 'users#login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
