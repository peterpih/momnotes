Rails.application.routes.draw do
  resources :snfs
  resources :meal_types
  resources :excercises
  resources :exercises
  resources :foods
  resources :meals
  resources :toilets
  resources :entries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#welcome'

  #get 'snf', to: 'pages#snf', as: 'snf'
end
