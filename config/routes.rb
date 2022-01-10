Rails.application.routes.draw do
  resources :techstacks
  resources :vacancies
  resources :main
  resources :proverka, controller: 'proverka'
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root to: 'main#mp'
  get '/profile', to: 'profiles#prof'
  # get '/mp', to: 'main#mp'
end
