Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :books
  resources :posts
  resources :profiles, only: [:index, :new, :create, :edit, :update, :destroy]
end
