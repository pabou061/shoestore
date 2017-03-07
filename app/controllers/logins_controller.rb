class LoginsController < ApplicationController


def index
	@login = Login.new
	render ("index")
	
end

def signup 
	@login = Login.new
	render ("signup")
end

end