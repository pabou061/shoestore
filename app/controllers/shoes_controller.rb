class ShoesController < ApplicationController

	def index

		@shoes = 
		Shoe.find_by_sql(
			"SELECT s.*
			FROM shoestore.shoes s, shoestore.availableShoes a
			Where s.sid=a.sid and quantity>0
			group by s.sid")

		render("index")

	end

	def show
		@shoes = Shoe.find params[:id]
		render("show")
		
	end

end