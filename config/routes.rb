Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :hats do
    resources :bookings, only: :new
  end
  resources :rats
  resources :bookings, except: :new
end
