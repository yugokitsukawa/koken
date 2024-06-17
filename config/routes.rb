Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'tops#index'
  resources :tops

  resources :frees

  resources :collabs

  resources :insides

  resources :marketings

  resources :offs


end
