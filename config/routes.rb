Rails.application.routes.draw do
  resources :favorites
  resources :guides
  resources :reviews
  resources :recipes
  resources :categories
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
