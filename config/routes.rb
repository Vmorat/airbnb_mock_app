Rails.application.routes.draw do
  # get 'bookings/new'
  # get 'bookings/create'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Properties routes
  # Defines the root path route ("/")
  # get '/details', to: 'pages#details'
  # get '/flat_details/:id', to: 'pages#show_flat_details', as: 'flat'
  # root "articles#index"
  resources :flats
  resources :users, only: [:new, :create]
  resources :bookings, only: [:new, :create]
  post '/flats/:id/bookings/new', to: 'bookings#new', as: 'reserve_flat'
end
