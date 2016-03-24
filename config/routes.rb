Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'
  resources :users, only: [:new, :create, :show] do
    resources :items, only: [:create, :destroy]
  end
  resources :sessions, only: [:new, :create, :destroy]
end
