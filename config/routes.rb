Rails.application.routes.draw do
  root  "flights#index"

  get "signup" => "users#new"

  get "login" => "sessions#new"

  post "login" => "sessions#create"

  get "logout" => "sessions#delete"

  get "home" => "static_pages#home"

  resources :users
  resources :flights
  resources :bookings
end
