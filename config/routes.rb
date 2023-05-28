Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :books, only: [:new, :create, :index]
  resources :posts, only: :index
end
