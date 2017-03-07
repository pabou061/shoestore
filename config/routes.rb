Rails.application.routes.draw do

	root "pages#home"
	get "/home" => "pages#home"
	get "/location" => "pages#location"
	get	"/cart" => "pages#cart"
	get "/signup" => "pages#signup"
	
	resources :logins, only: [:index] 

	resources :categories, only: [:show, :index] do
		resources :subcategories do
			resources :shoes
		end
	end
end
