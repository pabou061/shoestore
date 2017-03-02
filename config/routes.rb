Rails.application.routes.draw do

	

	root "pages#home"
	get "/home" => "pages#home"
	get "/location" => "pages#location"
	get	"/cart" => "pages#cart"
	get "/signup" => "pages#signup"
	get "/login" => "pages#login"

	resources :categories, only: [:show, :index] do
		resources :subcategories do
			resources :shoes
		end
	end

	# get "/category/[:category_id]/subcategory/[:subcategory_id]/shoes/[:id]"


end
