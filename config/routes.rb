Rails.application.routes.draw do

  root 'sessions#home'

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"

  get '/signup', to: "users#new"
	post '/signup', to: "users#create"

  # get '/auth/facebook/callback' => 'sessions#create' 
  # get '/auth/github/callback', to: 'sessions#create'  

  resources :users

  resources :reviews

  resources :games

  resources :publishers
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
