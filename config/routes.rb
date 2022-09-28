Rails.application.routes.draw do
  root 'sessions#new'
  resources :blogs do
    resources :comments
  end
  resources :favorites, only: %i[ create destroy]
  resources :users
  resources :sessions
end
