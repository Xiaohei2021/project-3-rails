Rails.application.routes.draw do

  root 'sessions#home'

  get '/signup', to: "users#new"
	post '/signup', to: "users#create"

  get '/login', to: "session#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"
 
  resources :publishers
  resources :users
  resources :reviews
  resources :games
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
