class LoginsController < ApplicationController


def index
	@login = Login.new
	render ("index")
	
end

end