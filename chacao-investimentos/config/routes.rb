Rails.application.routes.draw do
  resources :application_fis
  resources :fixed_incomes
  resources :investment_funds
  resources :direct_treasures
  root 'application#landing'

  resources :users

  get '/login', to: 'user_sessions#new', as: :login
  post '/login', to: 'user_sessions#create'
  get '/logout', to: 'user_sessions#destroy', as: :logout
  
  get '/products', to: 'products#index', as: :products

  get '/direct_treasures/:id', to: 'direct_treasures#show', as: :show_direct_treasure
  get '/fixed_incomes/:id', to: 'fixed_incomes#show', as: :show_fixed_income
  get '/investment_funds/:id', to: 'investment_funds#show', as: :show_investment_fund
  post '/application_fis/new', to: 'application_fis#create'
  post '/application_dts/new', to: 'application_dts#create'
  post '/application_ifs/new', to: 'application_ifs#create'
end
