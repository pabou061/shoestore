class PagesController < ApplicationController

	def home
		render("home")

	end

	def location
		render("location")

	end

	def shop 
		render ("shop")
	end


end