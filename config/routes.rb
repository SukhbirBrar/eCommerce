# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'category/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # get 'products/index'
  root to: 'category#index'

  resources :categories, only: [:index]

  get 'pages/index'
  get '/products/:id', to: 'products#show', as: 'product'

  get '/search', to: 'pages#search', as: 'search_page'

  resources :products
  resources :pages
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
