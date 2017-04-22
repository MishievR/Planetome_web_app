Rails.application.routes.draw do

  devise_for :users
  root 'pages#index'
  get 'pages/about', to: 'pages#about'

  resources :listings

get 'users/' => 'users#show'
  # get 'signup', to: 'users#new'
  resources :users, except: [:new]
  #
  # get 'login', to: 'sessions#new'
  # post 'login', to: 'sessions#create'
  # delete 'logout', to: 'sessions#destroy'

  resources :categories

end
