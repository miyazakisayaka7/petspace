Rails.application.routes.draw do
  devise_for :users
  root to: "pets#index"
  resources :pets
  resources :diaries, only: [:index, :new, :create, :edit, :update, :destroy]
  resources :grows, only: [:index, :new, :create]
end
