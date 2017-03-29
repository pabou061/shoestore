Rails.application.routes.draw do

	root "pages#home"
	get "/"=> "pages#home"
	get "/home" => "pages#home"
	get "/location" => "pages#location"
	
	resources :logins, only: [:new, :create, :destroy]
	resources :signups, only: [:new,:create]
	resources :carts, only: [:index,:create,:destroy]

	get "/carts/checkout" => "carts#checkout"

	resources :categories, only: [:show, :index] do
		resources :subcategories do
			resources :shoes
		end
	end
end
