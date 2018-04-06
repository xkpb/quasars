Rails.application.routes.draw do
  root to: "articles#index"
  resources :articles
  resources :comments, only: [:create, :edit, :update, :destroy]
  devise_for :users
  get "/healthcheck" => "healthcheck#index"
end
