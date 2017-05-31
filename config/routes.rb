Rails.application.routes.draw do
  get 'users/show'

  resources :movies
  devise_for :users
  root "index#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
