Rails.application.routes.draw do
  namespace :account do
    resources :movies
    resources :reviews
  end

  devise_for :users
  resources :movies do
    member do
      post :love
      post :quit
    end
    resources :reviews
  end
  root 'movies#index'

  resources :reviews
end
