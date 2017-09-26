Rails.application.routes.draw do
  root 'cafes#index'
  resources :users
  resources :cafes
  resources :sessions, only: [:new, :create]
  delete '/logout' => 'sessions#destroy', as: :logout
end
