Rails.application.routes.draw do
  devise_for :rats
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'dashboard', to: 'dashboard#dashboard'
  resources :hats do
    resources :bookings, only: :new
  end
  resources :rats
  resources :bookings, except: :new
end
