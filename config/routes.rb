Rails.application.routes.draw do

  resources :users, only: [:show] do
    resources :lists do
      resources :movies
    end
  end
  # root "application#index"

  devise_for :users, :path_prefix => 'welcome', :controllers => { registrations: 'registrations' }

end
