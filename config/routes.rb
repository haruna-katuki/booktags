Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :books
  resources :posts, only: [:index, :new, :create, :show]
end
