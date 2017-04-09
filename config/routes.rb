Rails.application.routes.draw do

  root 'pages#index'
  get 'pages/about', to: 'pages#about'

  resources :listings


  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end
