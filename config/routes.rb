Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root to: 'main#mp'
  resources :main
  # get '/mp', to: 'main#mp'
end
