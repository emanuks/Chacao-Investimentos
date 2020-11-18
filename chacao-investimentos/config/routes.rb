Rails.application.routes.draw do
  resources :fixed_incomes
  resources :investment_funds
  resources :direct_treasures
  root 'application#landing', as: :home

  resources :users

  get '/login', to: 'user_sessions#new', as: :login
  post '/login', to: 'user_sessions#create'
  delete '/logout', to: 'user_sessions#destroy', as: :logout
end
