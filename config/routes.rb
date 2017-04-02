Rails.application.routes.draw do

  root 'categories#index'
  get 'categories/about', to: 'categories#about'
end
