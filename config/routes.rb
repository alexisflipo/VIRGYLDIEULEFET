Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'
  resources :contacts, only: [:new, :create]
  get 'galerie', to: 'thumbnail_img#index', as: :galerie
  get "a-propos", to: 'pages#about', as: :about
end
