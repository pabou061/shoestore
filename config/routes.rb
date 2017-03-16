Rails.application.routes.draw do

	root "pages#home"
	get "/home" => "pages#home"
	get "/location" => "pages#location"
	get	"/cart" => "pages#cart"
	
	resources :logins, only: [:new, :create, :destroy]
	resources :signups, only: [:new,:create]

	resources :categories, only: [:show, :index] do
		resources :subcategories do
			resources :shoes
		end
	end
end
