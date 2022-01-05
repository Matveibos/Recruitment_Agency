Rails.application.routes.draw do
  devise_for :users

  root to: 'main#mp'
  resources :main
  get '/profile', to: 'profiles#prof'
  # get '/mp', to: 'main#mp'
end
