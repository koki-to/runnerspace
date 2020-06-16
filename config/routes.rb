Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  resources :users
  resources :tweets do
    resources :comments, only: :create
  end
end