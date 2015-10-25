Rails.application.routes.draw do
  root  "flights#index"

  get "signup" => "users#new"

  get "login" => "sessions#new"

  post "login" => "sessions#create"

  get "logout" => "sessions#destroy"

  get "home" => "static_pages#home"

  post "/auth/:provider/callback" => "sessions#create"

  resources :users
  resources :flights
  resources :bookings
end
