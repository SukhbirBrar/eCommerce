# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users
  # devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # get 'products/index'
  # root to: 'category#index'
  scope '/checkout' do
    post 'create', to: 'checkout#create', as: 'checkout_create'
    get 'cancel', to: 'checkout#cancel', as: 'checkout_cancel'
    get 'success', to: 'checkout#success', as: 'checkout_success'
  end
  # root 'home#index'
  root "users#index"
  resources :categories, only: [:index]

  get 'pages/index'
  get '/products/:id', to: 'products#show', as: 'product'

  get '/search', to: 'pages#search', as: 'search_page'

  post '/filter', to: 'home#filter', as:'filter_something'

  resources :products
  resources :pages
  resources :order_items
  resource :carts, only: [:show]
  resources :contacts
  resources :companies

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
