Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resource :dashboard, only: [:show ]

  resources :products, only: [ :new, :create, :show ] do # Route para product -> new create listing
    resources :listings, only: [ :new, :create ]
  end

  resources :listings, only: [ :index, :show ]

  get '/stylesheet', to: 'pages#stylesheet'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
