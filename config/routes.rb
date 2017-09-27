Rails.application.routes.draw do
  root 'cafes#index'
  resources :users
  patch '/cafes/:id/toggle-publish' => 'cafes#toggle_publish', as: :toggle_publish_cafe
  resources :cafes
  resources :sessions, only: [:new, :create]
  delete '/logout' => 'sessions#destroy', as: :logout
end
