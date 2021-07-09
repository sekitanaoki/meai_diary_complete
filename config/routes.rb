Rails.application.routes.draw do


  devise_for :users
  root to: 'products#top'
  resources :products, only: [:new, :create, :index, :show, :destroy] do
    collection do
      get :about
    end
  end
end