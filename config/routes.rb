Rails.application.routes.draw do

  root 'sessions#home'

  resources :publishers
  resources :users
  resources :reviews
  resources :games
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
