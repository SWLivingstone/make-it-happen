Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  resources :items, only: [:create]
  root 'users#show'
end
