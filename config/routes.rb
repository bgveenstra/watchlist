Rails.application.routes.draw do

  resources :lists
  # root "application#index"

  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :movies
  resources :users, only: [:show]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
