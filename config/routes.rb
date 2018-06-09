Rails.application.routes.draw do
  devise_for :users

  root 'public#home'
  get '/about' => 'public#about'

  resources :partners, only: %i[new create]
end
