Rails.application.routes.draw do
  devise_for :users

  root 'pages#home'

  resources :orders
  resources :items, only: [:create]
  resources :partners, only: [:create]
end
