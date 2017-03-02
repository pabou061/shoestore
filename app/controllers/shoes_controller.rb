class ShoesController < ApplicationController







	def index
		@category= params[:category_id]
		@subcategory= params[:subcategory_id]
		@shoes = 
		Shoe.find_by_sql ["SELECT s.*
			FROM shoestore.shoes s, shoestore.availablesizes a
			Where s.sid=a.sid and quantity>0 and s.catid=?
			group by s.sid", @subcategory]

		render("index")

	end

	def show
		@shoe = Shoe.find params[:id]

		@available = 
		Availablesize.find_by_sql ["SELECT s.size,a.quantity
			FROM shoestore.availablesizes a,shoestore.sizes s
			Where a.sizeid = s.sizeid and a.sid= ? ", @shoe.sid]

		@availablecolor = 
		Availablecolor.find_by_sql ["SELECT c.color
			FROM shoestore.availablecolors a, shoestore.colors c
			Where a.colorid = c.colorid and a.sid= ? ", @shoe.sid]


		@shoe = Shoe.find params[:id]
		render("show")
		
	end

end