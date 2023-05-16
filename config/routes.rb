Rails.application.routes.draw do
  devise_for :users
  root to: "rooms#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users, only: [:show]
  resources :rooms, only: [:show, :index, :new, :create] do
    resources :bookings, only: [:create, :new, :show, :edit, :update]
  end
  # Defines the root path route ("/")
  resources :bookings, only: [:destroy, :index]

  namespace :hospital do
    resources :bookings, only: [:index]
    # equivalent to => get '/<namespace>/bookings', to: '<namespace>/bookings#index'
  end

  # root "articles#index"
end
