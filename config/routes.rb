Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  get '/stylesheet', to: 'pages#stylesheet'

  resources :listings, only: [ :index, :show] do
    resources :purchases, only: [ :new, :create ]
  end

  resources :products, only: [ :new, :create, :show ] do
    resources :listings, only: [ :new, :create ]
  end

  resources :purchases, only: [ :show ]
end
