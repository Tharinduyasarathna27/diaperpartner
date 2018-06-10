Rails.application.routes.draw do
  devise_for :users

  constraints :subdomain => /^diaperbanks|stagingdiaperbanks$/ do
    scope :module => 'diaperbanks', :as => "diaperbanks", :path => "" do
      get '/' => 'dashboard#show', :as => :root
    end
  end

  root 'public#home'
  get '/about' => 'public#about'
  resources :partners, only: %i[new create]
end
