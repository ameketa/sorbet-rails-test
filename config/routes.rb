Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #

  post "/login", to: "sessions#create"
  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"

  root to: "welcome#index"
end
