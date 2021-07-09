Rails.application.routes.draw do

 
  devise_for :users
  root to: 'products#top'
  resources :products, only: [:new, :create, :index, :show, :destroy]
end