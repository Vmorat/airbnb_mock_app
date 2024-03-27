Rails.application.routes.draw do
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
end
