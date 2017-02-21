Rails.application.routes.draw do

	
	get "/home" => "pages#home"
	get "/location" => "pages#location"
	get	"/shop" => "pages#shop"

	get "/shop/men/:id" => "shoes#index"
	get	"/shop/men" => "pages#men"
	get "/shop/women/:id" => "shoes#index"
	get "/shop/women" => "pages#women"

	get	"/cart" => "pages#cart"


end
