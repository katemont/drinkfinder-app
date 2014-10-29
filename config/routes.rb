DrinkfinderApp::Application.routes.draw do
  devise_for :users

  get 'tags/:tag', to: 'recommendations#index', as: :tag

  root to: "home#index"
  resources :users
  resources :recommendations
  resources :bars
  resources :friendships


end
