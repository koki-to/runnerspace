Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :users do
    resource :relationships, only: [:create, :destroy]
    get :follows, on: :member
    get :followers, on: :member
  end
  resources :tweets do
    resource :likes, only: [:create, :destroy]
    resources :comments, only: :create
  end
  resources :ranks, only: :index
end