Rails.application.routes.draw do
  get 'thumbnail_img/index'
  devise_for :users
  root to: 'pages#home'
  resources :contacts, only: [:new, :create]
  get 'galerie', to: 'thumbnail_img#index', as: :galerie
  get "a-propos", to: 'pages#about', as: :about
end
