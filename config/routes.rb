Rails.application.routes.draw do
  # get 'users/show'

  root "application#index"

  resources :movies
  resources :users, only: [:show]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
