
Rails.application.routes.draw do
  # get 'bookings/new'
  # get 'bookings/create'
  devise_for :users
  #devise_for :users, controllers: { registrations: 'registrations' }
  root to: "pages#home"
  get '/accountinformation', to: 'pages#accountinformation'
  get '/explore', to: 'pages#explore'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Properties routes
  # Defines the root path route ("/")
  # get '/details', to: 'pages#details'
  # get '/flat_details/:id', to: 'pages#show_flat_details', as: 'flat'
  # root "articles#index"
  resources :flats do
    resources :bookings, only: [:new, :create]
    member do
      get 'bookings/show', to: 'bookings#show', as: 'show_all_bookings'
  end
end


  resources :bookings, only: [:index] do
    collection do
      get 'pending_requests'
    end
    post 'approve', on: :member # Route for approving a booking
    post 'reject', on: :member  # Route for rejecting a booking
  end

  resources :users, only: [:new, :create]
# <<<<<<< HEAD

# =======
#   resources :bookings, only: [:new, :create]
  #post '/flats/:id/bookings/new', to: 'bookings#new', as: 'reserve_flat'
# >>>>>>> 2dd6784b26c456b189724fd2e735782b1ce2f9f3
end
