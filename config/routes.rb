Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
  # Defines the root path route ("/")
  # root "articles#index"
end
