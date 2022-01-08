Rails.application.routes.draw do
  resources :vacancies
  devise_for :users, controllers: { registrations: 'users/registrations' }

  root to: 'main#mp'
  resources :main
  get '/profile', to: 'profiles#prof'
  # get '/mp', to: 'main#mp'
end
