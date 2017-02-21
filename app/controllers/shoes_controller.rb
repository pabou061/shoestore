class ShoesController < ApplicationController

	def index

		@shoes = 
		Shoe.find_by_sql(
			"SELECT s.*
FROM shoestore.shoes s, shoestore.availableShoes a
Where s.sid=a.sid
group by s.sid")

		render("index")

	end

end