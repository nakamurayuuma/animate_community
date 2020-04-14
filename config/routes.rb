Rails.application.routes.draw do
  root 'users#index'
  get 'news', to: 'static_pages#news'
  get 'search', to: 'static_pages#search'
  get  'signup',  to: 'users#new'
  post  'signup',  to: 'users#create'
  get    'login',   to: 'sessions#new'
  post   'login',   to: 'sessions#create'
  delete 'logout',  to: 'sessions#destroy'
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :users
  resources :tweets,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]
  resources :registers
end