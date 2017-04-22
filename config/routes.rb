Rails.application.routes.draw do

  resources :categories
  resources :listings

  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'pages#index'
  get 'pages/about', to: 'pages#about'



  get 'users/:id' => 'users#show', as: :user
  # get 'signup', to: 'users#new'
  # resources :users, except: [:new]
  #
  # get 'login', to: 'sessions#new'
  # post 'login', to: 'sessions#create'
  # delete 'logout', to: 'sessions#destroy'



end
