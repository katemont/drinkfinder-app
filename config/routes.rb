DrinkfinderApp::Application.routes.draw do
  devise_for :users

  get 'tags/:tag', to: 'recommendations#index', as: :tag
  get '/signup/:invitation_token', to: 'devise/registrations#new'

  root to: "home#index"
  resources :users
  resources :recommendations
  resources :bars
  resources :friendships
  resources :invitations


    # map.resources :invitations
    # map.signup '/signup/:invitation_token', :controller => 'users', :action => 'new'

  # map.signup '/signup/:invitation_token', :controller => 'users', :action => 'new'

end
