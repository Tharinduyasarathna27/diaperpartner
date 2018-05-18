Rails.application.routes.draw do
  devise_for :partners
  root 'pages#home'

  resources :items, only: [:create]
  resources :partners, only: [:create]
end
