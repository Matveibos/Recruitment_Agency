Rails.application.routes.draw do
  devise_for :users

  root to: 'main#mp'
  resources :main


  #in progress
  # get '/vac', to 'vacancies#vac'
  
end
