Rails.application.routes.draw do
  devise_for :users

  
  scope :module => 'diaperbanks', :as => "diaperbanks", :path => "" do
    constraints :subdomain => /^diaperbanks|stagingdiaperbanks$/ do
      get '/' => 'dashboard#show', :as => :root
    end
  end

  root 'public#about'
  get '/about' => 'public#about'
  resources :partners, only: %i[new create]
end
