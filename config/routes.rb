Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'
  match "/404", to: "errors#not_found", via: :all
  match "/500", to: "errors#internal_server_error", via: :all
  resources :contacts, only: [:new, :create]
  get 'galerie', to: 'thumbnail_img#index', as: :galerie
  get "a-propos", to: 'pages#about', as: :about
end
