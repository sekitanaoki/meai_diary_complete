Rails.application.routes.draw do


  devise_for :users
  root to: 'products#top'
  resources :products, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
      collection do
      get :about
      get :ranking

      get 'search' => 'products#search'
    end
  end
end