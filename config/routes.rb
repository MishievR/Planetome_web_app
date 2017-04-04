Rails.application.routes.draw do

  root 'pages#index'
  get 'pages/about', to: 'pages#about'

  resources :listings
end
