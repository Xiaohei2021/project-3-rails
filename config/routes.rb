Rails.application.routes.draw do
  
  get '/auth/google_oauth2/callback', to: 'sessions#omniauth_google' 

  root 'sessions#home'

  get '/login', to: "sessions#new"
  post '/login', to: "sessions#create"
  delete '/logout', to: "sessions#destroy"

  get '/signup', to: "users#new"
	post '/signup', to: "users#create"

  # get '/auth/facebook/callback', to: 'sessions#omniauth_facebook' 
  # get '/auth/github/callback', to: 'sessions#omniauth_github'  

  resources :users 

  resources :reviews 

  resources :games do
    resources :reviews, only: [:index, :new, :create, :show]
  end


  resources :publishers do
    resources :games, only: [:index, :new, :create, :show]
  end  
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
