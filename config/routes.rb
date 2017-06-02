Rails.application.routes.draw do

	devise_for :users, :path_prefix => 'welcome', :controllers => { registrations: 'registrations' }

	devise_scope :user do
  		root to: "devise/registrations#new"
	end

	resources :users, only: [:show] do
		resources :lists do
			resources :movies
		end
	end
  

end
