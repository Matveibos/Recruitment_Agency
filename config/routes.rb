Rails.application.routes.draw do
  resources :techstacks
  resources :vacancies
  resources :main
  resources :users, controller: 'users'
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root to: 'main#mp'
  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'
  get '/profile', to: 'profiles#prof'
  # get '/mp', to: 'main#mp'
end
