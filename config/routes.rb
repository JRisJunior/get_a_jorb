Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  # get "/jobs" => "jobs#index"
  # get "/jobs/new" => "jobs#new"
  # post "/jobs" => "jobs#create"
  # get "/jobs/:id" => "jobs#show"

  resources :jobs

  get "/signup" => "users#new"
  post "/users" => "users#create"

  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  get "/logout" => "sessions#destroy"

  get "/tags" => "tags#index"
  get "/tags/new" => "tags#new", as: "new_tag"
  post "/tags" => "tags#create"
end