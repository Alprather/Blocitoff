Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :create, :destroy]
end
