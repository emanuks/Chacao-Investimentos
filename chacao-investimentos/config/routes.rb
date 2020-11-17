Rails.application.routes.draw do
  resources :direct_treasures
  root 'application#landing'

  resources :users

  get '/login', to: 'user_sessions#new', as: :login
  post '/login', to: 'user_sessions#create'
  delete '/logout', to: 'user_sessions#destroy', as: :logout
end
