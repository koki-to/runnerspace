Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :users
  resources :tweets do
    resource :likes, only: [:create, :destroy]
    resources :comments, only: :create
  end
end