Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  resources :items, only: [:create, :destroy]
  root 'users#show'
end
