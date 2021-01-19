Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :contacts, only: [:new, :create]
  get "about", to: 'pages#about', as: :about
end
