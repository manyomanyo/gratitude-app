Rails.application.routes.draw do
  root to: 'posts#index'
  devise_for :admins, controllers:{
    sessions:       'admins/sessions',
    password:       'admins/password',
    registrations:  'admins/registrations'
  }
  resources :admins, only: [:index]

  namespace :admins do
    resources :users, only: [:destroy]
    resources :posts, only: [:index]
  end
  devise_for :users, controllers:{
    sessions:         'users/sessions',
    passwords:        'users/passwords',
    registrations:    'users/registrations'
  }
    resources :posts,only: [:index]
    resources :users, only: [:index]
end
