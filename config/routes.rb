Rails.application.routes.draw do
  
  resources :bookings
  get 'bookings/index'
  get 'bookings/new'
  get 'bookings/create'
  get 'bookings/edit'
  get 'bookings/update'
  get 'bookings/destroy'
  root "flights#index"
  get "/flights", to: "flights#index"

  
end
