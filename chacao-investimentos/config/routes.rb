Rails.application.routes.draw do
  resources :fixed_incomes
  resources :investment_funds
  resources :direct_treasures
  root 'application#landing', as: :home

  resources :users

  get '/login', to: 'user_sessions#new', as: :login
  post '/login', to: 'user_sessions#create'
  delete '/logout', to: 'user_sessions#destroy', as: :logout
  
  get '/products', to: 'products#index', as: :products

  get '/direct_treasures/:id', to: 'direct_treasures#show', as: :show_direct_treasure
  get '/fixed_incomes/:id', to: 'fixed_incomes#show', as: :show_fixed_income
  get '/investment_funds/:id', to: 'investment_funds#show', as: :show_investment_fund
end
