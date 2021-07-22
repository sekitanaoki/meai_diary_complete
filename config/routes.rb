Rails.application.routes.draw do
  devise_for :users
  root to: 'products#top'
  resources :products, only: [:new, :create, :index, :show, :destroy, :edit, :update] do
    resources :comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
    collection do
      get :about
      get :ranking
      get 'search' => 'products#search'
    end
  end
  resources :users, only: [:show, :edit, :update]
end
