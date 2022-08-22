Rails.application.routes.draw do
  root 'sessions#new'
  resources :blogs
  resources :users
  resources :sessions
end
