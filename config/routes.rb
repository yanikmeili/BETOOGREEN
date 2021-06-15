Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :listings, only: [ :index, :show]
  resources :products, only: [ :new, :create ]
  get '/stylesheet', to: 'pages#stylesheet'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
