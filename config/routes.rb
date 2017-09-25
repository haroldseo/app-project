Rails.application.routes.draw do
  root 'cafes#index'
  resources :users
  resources :cafes
end
