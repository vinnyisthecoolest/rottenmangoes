Rails.application.routes.draw do
  resources :movies do
    resources :reviews, only: [:new, :create]
  end
  namespace :admin do
    resources :users, only: [:new, :create]
  end
  resources :sessions, only: [:new, :create, :destroy]
  root to: 'movies#index'
end
