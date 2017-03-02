class SubcategoriesController < ApplicationController


	
	def index

		@category= params[:category_id]
		if @category== "men" then
		@sub = Subcategory.where ismen: true 
	else 
		@sub = Subcategory.where ismen: false 
	end 
		render "index"
	end

end