Rails.application.routes.draw do
  namespace :account do
    resources :movies
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
end
