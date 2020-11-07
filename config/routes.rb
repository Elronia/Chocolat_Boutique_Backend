Rails.application.routes.draw do
  resources :order_treats
  resources :orders
  resources :treats
  resources :users

  post '/login', to: 'users#login'
  patch '/user/:id', to: 'users#update'
  post '/order_treats', to: 'order_treats#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
