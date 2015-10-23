Rails.application.routes.draw do
  root "static_pages#home"

  get "flights" => "flights#new"

  get "signup" => "users#new"

  get "login" => "sessions#new"

  post "login" => "sessions#create"

  get "logout" => "sessions#delete"

  resources :users
end
