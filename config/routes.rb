Rails.application.routes.draw do

  resources :items
  resources :favorites
  resources :guides
  resources :reviews
  resources :recipes
  resources :categories
  resources :users
  resources :sessions

  #get 'sessions/new'

  #get 'signup', to: 'users#new', as: 'signup'
  #get 'login', to: 'sessions#new', as: 'login'
  #get 'logout', to: 'sessions#destroy', as: 'logout'
  post 'authenticate', to: 'authentication#authenticate'

  get 'myrecipes', to: 'recipes#myrecipes'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
