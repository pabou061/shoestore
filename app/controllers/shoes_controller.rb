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
		@shoe = Shoe.find params[:id]

		@available = 
		Available.find_by_sql ["SELECT c.color, s.size,a.quantity
			FROM shoestore.availableshoes a,shoestore.sizes s, shoestore.colors c
			Where a.sizeid = s.sizeid and a.colorid=c.colorid 
			and a.sid= ? ", @shoe.sid]


		@shoe = Shoe.find params[:id]
		render("show")
		
	end

end