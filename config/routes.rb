Rails.application.routes.draw do
  devise_for :rats
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'dashboard', to: 'dashboard#dashboard'
  resources :hats do
    resources :bookings, only: [:new, :create]
  end
  resources :rats
  get "rats-map", to: "rats#map"
  resources :bookings, only: [:destroy, :edit, :update]
end
