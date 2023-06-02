Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :books
  resources :posts do
    resource :likes, only: [:create, :destroy]
  end
  resources :profiles, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :likes, only: :index
end
