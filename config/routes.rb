Rails.application.routes.draw do
  get 'thumbnail_img/index'
  devise_for :users
  root to: 'pages#home'
  resources :contacts, only: [:new, :create]
  get "about", to: 'pages#about', as: :about
end
