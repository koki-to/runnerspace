Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  post '/home/guest_sign_in', to: "home#new_guest"
  resources :users do
    resource :relationships, only: [:create, :destroy]
    get :follows, on: :member
    get :followers, on: :member
  end
  resources :tweets do
    resource :likes, only: [:create, :destroy]
    resources :comments, only: :create
    collection do
      get 'search'
    end
  end
  resources :videos, only: :index
  resources :ranks, only: :index

end