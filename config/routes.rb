Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/profile', to: 'pages#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :paths do
    resources :hexagons, only: [:show, :new, :create, :edit, :update]
  end
  resources :hexagons, only: [:destroy]
end
