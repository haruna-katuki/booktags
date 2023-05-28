Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :books, only: [:new, :create]
  resources :posts, only: :index
end
