Rails.application.routes.draw do
  devise_for :partners
  root 'pages#home'

  resources :partners, only: [:create]
end
