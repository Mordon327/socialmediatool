Rails.application.routes.draw do
  devise_for :users
  get 'pages/home'
  get 'facebook', to: 'pages#facebook'
  get 'twitter', to: 'pages#twitter'

  resources :blogs
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: 'blogs'
  root to: 'pages#home'
end
